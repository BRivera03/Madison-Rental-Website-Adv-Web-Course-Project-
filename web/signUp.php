<?php
/*
function random_num($length){
    $test = "";
    if($length < 5)
    {
        $length = 5;
    }

    $len = rand(4,$length);

    for ($i=0; $i < $len; $i++){
    $text = rand(0,9);

    }
    return $text;
}*/


include("connectDB.php");

if($_SERVER['REQUEST_METHOD'] == "POST"){
    
    //Posted
    $email = $_POST['email'];
    $pass = $_POST['pass'];
    $fName = $_POST['fName'];
    $lName = $_POST['lName'];
    $pNum = $_POST['phone'];
    
    if(!empty($email) && !empty($pass) && !empty($fName) && !empty($lName) && !empty($pNum)){
        //save to database

        //Remove hyphens from phone number for validation
        $cleanPNum = str_replace("-", "", $pNum); 

        // Check if the phone number has exactly 10 digits
        if (strlen($cleanPNum) != 10 || !is_numeric($cleanPNum)) {
            ?>
            <script>
                //redirect to signup to retry
            alert("Invalid Phone Number")
            window.location.href = 'signUp.php';
            </script>
            <?php        
            exit;
        } 
        //$tenantID = random_num(9);

        //check if email already in database
        $query = "SELECT * FROM tenants where email = '$email'";
        $result = mysqli_query($conn, $query);
        if ($result){ //query success T/F
            if(mysqli_num_rows($result) > 0){ //yes existing email in db
                echo "There is already an account associated with the email entered.";
            } else { //no duplicate email
                $pass = hash("sha256", $pass);
                $query = "INSERT into tenants (email,password,firstName,lastName,phone) values ('$email','$pass','$fName','$lName','$pNum')";
                $result = mysqli_query($conn, $query);
                echo "Successfully Created account";
                //header("Location: login.php");
                //die;
                ?>
                <script>
                    window.location.href = 'signIn.php';
                    </script>
                <?php
            }
        }
    }
    else {
        echo "Please enter some valid information";
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

<body>
     
    <div id="box">
        <h2 id="signinTitle">Sign Up</h2>
        <form method="post" novalidate>
            <label class="signInLabel">Email:</label><br><br>
            <input id="signinText" type="text" name="email"><br><br>
            <label class="signInLabel">Password:</label><br><br>
            <input id="signinText" type="password" name="pass"><br><br>
            <label class="signInLabel" >First Name:</label><br><br>
            <input id="signinText" type="text" name="fName"><br><br>
            <label class="signInLabel">Last Name:</label><br><br>
            <input id="signinText" type="text" name="lName"><br><br>
            <label class="signInLabel">Phone Number:</label><br><br>
            <input id="signinText" type="text" name="phone" placeholder="608-255-3293"><br><br>
            <input id="signinButton" type="submit" value="Sign up"><br><br>
            <a href="signIn.php" class="link">Already have an account? Click to Log in</a><br><br>
</form>
</body>
</html>