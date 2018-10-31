<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MediBot - Edicion de Datos</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    </head>
    <body>
         <div class="container">
         <%@ include file="/WEB-INF/vistas/header.jsp" %>
        <h1>Edición de Datos</h1>
            <ol class="breadcrumb">
                <li><a href="<c:url value="/home.htm" />">Listado de Usuarios</a></li>
            </ol>
            <div class="panel panel-primary">
                <div class="panel-heading">Formulario</div>
                <div class="panel-body">
                    <form:form method="post" commandName="usuarios">
                        <h1>Complete el formulario</h1>
                        
                        <form:errors path="*" element="div" cssClass="alert alert-danger"/>
                        <p>
                            <form:label path="nombre">Nombre</form:label>
                            <form:input path="nombre" cssClass="form-control"/>
                        </p>
                        <p>
                            <form:label path="correo">Correo Electronico</form:label>
                            <form:input path="correo" cssClass="form-control"/>
                        </p>
                        <p>
                            <form:label path="telefono">Telefono</form:label>
                            <form:input path="telefono" cssClass="form-control"/>
                        </p>
                        <hr/>
                        <input type="submit" value="Editar" class="btn btn-danger"/>
                    </form:form>
                </div>
            </div>
        </div>
    </body>
</html>
