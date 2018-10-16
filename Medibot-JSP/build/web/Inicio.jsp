<%@page import="modelos.UsuarioBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean type="UsuarioBean" id="dusuario" scope="request"/>
        
        <h1>A ingresado con el Usuario</h1>
        <br/>
        Codigo: <%=dusuario.getCodigo()%>
        <br/>
        Usuario: <%=dusuario.getUsuario()%>
        <br/>
        Email: <%=dusuario.getEmail()%>
        <br/>
    </body>
</html>
