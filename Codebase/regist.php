<?php
$con = include("database.php");
?>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Register Page</title>
        <link href="style_regist.css" rel="stylesheet"/>
    </head>
    <body>
    <div class="background"></div>
    <div class="regist_box">
        <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]) ?>" method="post">
            <h1>Pokémon to Base Set 1999 Archive and Collection</h1>
            <p>Please sign up with your personal information</p>
            <span class="regist_info">First Name:</span><br>
            <input type="text" name="first_name" class="regist_input"><br><br>
            <span class="regist_info">Last Name:</span><br>
            <input type="text" name="last_name" class="regist_input"><br><br>
            <span class="regist_info">email:</span><br>
            <input type="email" name="email" class="regist_input"><br><br>
            <span class="regist_info">Birthday:</span><br>
            <input type="date" name="birthday" class="regist_input"><br><br>
            <span class="regist_info">Username:</span><br>
            <input type="text" name="username" class="regist_input"><br><br>
            <span class="regist_info">Password:</span><br>
            <input type="password" name="password" class="regist_input"><br><br>
            <input type="submit" name="submit" value="Register" class="regist_input"><br>
        </form>
    </div>
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
        $hash = password_hash($password, PASSWORD_BCRYPT);
        $sql = "INSERT INTO `users` (`first_name`, `last_name`, `email`, `birthday`,`username` ,`pw`)
                    VALUES ('$first_name', '$last_name', '$email', '$birthday', '$username', '$hash')";
        $result = mysqli_query($con, $sql);
        mysqli_close($con);
        header("Location: login.php");
//        echo "You successfully registered your profile!";
    }
}
?>