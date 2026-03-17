<?php

$db_server = "localhost";
$db_user = "root";
$db_pass = "";
$db_name = "new_pokemon_db";
$connection = "";

$connection = mysqli_connect($db_server, $db_user, $db_pass, $db_name);

return $connection;


// <------------------------------------------------------------------>


/*
if($connection){
    echo "You are connected! <br>";
}
else{
    echo "Could not connect! <br>";
}
*/

