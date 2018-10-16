
package controladores;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelos.UsuarioBean;

public class SVerificarUsuario extends HttpServlet {
    
    private Connection conn;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");      
        UsuarioBean busuario=null;
        Statement sen;
        ResultSet res;
        String usuario;
        String pass;
        
        usuario=request.getParameter("txtUser");
        pass=request.getParameter("txtPass");
        try {
            this.init_mysql();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(SVerificarUsuario.class.getName()).log(Level.SEVERE, null, ex);
        }
        try{
            
            sen=conn.createStatement();
            res=sen.executeQuery("select codigo,username,email from usuario where username = '"+
                    usuario+"' and contrasena = '"+pass+"'");
            
            if(res.next()){
                busuario=new UsuarioBean();
                busuario.setCodigo(res.getInt(1));
                busuario.setUsuario(res.getString(2));
                busuario.setEmail(res.getString(3));
                
                request.setAttribute("dusuario", busuario);
                RequestDispatcher rd = request.getRequestDispatcher("Inicio.jsp");
                rd.forward(request, response);
            }else{
                RequestDispatcher rd = request.getRequestDispatcher("UsuarioDesconocido.jsp");
                rd.forward(request, response);
            }
            res.close();
            sen.close();
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(SVerificarUsuario.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    private void init_mysql() throws ClassNotFoundException{
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conn=DriverManager.getConnection("jdbc:mysql://localhost/medibot","root","");
        }catch(Exception e){
            
        }
    }
    
}
