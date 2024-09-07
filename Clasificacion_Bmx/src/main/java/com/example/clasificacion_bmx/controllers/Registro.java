package com.example.clasificacion_bmx.controllers;

import com.example.clasificacion_bmx.models.Competidor;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.time.LocalDate;


// Importante la anotación
@WebServlet(value = "/registro")
//Aquí definimos registro que extiende HttpServlet.
public class Registro extends HttpServlet {

    // Esta acción doPost() método que se llamará cuando mencionemos el atributo POST en acción en el formulario JSP anterior
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Aquí obtenemos los valores de la solicitud
        String nombre = request.getParameter("nombre");
        String apellidos = request.getParameter("apellidos");
        LocalDate fechaDeNacimiento = LocalDate.parse(request.getParameter("fecha de nacimiento"));
        String pais = request.getParameter("pais");
        String codigoPais = request.getParameter("codigo pais");
        int ronda = Integer.parseInt(request.getParameter("Ronda"));
        int puesto = Integer.parseInt(request.getParameter("Puesto"));

        // Aquí estamos tomando la condición if donde verificamos que cualquiera de los parámetros que se obtienen de la solicitud esté vacío o no
        if(nombre.isEmpty() || apellidos.isEmpty() || fechaDeNacimiento == null || pais.isEmpty() || codigoPais.isEmpty())
        {
            // Esta manera de llamar a la otra página es igual a la que hay en el else
            RequestDispatcher req = request.getRequestDispatcher("formulario_registro.jsp");
            req.include(request, response);
        }
        else//Este caso se ejecutará cuando alguno de los parámetros no esté vacío
        {
            // Se arma un mensaje a enviar a la página donde se redirecciona.
            Competidor usuario1 = new Competidor(nombre,apellidos,fechaDeNacimiento,pais, codigoPais, ronda, puesto);
            request.setAttribute("Usuario",usuario1);
            // Redirigir a la página JSP
            request.getRequestDispatcher("confirma_registro.jsp").forward(request, response);
        }
    }
}