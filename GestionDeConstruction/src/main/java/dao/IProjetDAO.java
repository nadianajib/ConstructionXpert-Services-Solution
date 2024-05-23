package dao;

import metier.Projet;
import java.sql.SQLException;
import java.util.List;



public interface IProjetDAO {

    Projet ajouterProjet(Projet projet) throws SQLException;
    List<Projet> afficherListeProjets() throws SQLException;
    void modifierProjet(Projet projet) throws SQLException;
    void supprimerProjet(int idProjet) throws SQLException;
}
