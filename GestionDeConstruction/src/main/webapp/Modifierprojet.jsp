<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="metier.Projet" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Modifier Projet</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <style>
        .footer {
            background-color: #333;
            color: #fff;
            padding:1px;
            text-align: center;
            margin:5px;

        }
        .social-icons {
            margin-top: 20px;
        }
        .social-icons a {
            color: #fff;
            font-size: 24px;
            margin-right: 10px; /* Ajoute un espace entre les icônes */
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand" href="#">BuildIcon</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="index.jsp"><i class="fas fa-home"></i> Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Ajouterprojet.jsp"><i class="fas fa-project-diagram"></i> Projets</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#"><i class="fas fa-tasks"></i> Tâches</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#"><i class="fas fa-tools"></i> Ressources</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div class="container">
    <h1 class="mt-5">Modifier Projet</h1>
    <form action="ModifierProjet" method="post">
        <input type="hidden" name="id" value="${Projet.projetId}">
        <div class="form-group">
            <label for="nomProjet">Nom du Projet</label>
            <input type="text" class="form-control" id="nomProjet" name="nomProjet" value="${Projet.projetName}" required>
        </div>
        <div class="form-group">
            <label for="description">Description</label>
            <textarea class="form-control" id="description" name="description" required>${Projet.description}</textarea>
        </div>
        <div class="form-group">
            <label for="dateDebut">Date de Début</label>
            <input type="date" class="form-control" id="dateDebut" name="dateDebut" value="${Projet.datedebut}" required>
        </div>
        <div class="form-group">
            <label for="dateFin">Date de Fin</label>
            <input type="date" class="form-control" id="dateFin" name="dateFin" value="${Projet.datefin}" required>
        </div>
        <div class="form-group">
            <label for="budget">Budget</label>
            <input type="number" class="form-control" id="budget" name="budget" value="${Projet.budget}" required>
        </div>
        <button type="submit" class="btn btn-primary">Modifier</button>
    </form>
</div>

</body>
<footer class="footer">
    <div class="container">
        <div class="social-icons">
            <a href="#"><i class="fab fa-facebook-f"></i></a>
            <a href="#"><i class="fab fa-twitter"></i></a>
            <a href="#"><i class="fab fa-instagram"></i></a>
            <a href="#"><i class="fab fa-linkedin-in"></i></a>
        </div>
        <p>&copy; 2024 Construction Company. All rights reserved.</p>
    </div>
</footer>
</html>