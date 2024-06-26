package web;

import dao.ProjetDAOImpl;
import metier.Projet;
import util.Connectiondb;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "AfficherServlet", value = "/AfficherServlet")
public class AfficherServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try (Connection connection = Connectiondb.getConnection()) {
            ProjetDAOImpl daoProjet = new ProjetDAOImpl(connection);
            List<Projet> projets = daoProjet.afficherListeProjets();
            request.setAttribute("afficherList", projets);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        this.getServletContext().getRequestDispatcher("/afficherProjet.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Traiter les requêtes POST si nécessaire
    }
}
