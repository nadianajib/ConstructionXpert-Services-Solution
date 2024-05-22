package vue;

import dao.ProjetDAOImpl;
import metier.Projet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;

@WebServlet("/saveProjet")
public class SaveProjetServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ProjetDAOImpl projetDAO;

    public void init() {
        projetDAO = new ProjetDAOImpl();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        saveProjet(request, response);
    }

    private void saveProjet(HttpServletRequest request, HttpServletResponse response) throws IOException {

        String nomProjet = request.getParameter("nomProjet");
        String description = request.getParameter("description");
        Date dateDebut = Date.valueOf(request.getParameter("dateDebut"));
        Date dateFin = Date.valueOf(request.getParameter("dateFin"));
        double budget = Double.parseDouble(request.getParameter("budget"));

        Projet projet = new Projet(nomProjet, description, dateDebut, dateFin, budget);
        projetDAO.save(projet);
        response.sendRedirect("listProjets");
    }
}

