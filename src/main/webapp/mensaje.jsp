<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mensaje</title>
</head>
<body>
	<--! SI LA GRABACION ES CORRECTA MUESTRA ESTE MENSAJE -->
	<p>La grabación se ha realizado correctamente. Guarde el siguiente
		número de registro:
	<p>Numero de registro: ${param.numeroRegistro}</p>
	<p>Fecha de registro: ${param.fechaRegistro}</p>
	</p>

	<--! SI LA GRABACION NO ES CORRECTA MUESTRA ESTE MENSAJE -->
	<p>No se ha registrado el trámite. Error al realizar la grabación</p>


	<form action="" method="post">
		<input type="submit" name="nRegistro" value="Nuevo Registro">
		<input type="submit" name="cRegistro" value="Consultar Registro">
	</form>
</body>
</html>