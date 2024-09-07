<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Formulario de registro</title>
</head>
<body>
<!-- Se hace un formulario de HTML normal -->
<h1>Clasificacion olimpica de BMX.</h1>
<form action="registro" method="post">
    <table style="with: 50%">
        <tr>
            <td>Nombres:</td>
            <td><input type="text" name="nombres" /></td>
        </tr>
        <tr>
            <td>Apellidos:</td>
            <td><input type="text" name="apellidos" /></td>
        </tr>
        <tr>
            <td>Fecha de nacimiento:</td>
            <td><input type="date" name="fecha de nacimiento" /></td>
        </tr>
        <tr>
            <td>Pais:</td>
            <td>
        <tr>
            <td>País:</td>
            <td>
                <select name="pais" required>
                    <option value="" disabled selected>Seleccionar País</option>
                    <option value="argentina">Argentina</option>
                    <option value="australia">Australia</option>
                    <option value="brasil">Brasil</option>
                    <option value="canada">Canadá</option>
                    <option value="chile">Chile</option>
                    <option value="china">China</option>
                    <option value="colombia">Colombia</option>
                    <option value="francia">Francia</option>
                    <option value="alemania">Alemania</option>
                    <option value="india">India</option>
                    <option value="italia">Italia</option>
                    <option value="japon">Japón</option>
                    <option value="mexico">México</option>
                    <option value="nueva_zelanda">Nueva Zelanda</option>
                    <option value="peru">Perú</option>
                    <option value="rusia">Rusia</option>
                    <option value="sudafrica">Sudáfrica</option>
                    <option value="españa">España</option>
                    <option value="reino_unido">Reino Unido</option>
                    <option value="estados_unidos">Estados Unidos</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>Codigo pais</td>
            <td><input type="Text" name="Codigo Pais" /></td>

        </tr></table>
    <input type="submit" value="Registrar" /></form>
</body>
</html>
