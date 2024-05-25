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

    </style>

</head>

<body>

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

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
