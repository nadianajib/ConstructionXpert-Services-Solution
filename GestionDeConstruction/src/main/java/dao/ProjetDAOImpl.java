package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import metier.Projet;
import util.Connectiondb;

public class ProjetDAOImpl implements IProjetDAO{

    Connection connection = Connectiondb.getConnection();

    public ProjetDAOImpl(Connection connection) {
        this.connection = connection;
    }

    @Override
    public Projet ajouterProjet(Projet projet) throws SQLException {
        String query = "INSERT INTO Projet (NomProjet, Description, DateDebut, DateFin, Budget) VALUES (?, ?, ?, ?, ?)";
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setString(1, projet.getProjetName());
            stmt.setString(2, projet.getDescription());
            stmt.setDate(3, new java.sql.Date(projet.getDatedebut().getTime()));
            stmt.setDate(4, new java.sql.Date(projet.getDatefin().getTime()));
            stmt.setDouble(5, projet.getBudget());
            stmt.executeUpdate();
        }
        return projet;
    }

    @Override
    public List<Projet> afficherListeProjets() throws SQLException {
        List<Projet> projets = new ArrayList<>();
        String query = "SELECT * FROM projet";
        try (PreparedStatement stmt = connection.prepareStatement(query);
             ResultSet rs = stmt.executeQuery()) {
            while (rs.next()) {
                Projet projet = new Projet();
                projet.setProjetId(rs.getInt("idprojet"));
                projet.setProjetName(rs.getString("nomProjet"));
                projet.setDescription(rs.getString("description"));
                projet.setDatedebut(rs.getDate("dateDebut"));
                projet.setDatefin(rs.getDate("dateFin"));
                projet.setBudget(rs.getDouble("budget"));
                projets.add(projet);
            }
        }
        return projets;
    }


    @Override
    public void ModifierProjet(Projet projet) throws SQLException {
        String query = "UPDATE projet SET nomprojet = ?, description = ?,datedebut= ?, dateFin = ?, budget = ? WHERE IdProjet = ?";
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setString(1, projet.getProjetName());
            stmt.setString(2, projet.getDescription());
            stmt.setDate(3, new java.sql.Date(projet.getDatedebut().getTime()));
            stmt.setDate(4, new java.sql.Date(projet.getDatefin().getTime()));
            stmt.setDouble(5, projet.getBudget());
            stmt.setInt(6, projet.getProjetId());
            stmt.executeUpdate();
        }
    }

    @Override
    public void supprimerProjet(int idProjet) throws SQLException {
        String query = "DELETE FROM Projet WHERE IdProjet = ?";
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setInt(1, idProjet);
            stmt.executeUpdate();
        }
    }
    @Override
    public Projet rechbyid(int id) throws SQLException {
        String query = "SELECT * FROM Projet WHERE IdProjet = ?";
        Projet projet = null;
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                projet = new Projet();
                projet.setProjetId(rs.getInt("IdProjet"));
                projet.setProjetName(rs.getString("NomProjet"));
                projet.setDescription(rs.getString("Description"));
                projet.setDatedebut(rs.getDate("DateDebut"));
                projet.setDatefin(rs.getDate("DateFin"));
                projet.setBudget(rs.getDouble("Budget"));

            }
        }
        return projet;
    }
}
