<%@ page import="com.example.clasificacion_bmx.models.Competidor" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Registros de BMX</title>
</head>
<body>
<h1>Registros de Clasificación Olímpica de BMX</h1>

<table border="1" width="100%">
    <tr>
        <th>Nombre</th>
        <th>Apellidos</th>
        <th>Fecha de Nacimiento</th>
        <th>País</th>
        <th>Código País</th>
        <th>Ronda</th>
        <th>Puesto</th>
    </tr>
    <%
        // Obtener la lista de personas desde el servlet
        ArrayList<Competidor> personas = (ArrayList<Competidor>) request.getAttribute("competidor");
        if (personas != null) {
            for (Competidor competidor : personas) {
    %>
    <tr>
        <td><%= competidor.getNombre() %></td>
        <td><%= competidor.getApellidos() %></td>
        <td><%= competidor.getFechaDeNacimiento() %></td>
        <td><%= competidor.getPais() %></td>
        <td><%= competidor.getCodigoPais() %></td>
        <td><%= competidor.getRonda() %></td>
        <td><%= competidor.getPuesto() %></td>
    </tr>
    <%
            }
        }
    %>
</table>

<a href="formulario_registro.jsp">Registrar otra persona</a>

<%
    // Obtener la fecha actual
    Date fechaActual = new Date();
    SimpleDateFormat formatoFecha = new SimpleDateFormat("dd/MM/yyyy");
    String fechaFormateada = formatoFecha.format(fechaActual);
%>

<footer style=<footer style="position: fixed; bottom: 0; left: 0; width: 100%; text-align: left; padding-left: 10px; background-color: #f1f1f1;">
    <p>Fecha: <%= fechaFormateada %></p>
    <p>Desarrollado por:</p>
</footer>
</body>
</html>