<?php
$con = include("database.php");
session_start();


if (!isset($_SESSION['user_id']) || empty($_SESSION['user_id'])) {
    header("Location: login.php");
    exit();
}
$user_id = $_SESSION['user_id'];

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile Page</title>
    <link href="style_home.css" rel="stylesheet"/>
</head>
<body>
<section class="flexboxh1">
    <div class="boxed">
        <form action="profile.php" method="post">
        </form>
</section>
<header id="Seitenanfang">
    <a href="home.php"><img src="Assets/pokemon-trading-card-game-seeklogo.png" class="logo" alt="Pokémon Logo"></a>
    <nav class="navigation">
        <ul>
            <li><a href="home.php">Home</a></li>
            <li><a href="collection.php">Collection</a></li>
            <li><a href="profile.php">Profile</a></li>
            <li>
                <div class="dropdown"><a href="">Other Sets</a>
                    <div class="dropdown-content">
                        <a href="base.php">Baseset 1999</a>
                        <a href="jungle.php">Jungle 1999</a>
                        <a href="fossil.php">Fossil 1999</a>
                    </div>
                </div>
            </li>
        </ul>
    </nav>
</header>
<div id="black-block"></div>
<main class="wrapper_profile clearfix">
    <div class="container_profile">

        <?php
        $sql = "SELECT * FROM users WHERE user_ID = $user_id";
        $result = mysqli_query($con, $sql);

        if (mysqli_num_rows($result) > 0) {
            $row = mysqli_fetch_assoc($result);

            if (isset($_POST['username_edit'])) {
                $newUsername = $_POST['username'];
                $sql = "UPDATE users SET username = '$newUsername' WHERE user_ID = $user_id";
                mysqli_query($con, $sql);
            }
            if (isset($_POST['email_edit'])) {
                $newemail = $_POST['email'];
                $sql = "UPDATE users SET email = '$newemail' WHERE user_ID = $user_id";
                mysqli_query($con, $sql);
            }
            if (isset($_POST['fname_edit'])) {
                $newfirstname = $_POST['first_name'];
                $sql = "UPDATE users SET first_name = '$newfirstname' WHERE user_ID = $user_id";
                mysqli_query($con, $sql);
            }
            if (isset($_POST['lname_edit'])) {
                $newlastname = $_POST['last_name'];
                $sql = "UPDATE users SET last_name = '$newlastname' WHERE user_ID = $user_id";
                mysqli_query($con, $sql);
            }
            if (isset($_POST['bday_edit'])) {
                $newbirthday = $_POST['birthday'];
                $sql = "UPDATE users SET birthday = '$newbirthday' WHERE user_ID = $user_id";
                mysqli_query($con, $sql);
            }

            $profile_card_id = $row['profile_card_id'];

            $img_sql = "SELECT card_photo FROM cards WHERE ID = $profile_card_id";
            $img_result = mysqli_query($con, $img_sql);
            $img_row = mysqli_fetch_assoc($img_result);

            $profile_image = $img_row ? $img_row['card_photo'] : null;

        ?>
            <h2>Profile Information</h2><br/>
            <div class="profile-forms">
                <form action="" method="POST">
                    <label for="username" class="profile_info">Username: </label><br/>
                    <input id="username" name="username" type="text" class="profile_input" value="<?php echo $row["username"] ?>">
                    <input type="submit" name="username_edit" value="Edit" class="edit_button">
                </form>
                <form action="" method="POST">
                    <label for="email" class="profile_info">email: </label><br/>
                    <input id="email" name="email" type="email" class="profile_input" value="<?php echo $row["email"] ?>">
                    <input type="submit" name="email_edit" value="Edit" class="edit_button">
                </form>
                <form action="" method="POST">
                    <label for="name" class="profile_info">Name: </label><br/>
                    <input id="first_name" name="first_name" type="text" class="profile_input" value="<?php echo $row["first_name"] ?>">
                    <input type="submit" name="fname_edit" value="Edit" class="edit_button">
                </form>
                <form action="" method="POST">
                    <label for="last_name" class="profile_info">Last Name: </label><br/>
                    <input id="last_name" name="last_name" type="text" class="profile_input" value="<?php echo $row["last_name"] ?>">
                    <input type="submit" name="lname_edit" value="Edit" class="edit_button">
                </form>
                <form action="" method="POST">
                    <label for="birthday" class="profile_info">Birthday: </label><br/>
                    <input id="birthday" name="birthday" type="date" class="profile_input" value="<?php echo $row["birthday"] ?>">
                    <input type="submit" name="bday_edit" value="Edit" class="edit_button">
                </form>
            </div>
            <div class="color-block" style="background-image: url('<?php echo $profile_image ?? "Assets/default-profile.jpg" ?>');"></div>
        <?php
        }
        mysqli_close($con);
        ?>
    </div>

</main>
<footer><a href="login.php" class="logout">logout</a></footer>
</body>
</html>
