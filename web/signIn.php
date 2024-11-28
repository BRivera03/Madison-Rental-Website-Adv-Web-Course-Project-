<?php
    if(!isset($_SESSION)) {
        session_start();
        //echo "Session started!!";
    }

    include("connectDB.php");
    
    if (isset($_POST['login']) && !empty($_POST['email']) && !empty($_POST['pass'])){
        //echo "Login sent!"; 
        $email = $_POST["email"];
        $pass = $_POST["pass"];

        //echo "Email: " . $email;
        //echo "Password: " . $pass;

        //$pass = hash("sha256", $pass);

        //Verify that email is in database
        $query = $conn->prepare("SELECT * FROM tenants WHERE email=? AND password=?");
        $query->bind_param("ss",$email,$pass);
        $query->execute();

        $result = $query->get_result();

        if($result->num_rows > 0) {
            $row = $result->fetch_assoc();
            $_SESSION["tenant_id"] = $row["tenant_id"];
            echo "<h3 class='alerts'>Successfully Logged In</h3>";
            $_SESSION['email'] = $row['email'];

            echo "<script>window.location.href = 'index.php';</script>";
        } else {
            //Return account error
            $error = "Invalid User Information";
            echo $error;
            //echo "<script>alert('Incorrect Email or Password');</script>";
        }
    } elseif (isset($_POST['login']) && (empty($_POST['email']) || empty($_POST['pass']))) {
        $error = "Email or Password not given";
        echo $error;
    }

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Apartment Website Homepage</title>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">


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


<body>
    <div id="box">
        <h2 id="signinTitle">Sign In</h2>
        <form method="post">
            <label class="signInLabel">Email:</label><br><br>
            <input id="signinText" type="text" name="email"><br><br>
            <label class="signInLabel">Password:</label><br><br>
            <input id="signinText" type="password" name="pass"><br><br>
            <input id="signinButton" type="submit" value="Sign in" name="login"><br><br>
            <a href="signUp.php" class="link">Don't have an account? Click to Sign Up</a><br><br>
        </form>
    </div>
<!-- 
<form class="form-signin">
    <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
    <label for="inputEmail" class="sr-only">Email address</label>
    <input type="email" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>
    <label for="inputPassword" class="sr-only">Password</label>
    <input type="password" id="inputPassword" class="form-control" placeholder="Password" required>
    <div class="checkbox mb-3">
      <label>
        <input type="checkbox" value="remember-me"> Remember me
      </label>
    </div>
    <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
  </form> -->


</body>
</html>