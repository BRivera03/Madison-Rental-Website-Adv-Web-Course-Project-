<!DOCTYPE html>
<html>
    <head>
        <title>Filling Nulls</title>
    </head>
    <body>
        <?php
        /*
            // Database connection
            $servername = "localhost";
            $username = "root";
            $password = "";
            $dbname = "listings"; // replace with your database name

            $conn = new mysqli($servername, $username, $password, $dbname);

            // Check connection
            if ($conn->connect_error) {
                die("Connection failed: " . $conn->connect_error);
            }

            //select null rows in landlord_id column
            $sqlSelect = "SELECT apartment_id FROM apartments WHERE landlord_id IS NULL";
            $result = $conn->query($sqlSelect);

            if ($result->num_rows > 0) { //while there are rows with null in landlordl_id
                //iterate through each row with NULL values
                while ($row = $result->fetch_assoc()) { //while result->fetch != null, !(var = null), loop goes on
                    $randomValue = rand(1, 30); //genearte rando num
                    $id = $row['apartment_id']; //id col
                    
                    //update row with random num
                    $sqlUpdate = "UPDATE apartments SET landlord_id = $randomValue WHERE apartment_id = $id";
                    
                    if ($conn->query($sqlUpdate) === TRUE) {
                        echo "Updated record with ID $id to value $randomValue<br>";
                    } else {
                        echo "Error updating record: " . $conn->error . "<br>";
                    }
                }
            } else {
                echo "No records with NULL values found.";
            }

            // Close the connection
            $conn->close();
        */
        ?>

    </body>
</html>