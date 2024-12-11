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
    header("location: signIn.php");
    //echo "<h3 class='alerts'>Guest View</h3>";
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
            <a class="navbar-brand" href="index.html" style="color: var(--timberwolf)"><img class="logo" src="assets/logos/WIRentLogov1.png"></a>
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
<!-- 
    The form should include: First name, last name, age, email, phone number, 
    income restriction (y/n), pets(y/n), 
    and a dropdown for the apartment they're applying to as this will come from the database.  -->
  <?php
    $id = $_SESSION["tenant_id"];
    $query = "SELECT * FROM tenants WHERE tenant_id = $id";
    $result = mysqli_query($conn, $query);

    if ($result && mysqli_num_rows($result) > 0) {
      $row = mysqli_fetch_assoc($result);
      $_SESSION['phone'] = $row['phone'];
      $_SESSION['pass'] = $row['password'];
      $_SESSION['user'] = $row['email'];
      $_SESSION['fname'] = $row['firstName'];
      $_SESSION['lname'] = $row['lastName'];
      $_SESSION['pets'] = $row['pets'];
      $_SESSION['income'] = $row['incomeRestrict'];
      $_SESSION['apt_id'] = $row['apartment_id'];
      $_SESSION['lstart'] = $row['leaseStart'];
      $_SESSION['lend'] = $row['leaseEnd'];
    }

    echo "
    <section id='applyBox'>
        <h1>Apply</h1>

        <a class='backButton' href='profile.php'> ← Back</a>

    <h2 id='listingName'>Listing Application Form</h2>
            <div>
                <form method='post'>
                    <label>First Name: {$_SESSION['fname']}</label><br><br>

                    <label>Last Name: {$_SESSION['lname']}</label><br><br>

                    <label>Email: {$_SESSION['email']}</label><br><br>

                    <label>Phone Number: {$_SESSION['phone']}</label><br><br>

                    <label>Lease Start: </label>
                    <input type='date' name='datey'><br><br>";


                    $sql = "SELECT * FROM savedListings WHERE tenant_id = $id";
                    $result = $conn->query($sql);

                    echo "
                    <section id='listings'>
                      <div class='dropdown' id='savedListings'>
                          <button class='btn btn-secondary dropdown-toggle' type='button' data-bs-toggle='dropdown' aria-expanded='false'>
                          Saved Listings</button>
                          <ul class='dropdown-menu' aria-labelledby='dropdownMenuButton'>";
                          // Check if there are rows returned by the query
                          if ($result->num_rows > 0) {
                            // Loop through each row and generate the dropdown items dynamically
                            while ($row = $result->fetch_assoc()) {
                              // Output each listing as a dropdown item
                              echo "<li>
                                      <a class='dropdown-item' href='javascript:void(0);'>
                                        <div class='form-check'>
                                          <input class='form-check-input' type='radio' id='listing' name='listing' value='{$row['apartment_id']}'/>
                                          <label class='form-check-label' for='listing'> Listing #" . $row['apartment_id'] . "</label>
                                        </div>
                                      </a>
                                    </li>";
                            } 
                          } else {
                            echo "<li>No saved listings found.</li>";
                          }

                          echo "
                          </ul>

                          <br><br>

                          <button class='btn-filter' type='submit' name='applyListing'>
                            Apply
                          </button>  
                      </div>
                    </section>
                </form>";
                
                if (isset($_POST['applyListing'])) {
                  $listing = isset($_POST["listing"]) ? $_POST["listing"] : null;
                  $datey = isset($_POST["datey"]) ? $_POST["datey"] : null;

                  if(!empty($listing) && !empty($datey)) {
                    //check if applied =1 aka user already applied for this listing
                    $checkSql = "SELECT applied FROM savedListings WHERE tenant_id = $id AND apartment_id = $listing";
                    $checkResult = $conn->query($checkSql);

                    if ($checkResult && $checkResult->num_rows > 0) {
                      //check
                      $row = $checkResult->fetch_assoc();
          
                      if ($row['applied'] == 1) {
                          //already applied feedback
                          echo "You have already applied for this listing.";
                      } else {
                        $sql = "UPDATE savedListings SET applied=1 WHERE tenant_id = $id AND apartment_id = $listing";
                        $conn->query($sql);
                        echo "Application sent.";
                      }
                    }
                  } else {
                    echo "Please fill out all values.";
                  }
                }
                echo "
            </div>
    </section>";
?>


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