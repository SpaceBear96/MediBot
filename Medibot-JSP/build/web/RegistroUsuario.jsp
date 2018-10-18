<%-- 
    Document   : RegistroUsuario
    Created on : 17/10/2018, 09:56:20 PM
    Author     : Junior
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de Usuarios</title>
    </head>
    <body>
        <h1>Ingreso de Datos</h1>
        
        <form action="SRegistrarUsuario">
            <hr/>
            <br/>
            Username : <input type="text" name="txtUser" placeholder="UserName"/><br/>
            Email: <input type="text" name="txtEmail" placeholder="Email"/><br/>
            Contraseña: <input type="text" name="txtPass" placeholder="Contraseña"/><br/>
            <br/>
            <hr/>
            <input type="submit" value="registrar"/>
        </form>
    </body>
</html>
