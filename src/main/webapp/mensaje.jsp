<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><title>Mensaje</title></head>
<body>
    <h3>SEDE ELECTRÓNICA GF</h3>
    
    <% if (request.getAttribute("error") == null) { %>
        <p>La grabación se ha realizado correctamente. Guarde el siguiente número de registro:</p>
        <p><b>Número registro: <%= request.getAttribute("numeroRegistro") %></b></p>
        <p>Fecha de registro: <%= request.getAttribute("fechaRegistro") %></p>
    <% } else { %>
        <p style="color:red;">No se ha registrado el trámite. Error al realizar la grabación.</p>
    <% } %>

    <br>
    <a href="registro.jsp"><button>Nuevo Registro</button></a>
    <a href="buscar.jsp"><button>Consulta Registro</button></a>
    
    <br><br>
    <footer>C/Gabilondo, 23-47007 Valladolid... centro@gregoriofer.com</footer>
</body>
</html>