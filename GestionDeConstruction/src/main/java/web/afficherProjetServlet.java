package web;

import dao.IProjetDAO;
import dao.ProjetDAOImpl;
import metier.Projet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/afficherProjet")
public class afficherProjetServlet extends HttpServlet {

    private IProjetDAO projetDAO;

    @Override
    public void init() throws ServletException {
        projetDAO = new ProjetDAOImpl();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Projet> projets = projetDAO.getTousProjet();
        request.setAttribute("projets", projets);
        request.getRequestDispatcher("afficherProjet.jsp").forward(request, response);
    }
}
