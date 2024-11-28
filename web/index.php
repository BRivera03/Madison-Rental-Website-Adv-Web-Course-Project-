<?php
session_start();

$dbhost = "localhost";
$dbuser = "root";
$dbpass = "";
$dbname = "listings";

// Create connection
$conn = new mysqli($dbhost, $dbuser, $dbpass, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}


if(isset($_SESSION['tenant_id'])) {
  echo "<h3 class='alerts'>Logged In</h3>";
}

else{
  echo "<h3 class='alerts'>Guest View</h3>";
}

?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Apartment Website Homepage</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</head>
<body>
    
    <!--Navbar-->
    <nav id="nav" class="navbar navbar-expand-lg">
            <div class="container-fluid">
            <a class="navbar-brand" href="index.php" style="color: var(--timberwolf)"><img class="logo" src="assets/logos/WIRentLogov1.png"></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav me-auto">
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="index.php">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="listings.php">Apartments</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="profile.php">Profile</a>
                  </li>
                    <!-- <li class="nav-item">
                        <a class="nav-link" href="#">Sign in</a>
                    </li> -->
                </ul>

                <button class="btn btn-brand">
                    <a class="nav-link" href="signIn.php">Sign In</a>
                </button>

            </div>
        </div>
    </nav>


    

    <!--Hero-->
    <section id="hero" class="min-vh-100 d-flex">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <h4 id="heroTitle" class="fw-semibold text-uppercase"> Find a new home<br></h4>
                    <h4 id="heroSubtitle">
                        Helping thousands find apartments in Wisconsin
                    </h4>
                    
                    <div id="searchBar">
                        <input type="text" id="listingSearch" placeholder="Madison, WI">
                        <button id="listingSearchButton">Search</button>
                    </div>

                      <div id="listingLink">
                        <a href="listings.php" class="btn">Explore Our listings</a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <div class="card" id="footerCard" style="width: 100%;">
        <div class="card-footer" style="border-style: none;" >
          
          <div class="container">
            
            <div class="row align-items-start">
              <div class="col">
                <h1>WIRent</h1>
                <p>Find a new place that fits your needs</p>
              </div>
  
              <div class="col">
                <h4>Contact</h4>
                <h6>                
                  wirent@gmail.com
                </h6>
              </div>
  
              <div class="col">
                <h4>FAQs</h4>
                <p>How does saving listings work?</p>
              </div>
            </div>
  
            <div class="row align-items-center">
              <div class="col" id="footerSocialCol">
                <ul class="footerSocials">
                  <li>Instagram</li>
                  <li>Facebook</li>
                  <li>YouTube</li>
                  <li>X</li>
                </ul>
              </div>
          </div>
  
          </div>
</body>
</html>