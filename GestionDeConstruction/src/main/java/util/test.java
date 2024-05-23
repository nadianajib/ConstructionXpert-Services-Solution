package util;


import dao.ProjetDAOImpl;
import metier.Projet;

import java.sql.*;
import java.util.List;

public class test {

    public static void main(String[] args) throws SQLException {

        ProjetDAOImpl  afficher = new ProjetDAOImpl();
//        try (Connection connection = Connectiondb.getConnection()) {
//            String query = "SELECT * FROM Projet";
//            try (Statement statement = connection.createStatement();
//                 ResultSet resultSet = statement.executeQuery(query)) {
//                while (resultSet.next()) {
//                    int idProjet = resultSet.getInt("IdProjet");
//                    String nomProjet = resultSet.getString("NomProjet");
//                    String description = resultSet.getString("description");
//                    String dteDebut = resultSet.getString("datedebut");
//                    String dateFin = resultSet.getString("datefin");
//                    double budget = resultSet.getDouble("Budget");
//
//                    System.out.println("ID Projet: " + idProjet);
//                    System.out.println("Nom Projet: " + nomProjet);
//                    System.out.println("Description: " + description);
//                    System.out.println("Date Debut: " + dteDebut);
//                    System.out.println("Date Fin: " + dateFin);
//                    System.out.println("Budget: " + budget);
//                    System.out.println("-----------");
//                }
//            }
//        } catch (SQLException e) {
//            System.err.println("Error during database operation: " + e.getMessage());
//        }

        List<Projet> afficherlist = afficher.afficherListeProjets();
    }
}