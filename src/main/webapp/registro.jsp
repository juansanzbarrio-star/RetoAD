<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registro</title>
</head>
<body>
	<table border="1">
		<form action="" method="post">
			<tr>
				<h3>SEDE ELECTRONICA GF</h3>
			</tr>
			<tr>
				<td><b>DNI solicitante:</b></td>
				<td><input type="text" name="dni"></td>
			</tr>
			<tr>
				<td><b>NOMBRE solicitante:</b></td>
				<td><input type="text" name="nombre"></td>
			</tr>
			<tr>
				<b>APELLIDOS solicitante:</b>
			</tr>
			<td><b>APELLIDOS solicitante:</b></td>
			<td><input type="text" name="apellidos"></td>
			</tr>
			<tr>
				<td><b>TRAMITE:</b></td>
				<td><input type="text" name="tramite"></td>
			</tr>
			<tr>
				<td><b>ENTIDAD:</b></td>
				<td><select name="entidad">
						<option value="infantil">INFANTIL</option>
						<option value="primaria">PRIMARIA</option>
						<option value="secundaria">SECUNDARIA</option>
						<option value="bachillerato">BACHILLERATO</option>
						<option value="fp">FP</option>
						<option value="edyciencia">EDUCACION Y CIENCIA</option>
				</select></td>
			</tr>
			<tr>
				<input type="submit">
			</tr>
		</form>
	</table>
</body>
</html>