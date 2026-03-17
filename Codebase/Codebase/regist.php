<?php
include("database.php");
?>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
    </head>
    <body>
    <form action="<?php htmlspecialchars($_SERVER["PHP_SELF"]) ?>" method="post">
        <h2>Pokémon to Base Set 1999 Archive and Collection</h2>
        First Name: <br>
        <input type="text" name="first_name"><br>
        Last Name: <br>
        <input type="text" name="last_name"><br>
        email: <br>
        <input type="email" name="email"><br>
        Birthday: <br>
        <input type="date" name="birthday"><br>
        Username: <br>
        <input type="text" name="username"><br>
        Password: <br>
        <input type="password" name="password"><br>
        <input type="submit" name="submit" value="Register"><br>
    </form>
    </body>
    </html>
<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {

    $first_name = filter_input(INPUT_POST, "first_name", FILTER_SANITIZE_SPECIAL_CHARS);
    $last_name = filter_input(INPUT_POST, "last_name", FILTER_SANITIZE_SPECIAL_CHARS);
    $email = filter_input(INPUT_POST, "email", FILTER_SANITIZE_SPECIAL_CHARS);
    $birthday = filter_input(INPUT_POST, "birthday", FILTER_SANITIZE_SPECIAL_CHARS);
    $username = filter_input(INPUT_POST, "username", FILTER_SANITIZE_SPECIAL_CHARS);
    $password = filter_input(INPUT_POST, "password", FILTER_SANITIZE_SPECIAL_CHARS);


    if (empty($first_name)) {
        echo "Please enter a First Name.";
    } elseif (empty($last_name)) {
        echo "Please enter a Last Name.";
    } elseif (empty($email)) {
        echo "Please enter a email.";
    } elseif (empty($birthday)) {
        echo "Please enter a Birthday.";
    } elseif (empty($username)) {
        echo "Please enter a Username.";
    } elseif (empty($password)) {
        echo "Please enter a Password.";
    } else {
        $hash = password_hash($password, PASSWORD_DEFAULT);
        $sql = "INSERT INTO users (first_name, last_name, email, birthday, username, pw)
                    VALUES ('$first_name', '$last_name', '$email', '$birthday', '$username', '$hash')";

        mysqli_query($connection, $sql);
        echo "You successfully registered your profile!";
    }
}
mysqli_close($connection);

?>