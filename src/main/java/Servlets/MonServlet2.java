package Servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/MonServlet2")
public class MonServlet2 extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Terminer la session de l'utilisateur
        HttpSession session = request.getSession();
        session.removeAttribute("utilisateur");

        // Rediriger vers la page de connexion
        response.sendRedirect("Login.jsp");
    }
}
