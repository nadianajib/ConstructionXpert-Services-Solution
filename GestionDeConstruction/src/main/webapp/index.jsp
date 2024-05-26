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
      background-color: #000;
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
      color: #fff; /* Change la couleur du texte en blanc au survol */
    }
    /* Style pour le hover effect des icônes */
    .navbar-nav .nav-link:hover .nav-icon {
      color: #FFBF00; /* Change la couleur de l'icône en jaune au survol */
    }
    .nav-icon {
      color: #fff; /* Couleur par défaut de l'icône */
    }
    .nav-item li{
      text-align: right;
    }
    .col-md-6{
      margin-top: 200px;
    }
    .col-md-6 h1{
      color: #FFBF00
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
          <a class="nav-link" href="index.jsp"><i class="fas fa-home nav-icon"></i> Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="Ajouterprojet.jsp"><i class="fas fa-project-diagram nav-icon"></i> Projets</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="tasks.jsp"><i class="fas fa-tasks nav-icon"></i> Taches</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="resources.jsp"><i class="fas fa-tools nav-icon"></i> Ressources</a>
        </li>
      </ul>
    </div>
  </div>
</nav>

<div class="hero">
  <div class="container">
    <div class="row">
      <div class="col-md-6">
        <h1>La Construction Est Notre Metier</h1>
        <p class="lead">QUALITE SUPERIEURE GARANTIE</p>
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
<footer>
  <div class="social">
    <h4> Social Media :</h4>
    <div class="logo_social">
      <a href="" ><img src="images/footer/activite_fb.png" class="social-media" alt="social"></a>
      <a href="" ><img src="images/footer/activite_insta.png" class="social-media" alt="social"></a>
      <a href="" ><img src="images/footer/activite_twitter.png" class="social-media" alt="social"></a>
    </div>
  </div>
</footer>
</html>
