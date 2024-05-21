package dao;

import metier.Projet;

import java.util.List;

public interface IProjetDAO {
    Projet save(Projet p);

    List<Projet> getTousProjet();

    void deleteProjet(int id);

    List<Projet> recherche(String motCle);

    Projet updateProjet(Projet projet);

    Projet getProjet(int id);
}
