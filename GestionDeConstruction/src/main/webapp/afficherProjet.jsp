<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="metier.Projet" %>
<%@ page import="dao.ProjetDAOImpl" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Liste des Projets</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
        }
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
    <h1 class="mt-5 text-center">Liste des Projets</h1>
    <div class="table-responsive mt-3">
        <table class="table table-striped table-bordered">
            <thead class="thead-dark">
            <tr>
                <th>ID</th>
                <th>Nom du Projet</th>
                <th>Description</th>
                <th>Date de Début</th>
                <th>Date de Fin</th>
                <th>Budget</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="projet" items="${afficherList}">
                <tr>
                    <td>${projet.projetId}</td>
                    <td>${projet.projetName}</td>
                    <td class="d-none d-md-table-cell">${projet.description}</td>
                    <td>${projet.datedebut}</td>
                    <td>${projet.datefin}</td>
                    <td>${projet.budget}</td>
                    <td>
                        <a href="ModifierProjet?id=${projet.projetId}" class="btn btn-primary btn-sm">Modifier</a>
                        <a href="SupprimerServlet?id=${projet.projetId}" class="btn btn-danger btn-sm" onclick="return confirm('Êtes-vous sûr de vouloir supprimer ce projet?');">Supprimer</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
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

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
