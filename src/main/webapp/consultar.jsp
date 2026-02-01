<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="modelo.Registro" %>
<!DOCTYPE html>
<html>
<head><title>Consultar</title></head>
<body>
    <% Registro reg = (Registro) request.getAttribute("registroEncontrado"); %>
    <h3>SEDE ELECTRÓNICA GF</h3>
    <table border="0">
        <tr><td>DNI solicitante:</td><td><input type="text" value="<%= reg.getDni() %>" disabled></td></tr>
        <tr><td>NOMBRE solicitante:</td><td><input type="text" value="<%= reg.getNombre() %>" disabled></td></tr>
        <tr><td>APELLIDOS solicitante:</td><td><input type="text" value="<%= reg.getApellidos() %>" disabled></td></tr>
        <tr><td>TRÁMITE:</td><td><input type="text" value="<%= reg.getTramite() %>" disabled></td></tr>
        <tr><td>ENTIDAD:</td><td><input type="text" value="<%= reg.getEntidad() %>" disabled></td></tr>
    </table>
    <br>
    <a href="buscar.jsp"><button>Nueva Busqueda</button></a>
    <a href="registro.jsp"><button>Nuevo Registro</button></a>
</body>
</html>