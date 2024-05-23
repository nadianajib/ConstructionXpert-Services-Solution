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
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;


@WebServlet(name = "AjouterServlet", value = "/AjouterServlet")
public class AjouterServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

            req.getRequestDispatcher("/Ajouterprojet.jsp").forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String nomProjet = request.getParameter("nomProjet");
        String description = request.getParameter("description");
        String dateDebutStr = request.getParameter("dateDebut");
        String dateFinStr = request.getParameter("dateFin");
        String budgetStr = request.getParameter("budget");

        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

        try {
//            Date dateDebut = dateFormat.parse(dateDebutStr);
//            Date dateFin = dateFormat.parse(dateFinStr);
//            double budget = Double.parseDouble(budgetStr);

            Projet projet = new Projet();
            projet.setProjetName(nomProjet);
            projet.setDescription(description);
            projet.setDatedebut(Date.valueOf(dateDebutStr));
            projet.setDatefin(Date.valueOf(dateFinStr));
            projet.setBudget(Double.parseDouble(budgetStr));

            try (Connection connection = Connectiondb.getConnection()) {
                ProjetDAOImpl daoProjet = new ProjetDAOImpl(connection);
                daoProjet.ajouterProjet(projet);
            } catch (SQLException e) {
                e.printStackTrace();
            }

            response.sendRedirect("AfficherServlet");
        } catch ( NumberFormatException e) {
            e.printStackTrace();
            response.sendRedirect("error.html");
        }

        String path = request.getServletPath();
        if(path.equals("/home")) {
            request.getRequestDispatcher("Ajouterprojet.jsp").forward(request, response);
        }
    }
}
