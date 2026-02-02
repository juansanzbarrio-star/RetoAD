<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><title>Buscar</title></head>
<body>
    <table border="1">
        <form action="ServletRegistro" method="post">
            <input type="hidden" name="accion" value="buscar">
            <tr><td><h3>SEDE ELECTRONICA GF</h3></td></tr>
            <tr>
                <td><b>Numero registro: </b></td>
                <td><input type="text" name="numRegistro" required></td>
            </tr>
            <tr><td><input type="submit" value="Buscar"></td></tr>
        </form>
    </table>
</body>
</html>