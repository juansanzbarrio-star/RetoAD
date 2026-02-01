<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><meta charset="UTF-8"><title>Registro</title></head>
<body>
    <table border="1">
        <form action="ServletRegistro" method="post">
            <input type="hidden" name="accion" value="alta">
            <tr><h3>SEDE ELECTRONICA GF</h3></tr>
            <tr><td><b>DNI solicitante:</b></td><td><input type="text" name="dni" required></td></tr>
            <tr><td><b>NOMBRE solicitante:</b></td><td><input type="text" name="nombre" required></td></tr>
            <tr><td><b>APELLIDOS solicitante:</b></td><td><input type="text" name="apellidos" required></td></tr>
            <tr><td><b>TRAMITE:</b></td><td><input type="text" name="tramite" required></td></tr>
            <tr><td><b>ENTIDAD:</b></td>
                <td><select name="entidad">
                        <option value="MINISTERIO DE EDUCACIÓN Y CIENCIA">MINISTERIO DE EDUCACIÓN Y CIENCIA</option>
                        <option value="INSPECCIÓN EDUCATIVA INFANTIL">INSPECCIÓN EDUCATIVA INFANTIL</option>
                        <option value="INSPECCIÓN EDUCATIVA PRIMARIA">INSPECCIÓN EDUCATIVA PRIMARIA</option>
                        <option value="INSPECCIÓN EDUCATIVA SECUNDARIA">INSPECCIÓN EDUCATIVA SECUNDARIA</option>
                        <option value="INSPECCIÓN EDUCATIVA BACHILLERATO">INSPECCIÓN EDUCATIVA BACHILLERATO</option>
                        <option value="INSPECCIÓN EDUCATIVA FP">INSPECCIÓN EDUCATIVA FP</option>
                        <option value="CONSEJERÍA EDUCACIÓN">CONSEJERÍA EDUCACIÓN</option>
                </select></td>
            </tr>
            <tr><td colspan="2"><input type="submit" value="Grabar"></td></tr>
        </form>
    </table>
</body>
</html> 