<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Gestion de Construction</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
  <style>
    body {
      display: flex;
      min-height: 100vh;
      margin: 0;
    }
    .navbar {
      flex-direction: column;
      height: 100vh;
      background-color: #343a40; /* Couleur de fond de la barre de navigation */
      position: fixed;
      width: 200px;
    }
    .navbar .navbar-brand {
      color: #fff;
      text-align: center;
      width: 100%;
    }
    .navbar .navbar-nav {
      flex-direction: column;
      width: 100%;
      justify-content: space-around;
      margin-bottom: 220%;
    }
    .navbar .navbar-nav .nav-link {
      color: #ffffff;
      text-align: center;
      padding: 10px 0;
    }
    .navbar .navbar-nav .nav-link:hover {
      color: #ffc107;
    }
    .navbar .btn-primary {
      background-color: #ffc107;
      border-color: #ffc107;
      margin: 10px auto;
      width: 80%;
    }
    .main-content {
      margin-left: 200px;
      flex-grow: 1;
      display: flex;
      align-items: center;
      justify-content: center;
    }
    .center-content {
      text-align: center;
    }
    .center-content img {
      max-width: 100%;
      height: auto;
    }
  </style>
</head>
<body>
<header>
  <nav class="navbar navbar-dark">
    <a class="navbar-brand" href="#">Gestion de Construction</a>
    <div class="navbar-nav">
      <a class="nav-link" href="#"><i class="fas fa-home"></i> Home</a>
      <a class="nav-link" href="#"><i class="fas fa-project-diagram"></i> Projets</a>
      <a class="nav-link" href="#"><i class="fas fa-tasks"></i> TÃ¢ches</a>
      <a class="nav-link" href="#"><i class="fas fa-tools"></i> Ressources</a>
      <button class="btn btn-primary">Ajouter</button>
    </div>
  </nav>
</header>

<main class="main-content">
  <div class="center-content">
    <img src="<%= request.getContextPath() %>/media/depositphotos_93401314-stock-photo-concept-of-construction-and-design.jpg" alt="Construction Image">
  </div>
</main>

<footer>
  <!-- Pied de page ici -->
</footer>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>