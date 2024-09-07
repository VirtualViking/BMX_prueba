<%@ page import="com.example.clasificacion_bmx.models.Competidor" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Registro exitoso</title>
</head>
<body>
<h1>Clasificacion olimpica de BMX</h1>

<% Competidor user = (Competidor) request.getAttribute("Usuario");%>

<br>Su nombre es: <%=user.getNombre().toUpperCase()%>
<br>Sus apellidos son: <%=user.getApellidos().toUpperCase()%>
<br>Su fecha de nacimiento es: <%=user.getFechaDeNacimiento()%>
<br>Su Pais es: <%=user.getPais().toUpperCase()%>

<a><b>Bienvenido usuario!!!!</b></a>
<p>Ahora que esta registrado, puede iniciar la sesión desde:</p>
<a href="formulario_registro.jsp">Iniciar sesión</a>
</body>
</html>
