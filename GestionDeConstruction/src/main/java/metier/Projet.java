package metier;

import java.sql.Date;

public class Projet {
    private int projetId;
    private String projetName;
    private String description;
    private Date date_debut;
    private Date date_fin;
    private double precision;

    // Constructeur par défaut
    public Projet() {
    }

    // Constructeur avec paramètres
    public Projet(String projetName, String description, Date date_debut, double precision) {
        this.projetName = projetName;
        this.description = description;
        this.date_debut = date_debut;
        this.precision = precision;
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

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getDate_debut() {
        return date_debut;
    }

    public void setDate_debut(Date date_debut) {
        this.date_debut = date_debut;
    }

    public double getPrecision() {
        return precision;
    }

    public void setPrecision(double precision) {
        this.precision = precision;
    }

    @Override
    public String toString() {
        return "Projet{" +
                "projetId=" + projetId +
                ", projetName='" + projetName + '\'' +
                ", description='" + description + '\'' +
                ", date_debut=" + date_debut +
                ", precision=" + precision +
                '}';
    }
}

