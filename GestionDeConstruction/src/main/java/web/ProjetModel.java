package web;

import metier.Projet;

import java.util.ArrayList;
import java.util.List;

public class ProjetModel {
    private String motCle;
    private List<Projet> projet=new ArrayList<Projet>();

    public String getMotCle() {
        return motCle;
    }

    public void setMotCle(String motCle) {
        this.motCle = motCle;
    }

    public List<Projet> getProjet() {
        return projet;
    }

    public void setProjet(List<Projet> projet) {
        this.projet = projet;
    }
}
