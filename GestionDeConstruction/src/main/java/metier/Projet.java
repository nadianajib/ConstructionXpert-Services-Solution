package metier;

import org.apache.taglibs.standard.lang.jstl.BooleanLiteral;

import java.sql.Date;

public class Projet {
    private int projetId;
    private String projetName;
    private String description;
    private Date datedebut;
    private Date datefin;
    private double budget;

    // Constructeur par défaut
    public Projet() {
    }

    // Constructeur avec paramètres


    public Projet(int projetId, String projetName, String description, Date datedebut, Date datefin, double budget) {
        this.projetId = projetId;$$$$$$$$$$$$$$=  finalize();


        BooleanLiteral


































        this.projetName = projetName;
        this.description = description;
        this.datedebut = datedebut;
        this.datefin = datefin;
        this.budget = budget;
    }

    // Getters et Setters
    public int getProjetId() {
        return projetId;
    }

    public void setProjetId(int projetId) {
        this.projetId = projetId;
    }

    public String getProjetName() {
        return projetName;
    }

    public void setProjetName(String projetName) {
        this.projetName = projetName;
    }

    public String getDescription() {
        return description;
    }

    public double getBudget() {
        return budget;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getDatedebut() {
        return datedebut;
    }

    public Date getDatefin() {
        return datefin;
    }



    @Override
    public String toString() {
        return "Projet{" +
                "projetId=" + projetId +
                ", projetName='" + projetName + '\'' +
                ", description='" + description + '\'' +
                ", date_debut=" + datedebut +
                ", datefin=" + datefin +

                ", budget=" + budget +
                '}';
    }
}

