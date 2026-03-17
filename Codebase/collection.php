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
    <title>Collection Page</title>
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
    <div class="container_collection">



        <h2>Create new Collection</h2>
        <br><br>
        <form method="POST">
            <label for="collection_name" class="collection_name">Collection Name: </label><br/>
            <input id="collection_name" type="text" name="collection_name" class="collection_input" required><br/><br/>
            <button type="submit" class="create_button">Publish</button><br/>
        </form>

        <?php

        if ($_SERVER["REQUEST_METHOD"] == "POST") {

            $collection_name = $_POST['collection_name'];
            $sql = "INSERT INTO collection (collection_name, user_id) 
                    VALUES (?,?)";
            $stmt = $con -> prepare($sql);
            $stmt -> bind_param("si", $collection_name, $user_id);
            if ($stmt -> execute()) {
                echo "Collection '$collection_name' was successfully added to your account.";
            }
            else {
                echo "Something went wrong: ". $con -> error;
            }
        }
        ?>
        <?php $query = "SELECT * FROM collection WHERE user_id = $user_id";
            $result = mysqli_query($con, $query)
        ?>
        <section>
            <ul class="subheadline_collection"> Your Collections:
                <br>
                <br>
                <?php while($row = mysqli_fetch_assoc($result)){
                ?>
<!--                <li class = "collection_list"><a href=""><?php echo $row["collection_name"] ?></a></li><br/>    -->
                <li class="collection_list">
                    <a href="collection_subdomain.php?collection_id=<?php echo $row['ID']; ?>">
                        <?php echo $row["collection_name"]; ?>
                    </a>
                </li><br/>
                <?php
                }
                ?>
            </ul>
        </section>
    </div>
</main>
<footer><a href="login.php" class="logout">logout</a></footer>
</body>
</html>
