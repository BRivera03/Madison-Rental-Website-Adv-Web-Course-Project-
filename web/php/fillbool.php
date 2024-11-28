<!DOCTYPE html>
<html>
    <head>
        <title>Fill Null Booleans</title>
    </head>
    <body>
        <?php
        /*
            // Database connection
            $servername = "localhost";
            $username = "root";
            $password = "";
            $dbname = "listings";
        
            $conn = new mysqli($servername, $username, $password, $dbname);
        
            // Check connection
            if ($conn->connect_error) {
                die("Connection failed: " . $conn->connect_error);
            }
            
            //select null values
            $sqlSelect = "SELECT apartment_id FROM apartments WHERE COLUMNNAME IS NULL";
            $result = $conn->query($sqlSelect);
        
            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) { //while result->fetch != null
                    $randomValue = rand(0, 1); //generate random val representing tru/fal
                    $id = $row['apartment_id'];
                    
                    // Update row with random boolean value
                    $sqlUpdate = "UPDATE apartments SET COLUMNNAME = $randomValue WHERE apartment_id = $id"; // Change BOOLEAN_COLUMN to your actual column name
                    
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