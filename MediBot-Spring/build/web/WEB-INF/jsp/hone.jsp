<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
        <title>MediBot</title>
    </head>
    <body>
        
    <div class="container">
    <%@ include file="/WEB-INF/vistas/header.jsp" %>
        
            <div class="row col-md-12">
            <h1>Listado de Enfermedades</h1>
                <p>
                    <a href="<c:url value="add.htm"/>" class="btn btn-success">
                        <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>Agregar
                    </a>
                        
                <h4>Ordenar:</h4> 
                        Id:<a href="<c:url value="hone.htm?cond=3"/>">
                                        <span class="glyphicon glyphicon-sort-by-order" aria-hidden="true"></span> 
                                        
                                    </a>
                            <a href="<c:url value="hone.htm?cond=4"/>">
                                        <span class="glyphicon glyphicon-sort-by-order-alt" aria-hidden="true"></span> 
                                        
                                    </a>
                        Nombre:<a href="<c:url value="hone.htm?cond=2"/>">
                                        <span class="glyphicon glyphicon-sort-by-alphabet" aria-hidden="true"></span> 
                                        
                                    </a>
                                        
                </p>
                
                <table class="table table-bordered table-striped table-hover">
                    <thead>
                        <tr>
                            <th>ID</th> 
                            <th>Nombre</th> 
                            <th>Descripcion</th> 
                            <th>Acciones</th> 
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${datos}" var="dato"> 
                            <tr>
                                <td>
                                    <c:out value="${dato.id}"/> 
                                </td>
                                <td>
                                    <c:out value="${dato.nombre}"/> 
                                </td>
                                <td>
                                    <c:out value="${dato.descripcion}"/> 
                                </td>
                                <td>
                                    <a href="<c:url value="edit_enfer.htm?id=${dato.id}"/>">
                                        <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> 
                                        
                                    </a>
                                    <a href="<c:url value="delete_enfer.htm?id=${dato.id}"/>" >
                                        <span class="glyphicon glyphicon-trash" aria-hidden="true"></span> 
                                        
                                    </a>
                                </td>
                                </
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            
        </div>
    </body>
</html>
