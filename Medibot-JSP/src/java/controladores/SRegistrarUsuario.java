/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controladores;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelos.UsuarioBean;

/**
 *
 * @author Junior
 */
public class SRegistrarUsuario extends HttpServlet {

    private Connection conn;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String usern=request.getParameter("txtUser");
        String email=request.getParameter("txtEmail");
        String pass=request.getParameter("txtPass");
        String sql;
        UsuarioBean busuario;
        Statement sen;
        ResultSet res;
        try {
            this.init_mysql();
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(SVerificarUsuario.class.getName()).log(Level.SEVERE, null, ex);
        }
 
        try {
            sen=conn.createStatement();
            res=sen.executeQuery("select codigo,username,email from usuario where username = '"+
                    usern+"' or email = '"+email+"'");
            
            if(res.next()){
                RequestDispatcher rd = request.getRequestDispatcher("UsuarioDesconocido.jsp");
                rd.forward(request, response);
            }else{
            
            /*****/
            sql="insert into usuario values(default,'"
               +usern+"','"+email+"','"+pass+"')";
            sen=conn.createStatement();
            sen.executeUpdate(sql);
            busuario=new UsuarioBean();
            busuario.setUsuario(usern);
            busuario.setEmail(email);
            request.setAttribute("dusuario", busuario);
            RequestDispatcher rd = request.getRequestDispatcher("Inicio.jsp");
            rd.forward(request, response);}
        } catch (SQLException ex) {
            Logger.getLogger(SRegistrarUsuario.class.getName()).log(Level.SEVERE, null, ex);
        }
        
                
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    private void init_mysql() throws ClassNotFoundException{
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conn=DriverManager.getConnection("jdbc:mysql://localhost/medibot","root","");
        }catch(Exception e){
            
        }
    }
}
