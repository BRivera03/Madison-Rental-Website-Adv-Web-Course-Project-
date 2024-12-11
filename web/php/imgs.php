<!DOCTYPE html>
<html>
    <head>
        <title>New Photos</title>
    </head>
    <body>
    <?php
    /*
        // Database connection
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

        // Unsplash API access key
        $access_key = "_i9wLgypPS_ofzSTdoROfPwDKNj75M1C7QyTdxI16Tg";

        // Number of images required
        $total_images_needed = 406;

        // Image URLs array
        $image_urls = [];

        // Loop through pages to fetch 406 images (30 images per page max)
        $page = 1;
        while (count($image_urls) < $total_images_needed) {
            // Unsplash API URL for apartment images (adjust page number dynamically)
            $url = "https://api.unsplash.com/search/photos?query=apartment&page=$page&per_page=30&client_id=$access_key";

            // Initialize cURL session
            $ch = curl_init();
            curl_setopt($ch, CURLOPT_URL, $url);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
            curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);

            // Execute the cURL request
            $response = curl_exec($ch);

            // Check if the cURL request was successful
            if (curl_errno($ch)) {
                echo 'Error: ' . curl_error($ch);
                break;
            } else {
                // Decode the JSON response into a PHP array
                $images = json_decode($response, true);
                if (isset($images['results']) && is_array($images['results'])) {
                    // Loop through the images and add URLs to the array
                    foreach ($images['results'] as $image) {
                        if (isset($image['urls']['regular'])) {
                            $image_urls[] = $image['urls']['regular'];
                        }
                    }
                }
            }

            // Close the cURL session
            curl_close($ch);

            // Move to the next page
            $page++;
        }

        // Now $image_urls contains the URLs of 406 images
        echo "Fetched " . count($image_urls) . " images.\n";

        // Step 2: Update the 'imgURL' column in the apartments table

        // Loop through the image URLs and update them in the apartments table
        $image_index = 0;
        $query = "SELECT apartment_id FROM apartments"; // Fetch all apartment IDs (assuming 'id' is the primary key)

        $result = $conn->query($query);
        if ($result->num_rows > 0) {
            // Loop through the apartments and update the imgURL field
            while ($row = $result->fetch_assoc()) {
                // Get the current apartment ID
                $apartment_id = $row['apartment_id'];

                // Prepare the SQL UPDATE query
                $update_query = "UPDATE apartments SET imgURL = ? WHERE apartment_id = ?";

                // Prepare the statement
                if ($stmt = $conn->prepare($update_query)) {
                    // Bind the parameters (image URL and apartment ID)
                    $stmt->bind_param("si", $image_urls[$image_index], $apartment_id);

                    // Execute the statement
                    $stmt->execute();

                    // Move to the next image URL
                    $image_index++;

                    // Check if we've updated 406 apartments
                    if ($image_index >= $total_images_needed) {
                        break;
                    }
                } else {
                    echo "Error: " . $conn->error;
                    break;
                }
            }
        } else {
            echo "No apartments found to update.";
        }

        // Close the database connection
        $conn->close();
    ?>
    */
    </body>
</html>