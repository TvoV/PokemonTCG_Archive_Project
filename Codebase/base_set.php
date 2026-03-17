<?php

include("database.php");

$sql = "SELECT * FROM cardinfo";
$result = mysqli_query($connection, $sql);

if (mysqli_num_rows($result) > 0) {
    while ($row = mysqli_fetch_assoc($result)) {
        $img_location = $row["card_photo"];
        echo "<img src='$img_location'  alt='card_image'/><br>";
        echo "<br>";
        echo $row["card_number"] . "<br>";
        echo $row["name"] . "<br>";
        echo $row["rarity"] . "<br>";
        echo $row["type"] . "<br>";
        echo $row["element"] . "<br>";
        echo $row["hp_value"] . "<br>";

        echo "<br>";
    }
}

mysqli_close($connection);
?>