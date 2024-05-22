<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Liste des Projets</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <h1 class="mt-5">Liste des Projets</h1>
    <table class="table table-bordered mt-3">
        <thead>
        <tr>
            <th>ID</th>
            <th>Nom du Projet</th>
            <th>Description</th>
            <th>Date de Début</th>
            <th>Date de Fin</th>
            <th>Budget</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="projet" items="${projets}">
            <tr>
                <td>${projet.projetId}</td>
                <td>${projet.projetName}</td>
                <td>${projet.description}</td>
                <td>${projet.datedebut}</td>
                <td>${projet.datefin}</td>
                <td>${projet.budget}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
