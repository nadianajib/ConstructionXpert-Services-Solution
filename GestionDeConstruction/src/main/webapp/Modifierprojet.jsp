<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="metier.Projet" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Modifier Projet</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>

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
</html>