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
                      <li class="nav-item">
                        <a class="nav-link" href="logout.php">Sign Out</a>
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
    <section id='profileInfo'>
        <h1>My Account</h1>
        <h2>Account Information</h2>
        <form method='post'>
          <label>Username: </label>
          <input type='text' name='username' value='{$_SESSION['user']}'>
          <br><br>
          <label>Password: </label>
          <input type='password' name='password' value='{$_SESSION['pass']}'>
          <br><br>
          <button type='submit' name='changes'>Save Changes</button>
        </form>

        <br><br>

        <h2>Personal Information</h2>
        <form method='post'>
          <label>First name: </label>
          <input type='text' name='fname' value='{$_SESSION['fname']}'>
          <br><br>
          <label>Last name: </label>
          <input type='text' name='lname' value='{$_SESSION['lname']}'>
          <br><br>
          <label>Phone Number: </label>
          <input type='text' name='pnumber' value='{$_SESSION['phone']}'>
          <br><br>
          <label>Pets? </label>
          <input type='radio' name='pets' value='1' " . ((int)$_SESSION['pets'] === 1 ? 'checked' : '') . ">
          <label>Yes</label>
          <input type='radio' name='pets' value='0' " . ((int)$_SESSION['pets'] === 0 ? 'checked' : '') . ">
          <label>No</label>
          <br><br>
          <label>Income Restricted? </label>
          <input type='radio' name='incomeR' value='1' ' " . ((int)$_SESSION['income'] === 1 ? 'checked' : '') . ">
          <label>Yes</label>
          <input type='radio' name='incomeR' value='0' " . ((int)$_SESSION['income'] === 0 ? 'checked' : '') . ">
          <label>No</label>
          <br><br>
          <button type='submit' name='personal'>Save Changes</button>
        </form>

    ";

    if (!empty($_SESSION['apt_id'])){
      $apt_id = $_SESSION['apt_id'];

      $query = "SELECT streetAddress FROM apartments WHERE apartment_id='$apt_id'";

      $result = mysqli_query($conn, $query);

      // Check if the query returned any rows
      if ($result) {
        // Fetch the row from the result set
        $row = mysqli_fetch_assoc($result);
        
        // Check if we actually got a result
        if ($row) {
          // Access the streetAddress column
          $streetAddress = $row['streetAddress'];
        } else {
          $streetAddress = "Not Found";  
        }
      } else {
        echo "Error executing query: " . mysqli_error($conn);
      }

      echo "
        <h2>Housing Information</h2>
        <label>Street Address: {$streetAddress}</label>
        <br><br>
        <label>Lease start: {$_SESSION['lstart']}</label>
        <br><br>
        <label>Lease end: {$_SESSION['lend']}</label>
      </section>
      ";

    }

    if (isset($_POST['changes'])) {
      $user = $_POST['username'];
      $pass = $_POST['password'];

      //check if email already in database
      $query = "SELECT * FROM tenants where email = '$user'";
      $result = mysqli_query($conn, $query);
      if ($result){ //query success T/F
        if(mysqli_num_rows($result) > 0){ //yes existing email in db
          $duplicate = true;
        } else {
          $duplicate = false;
        }
      }

      if (!empty($user) && !empty($pass)){
        if ($user != $_SESSION['user'] && $pass != $_SESSION['pass'] && !$duplicate) {
          //update both pass and user
          $pass = hash("sha256", $pass);
          $sql = "UPDATE tenants SET email='$user', `password`='$pass' WHERE tenant_id = $id";
  
          if ($conn->query($sql) === TRUE) {
              //echo "<h3 class='alerts'>Pass and user updated successfully</h3>";
              header("Location: " . $_SERVER['PHP_SELF']); //reloads page
          } else {
              echo "Error updating record: " . $conn->error;
          }
        } elseif ($pass != $_SESSION['pass']){
          //update only pass
          $pass = hash("sha256", $pass);
          $sql = "UPDATE tenants SET `password`='$pass' WHERE tenant_id = $id";
  
          if ($conn->query($sql) === TRUE) {
              //echo "Pass updated successfully";
              header("Location: " . $_SERVER['PHP_SELF']);
          } else {
              echo "Error updating record: " . $conn->error;
          }
        } else if ($user != $_SESSION['user'] && !$duplicate){
          //update only user
          $sql = "UPDATE tenants SET email='$user' WHERE tenant_id = $id";
  
          if ($conn->query($sql) === TRUE) {
              //echo "User updated successfully";
              header("Location: " . $_SERVER['PHP_SELF']);
          } else {
              echo "Error updating record: " . $conn->error;
          }
        } else if ($user == $_SESSION['user'] && $pass == $_SESSION['pass']){
          echo "<h3 class='alerts'>No Changes made to previous user or pass</h3>";
        } else {
          echo "<h3 class='alerts'>Username taken</h3>";
        }
      } else {
        echo "<h3 class='alerts'>Cannot set values to nothing.</h3>";
      }
      
    }

    if (isset($_POST['personal'])) {
      $fname = $_POST['fname'];
      $lname = $_POST['lname'];
      $phone = $_POST['pnumber'];
      //radio buttons
      $pets = isset($_POST["pets"]) ? $_POST["pets"] : null;
      $incomeR = isset($_POST["incomeR"]) ? $_POST["incomeR"] : null;

      $sql = "UPDATE tenants SET ";

      $setClauses = [];

      if ($fname != $_SESSION['fname'] && !empty($fname)){
        $setClauses[] = "firstName = '$fname'";
      }

      if ($lname != $_SESSION['lname'] && !empty($lname)){
        $setClauses[] = "lastName = '$lname'";
      }

      if ($phone != $_SESSION['phone'] && !empty($phone)){
          //phone validation
          //Remove hyphens from phone number for validation
          $cleanPNum = str_replace("-", "", $phone); 
  
          // Check if the phone number has exactly 10 digits
          if (strlen($cleanPNum) != 10 || !is_numeric($cleanPNum)) {
            echo "Invalid phone number";
          } else {
            $setClauses[] = "phone = '$phone'";
          }
      }

      if ($pets != $_SESSION['pets'] && !is_null($pets)){
        $setClauses[] = "pets = '$pets'";
      }

      if ($incomeR != $_SESSION['income'] && !is_null($incomeR)){
        $setClauses[] = "incomeRestrict = '$incomeR'";
      }

      if (count($setClauses) > 0){
        $sql .= implode(", ", $setClauses);
      } else {
        echo "No data changed.";
        $sql = "SELECT * FROM tenants";
      }
  
      $sql .= " WHERE tenant_id = $id";
      
      if (mysqli_query($conn, $sql)) {
        header("Location: " . $_SERVER['PHP_SELF']);
        //echo "Profile updated successfully!";
      } else {
          echo "Error updating profile: " . mysqli_error($conn);
      }
    }
    
    $sql = "SELECT * FROM savedListings WHERE tenant_id = $id";
    $result = $conn->query($sql);

    echo "
    <section id='listings'>
      <div class='dropdown' id='savedListings'>
          <button class='btn btn-secondary dropdown-toggle' type='button' data-bs-toggle='dropdown' aria-expanded='false'>
          Saved Listings
          </button>
          <ul class='dropdown-menu' aria-labelledby='dropdownMenuButton'>
          ";

    // Check if there are rows returned by the query
    if ($result->num_rows > 0) {
      // Loop through each row and generate the dropdown items dynamically
      while ($row = $result->fetch_assoc()) {
        // Output each listing as a dropdown item
        echo "<li>
                <a class='dropdown-item' href='#'>
                    <div class='form-check'>
                        <input class='form-check-input' type='checkbox' value='" . $row['apartment_id'] . "' id='listing" . $row['apartment_id'] . "' />
                        <label class='form-check-label' for='listing" . $row['apartment_id'] . "'> Listing #" . $row['apartment_id'] . "</label>
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
    <a href='apply.html'>
      <button>
        Apply
      </button>
    </a>
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
  </div>
</body>
</html>