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
  //echo "<h3 class='alerts'>Logged In</h3>";
}

else{
  echo "<h3 class='alerts'>Guest View</h3>";
}



// Grab data
if(isset($_POST['saveListing'])){
  if(isset($_SESSION['tenant_id'])) {

    $id = $_SESSION['tenant_id'];
    $listing = $_POST['apt'];

    $select = "SELECT * FROM savedListings WHERE apartment_id='$listing' AND tenant_id=$id";
    $select_listing = mysqli_query($conn,$select);

    if(mysqli_num_rows($select_listing)>0){
      echo "Listing Already Saved";
    } else{ 
      //insert into savedListings table in db
      $insert = "INSERT into savedListings (apartment_id,tenant_id) values  ('$listing','$id')";

      $insert_prod = mysqli_query($conn,$insert);

      echo "Listing saved";
    }
  } else {
    header("Location: signIn.php");
  }
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
    
    <!-- <section id="filters"> -->

    <form id='filterForm' method='POST'>
    <div class="filterSearch">
        <label>Search by Zip Code:</label>
        <input type="text" placeholder="53719" name="zip" pattern="^\d{5}$" maxlength="5">
    </div>

    <div class="filterSearch">
    <label>Max Rent:</label>
        <input type="text" name="price" pattern="^\d*$" maxlength="4">
    </div>

    <div class="dropdown" id="bedbathFilter">
        <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
        Bed
        </button>
        <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
            <h6 class="dropdown-header">Bedrooms</h6>
            <li><div class="form-check"><input class="form-check-input" type="radio" value="1" id="bed1" name="bed"/><label class="form-check-label" for="bed1">1 Bedroom</label></div></li>
            <li><div class="form-check"><input class="form-check-input" type="radio" value="2" id="bed2" name="bed"/><label class="form-check-label" for="bed2">2 Bedrooms</label></div></li>
            <li><div class="form-check"><input class="form-check-input" type="radio" value="3" id="bed3" name="bed"/><label class="form-check-label" for="bed3">3 Bedrooms</label></div></li>
            <li><div class="form-check"><input class="form-check-input" type="radio" value="4" id="bed4" name="bed"/><label class="form-check-label" for="bed4">4 Bedrooms</label></div></li>
        </ul>
        </div>
        <div class="dropdown" id="bedbathFilter">
        <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
        Bath
        </button>
        <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
            <h6 class="dropdown-header">Bathrooms</h6>
            <li><div class="form-check"><input class="form-check-input" type="radio" value="1" id="bath1" name="bath"/><label class="form-check-label" for="bath1">1 Bathrooms</label></div></li>
            <li><div class="form-check"><input class="form-check-input" type="radio" value="2" id="bath2" name="bath"/><label class="form-check-label" for="bath2">2 Bathrooms</label></div></li>
            <li><div class="form-check"><input class="form-check-input" type="radio" value="3" id="bath3" name="bath"/><label class="form-check-label" for="bath3">3 Bathrooms</label></div></li>
        </ul>
    </div>

    <div class="dropdown" id="petFilter">
        <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
        Pet Policy
        </button>
        <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
            <li><div class="form-check"><input class="form-check-input" type="checkbox" value="1" id="pets" name="pets"/><label class="form-check-label" for="pets">Pets Allowed</label></div></li>
        </ul>
    </div>

    <div class="dropdown">
        <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
        Amenities
        </button>
        <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
            <li><div class="form-check"><input class="form-check-input" type="checkbox" value="1" id="parking" name="parking"/><label class="form-check-label" for="parking">Parking</label></div></li>
            <li><div class="form-check"><input class="form-check-input" type="checkbox" value="1" id="dish" name="dishwasher"/><label class="form-check-label" for="dishwasher">Dishwasher</label></div></li>
            <li><div class="form-check"><input class="form-check-input" type="checkbox" value="1" id="ac" name="ac"/><label class="form-check-label"  for="ac">A/C</label></div></li>
            <li><div class="form-check"><input class="form-check-input" type="checkbox" value="1" id="heater" name="heater"/><label class="form-check-label"  for="heater">Heater</label></div></li>
            <li><div class="form-check"><input class="form-check-input" type="checkbox" value="1" id="wd" name="wd"/><label class="form-check-label"  for="wd">Washing&Drying Machine</label></div></li>

          </ul>
    </div>


<button class="btn-filter" type="submit" name='filterSearch'>
                Search
                </button>  

<button class="btn-filter" type="submit" onclick=clear()>
    Clear Search
        </button>
 
 
        </form>


        <!-- </section> -->

    <div class="container">
        <div class="row">
          <div class="col">
            <section id="map">
                <!-- map of Wisconsin with available listings 
                    Probably need API for it 
                -->
    
                <!-- <img src="assets/images/Mockmap.png" id="mapImg"> -->
    <?php
    if (isset($_POST['filterSearch'])) {

        //make query into a php function that is triggered through a onblur?
        //make clear filter swap current values in the select query to the default values
        //make dropdown selections remain through refreshes.

        $zip = $_POST["zip"];
        $price = $_POST["price"];
        $bed = isset($_POST["bed"]) ? $_POST["bed"] : null;
        $bath = isset($_POST["bath"]) ? $_POST["bath"] : null;
        $pets = isset($_POST["pets"]) ? $_POST["pets"] : null;
        $ac = isset($_POST["ac"]) ? $_POST["ac"] : null;
        $wd = isset($_POST["wd"]) ? $_POST["wd"] : null;
        $parking = isset($_POST["parking"]) ? $_POST["parking"] : null;
        $heater = isset($_POST["heater"]) ? $_POST["heater"] : null;
        $dishwasher = isset($_POST["dishwasher"]) ? $_POST["dishwasher"] : null;
       
        $sql = "SELECT * FROM apartments WHERE 1=1";

        if (!empty($zip)) {
          $sql .= " AND zipcode = $zip";
        }

        if (!empty($price)) {
          $sql .= " AND price <= $price";
        }

        if (!empty($bed)) {
          $sql .= " AND bedrooms = $bed";
        }

        if (!empty($bath)) {
          $sql .= " AND bathrooms = $bath";
        }

        if (!empty($pets)) {
          $sql .= " AND pets = $pets";
        }

        if (!empty($ac)) {
          $sql .= " AND ac = $ac";
        }

        if (!empty($wd)) {
          $sql .= " AND washdry = $wd";
        }

        if (!empty($parking)) {
          $sql .= " AND parking = $parking";
        }

        if (!empty($heater)) {
          $sql .= " AND heat = $heater";
        }

        if (!empty($dishwasher)) {
          $sql .= " AND dishwasher = $dishwasher";
        }
    
        //echo $sql;
        $result = mysqli_query($conn, $sql);
        $queryResult = mysqli_num_rows($result);
    
    
        if($queryResult > 0){
        if(mysqli_num_rows($result)>0){
          echo $queryResult . " results found";
            while($apt = mysqli_fetch_assoc($result)){
                ?>
                <form method="POST" action="">
                <input type="hidden" name="apt" value="<?php echo $apt["apartment_id"]; ?>" />     
                <div class="card text-center">
            <div class="card-header">
                <h5 class="card-title"><?php
                echo $apt["streetAddress"]?></h5>
              <p class="card-text"><?php
              echo $apt["zipcode"]?></p>
            </div>
            <div class="card-body">
                <img class="aptImg" src="<?php echo $apt['imgURL']; ?>" />


                <p class="card-text">$<?php
                echo $apt["price"]?></p>
                <p class="card-text">Bedrooms: <?php
                echo $apt["bedrooms"]?></p>
                <p class="card-text">Bathrooms: <?php
                echo $apt["bathrooms"]?></p>


                <p class="card-text">A/C: <?php
                echo $apt["ac"]?></p>
                <p class="card-text">Pets: <?php
                echo $apt["pets"]?></p>
                <p class="card-text">Dishwasher: <?php
                echo $apt["dishwasher"]?></p>
                <p class="card-text">Heater: <?php
                echo $apt["heat"]?></p>
                                    
                <input class="btn btn-primary" id="saveListing" type="submit" name="saveListing" value="Save Listing"/>
                </form>

            </div>
          </div>
          <h3 id="noResults"></h3>
            <?php

            }
        }
    }

    else{

      ?>
      <h3 id="noResults">
        <?php
          echo "No Results";
        ?>
        </h3>

        <?php
    }
}

?>
</section>
</div>
</div>
</div>
<!--       
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
      
              </div> -->
</body>
</html>
<script>

const clear = () => {
    <?php
        $price = 1000;
        $bed = 1;
        $bath = 1;
        $pets = 0;
        $ac = 0;
        $wd = 0;
        $parking = 0;
        $garage = 0;
        $heater = 0;
        $dishwasher = 0;
       
        $clear = "SELECT * FROM apartments WHERE
         price >= $price
         AND bedrooms >= $bed 
         AND bathrooms >= $bath
         AND pets = $pets
         AND ac = $ac
         AND washdry = $wd
         AND dishwasher = $dishwasher
         AND heat = $heater";

        echo $sql;
        $result = mysqli_query($conn, $sql);
        $queryResult = mysqli_num_rows($result);
    
    
        if($queryResult > 0){
        if(mysqli_num_rows($result)>0){
            while($apt = mysqli_fetch_assoc($result)){
                ?>
                <div class="card text-center">
            <div class="card-header">
                <h5 class="card-title"><?php
                echo $apt["streetAddress"]?></h5>
              <p class="card-text"><?php
              echo $apt["zipcode"]?></p>
            </div>
            <div class="card-body">
                <p class="card-text">$<?php
                echo $apt["price"]?></p>
                <p class="card-text">Bedrooms: <?php
                echo $apt["bedrooms"]?></p>
                <p class="card-text">Bathrooms: <?php
                echo $apt["bathrooms"]?></p>


                <p class="card-text">A/C: <?php
                echo $apt["ac"]?></p>
                <p class="card-text">Pets: <?php
                echo $apt["pets"]?></p>
                <p class="card-text">Dishwasher: <?php
                echo $apt["dishwasher"]?></p>
                <p class="card-text">Heater: <?php
                echo $apt["heat"]?></p>
              <a href="#" class="btn btn-primary" id="saveListing">Save Listing</a>

            </div>
          </div>
          <?php
            }
        }
    }
    ?>
            }


</script>