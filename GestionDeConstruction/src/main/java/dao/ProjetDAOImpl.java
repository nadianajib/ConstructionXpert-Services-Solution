package dao;

import metier.Projet;
import util.Connectiondb;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.sql.PreparedStatement;
import java.util.List;


public class ProjetDAOImpl implements IProjetDAO {

    @Override
    public Projet save(Projet p) {
        Connection connection = Connectiondb.getConnection();
        try {
            String query = "INSERT INTO Projet (NomProjet, description, DteDebut, Budget) VALUES (?, ?, ?, ?)";
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, p.getProjetName());
            ps.setString(2, p.getDescription());
            ps.setDate(3, p.getDate_debut());
            ps.setDouble(4, p.getPrecision());
            ps.executeUpdate();

            // Récupérer l'ID généré
            ResultSet rs = ps.getGeneratedKeys();
            if (rs.next()) {
                p.setProjetId(rs.getInt(1));
            }

            ps.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return p;
    }



    @Override
    public List<Projet> getTousProjet() {
        return List.of();
    }

    @Override
    public void deleteProjet(int id) {

    }

    @Override
    public List<Projet> recherche(String motCle) {
        return List.of();
    }

    @Override
    public Projet updateProjet(Projet projet) {
        return null;
    }

    @Override
    public Projet getProjet(int id) {
        return null;
    }
}
