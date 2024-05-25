<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Construction Company</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <!-- Include Font Awesome for icons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
  <style>
    .navbar {
      background-color: #FFBF00;
    }
    .navbar-brand {
      color: #fff;
      font-weight: bold;
    }
    .nav-link {
      color: #fff;
    }
    /* Style pour le hover effect de la barre de navigation */
    .navbar-nav .nav-link:hover {
      color: #000; /* Change la couleur du texte en noir */
    }
    /* Ajout d'icônes à côté des éléments de la barre de navigation */
    .navbar-nav .nav-link i {
      margin-right: 5px; /* Ajoute un espace entre l'icône et le texte */
    }
    /* Style pour le hover effect des icônes */
    .navbar-nav .nav-link:hover i {
      color: #000; /* Change la couleur de l'icône en noir */
    }
    .nav-item li{
      text-align: right;
    }
    .col-md-6{
      margin-top: 200px;
    }
  </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark">
  <div class="container">
    <a class="navbar-brand" href="#">BuildIcon</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item">
          <a class="nav-link" href="#"><i class="fas fa-home"></i> Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#"><i class="fas fa-project-diagram"></i> Projets</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#"><i class="fas fa-tasks"></i> Taches</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#"><i class="fas fa-tools"></i> Ressources</a>
        </li>
      </ul>
    </div>
  </div>
</nav>

<div class="hero">
  <div class="container">
    <div class="row">
      <div class="col-md-6">
        <h1>Constructing Is Our Life Business</h1>
        <p class="lead">HIGH QUALITY GUARANTEED</p>

      </div>
      <div class="col-md-6">
        <img src="<%= request.getContextPath() %>/media/depositphotos_93401314-stock-photo-concept-of-construction-and-design.jpg" alt="Construction Image">
      </div>
    </div>
  </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
