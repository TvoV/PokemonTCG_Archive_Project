<?php
$con = include("database.php");
session_start();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <link href="style_regist.css" rel="stylesheet"/>
</head>
<body>
<div class="background"></div>
<div class="login_box">
    <form action="" method="post">
        <h1>Pokémon TCG Sets 1999 Archive and Collection</h1>
        <p>Log in with your account information</p>
        <span class="login_info">Username:</span><br>
        <input type="text" name="username" class="login_input"/><br><br>
        <span class="login_info">Password:</span><br>
        <input type="password" name="password" class="login_input"><br><br>
        <input type="submit" name="login" value="login" class="regist_input">
    </form>
        <p>
            New here? <a href="regist.php" class="login_red">Create a profile!</a>
        </p>
    </div>
</body>
</html>

<?php
// $pwHash = password_hash("12345678", PASSWORD_BCRYPT);
if ($_SERVER["REQUEST_METHOD"] == "POST") {


    $username = $_POST["username"];
    $password = $_POST["password"];
    $query = "SELECT * FROM users WHERE username = '$username'";
    $result = mysqli_query($con, $query);
    var_dump($result);
    var_dump($_POST);

    if (mysqli_num_rows($result) == 0) {
        header("Location: regist.php");
        exit();
    }

    $row = mysqli_fetch_assoc($result);
    var_dump($row);
    if (password_verify($password, $row["pw"])) {
        $_SESSION["user_id"] = $row["user_ID"];
        $user = $_SESSION["user_id"];
        header("Location: home.php");
    } else {
        echo "Wrong username/password <br>";
    }

    //mysqli_close($con);
}
?>
