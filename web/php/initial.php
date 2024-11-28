<!DOCTYPE html>
<html>
    <head>
        <title>API Calling</title>
    </head>
    <body>
        <?php
            /*
            $curl = curl_init();
            
            curl_setopt_array($curl, [
                CURLOPT_URL => "https://zillow56.p.rapidapi.com/search?location=madison%2C%20wi&page=14&output=json&status=forRent&isApartment=true&doz=any",
                CURLOPT_RETURNTRANSFER => true,
                CURLOPT_ENCODING => "",
                CURLOPT_MAXREDIRS => 10,
                CURLOPT_TIMEOUT => 30,
                CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                CURLOPT_CUSTOMREQUEST => "GET",
                CURLOPT_HTTPHEADER => [
                    "x-rapidapi-host: zillow56.p.rapidapi.com",
                    "x-rapidapi-key: 3f5c3588edmshe375ced390e9c8cp1931d3jsnef6cef0e55c9"
                ],
            ]);
            
            $response = curl_exec($curl);
            $err = curl_error($curl);
            
            curl_close($curl);
            
            if ($err) {
                echo "cURL Error #:" . $err;
            } else {
                echo $response;
            }
            
            $jsondata = $response;

            // Decode the JSON data
            $data = json_decode($jsondata, true);

            //connect to the db
            $servername = "localhost";
            $username = "root";
            $password = "";
            $dbname = "listings";

            // Create connection
            $conn = new mysqli($servername, $username, $password, $dbname);
            // Check connection
            if ($conn->connect_error) {
                die("Connection failed: " . $conn->connect_error);
            }

            // Iterate through each listing and insert into the database
            foreach ($data['results'] as $result) {
                // Prepare the SQL query string
                $sql = "INSERT INTO APARTMENTS (bathrooms, bedrooms, imgURL, price, streetAddress, zipcode) 
                        VALUES (
                            '{$result['bathrooms']}', 
                            '{$result['bedrooms']}', 
                            '{$result['imgSrc']}', 
                            '{$result['price']}', 
                            '{$result['streetAddress']}', 
                            '{$result['zipcode']}'
                        )";
                
                // Execute the query
                if ($conn->query($sql) === TRUE) {
                    echo "New record created successfully<br>";
                } else {
                    echo "Error: " . $sql . "<br>" . $conn->error . "<br>";
                }
            }

            // Close the database connection
            $conn->close();
            */
        ?>
    </body>
</html>