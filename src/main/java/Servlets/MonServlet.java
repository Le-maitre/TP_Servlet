package Servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/MonServlet")
public class MonServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static List<Utilisateur> utilisateursInscrits = new ArrayList<>();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String nom = request.getParameter("nom");
    	String prenom = request.getParameter("prenom");
    	String pseudo = request.getParameter("pseudo");
    	String email = request.getParameter("email");
    	String motDePasse = request.getParameter("motDePasse");
    	String confirmationMotDePasse = request.getParameter("confirmationMotDePasse");
    	
    	HttpSession session = request.getSession();
    
    	
    	if (!motDePasse.equals(confirmationMotDePasse)) {
		response.sendRedirect(request.getContextPath() + "/Inscription.jsp");
    		return;
    	}
    	  // Créer un nouvel utilisateur
        Utilisateur utilisateur = new Utilisateur(nom, prenom, pseudo, email, motDePasse);

        // Ajouter l'utilisateur à la liste des utilisateurs inscrits
        utilisateursInscrits.add(utilisateur);
    	
    	request.getSession().setAttribute("utilisateur", utilisateur);

        // Rediriger vers la page d'accueil avec le nom de l'utilisateur
    	request.setAttribute("utilisateurs", utilisateursInscrits);
    	request.getRequestDispatcher("Accueil.jsp").forward(request, response);
    }
}
