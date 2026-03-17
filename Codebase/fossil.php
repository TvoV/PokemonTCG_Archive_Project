<?php
$con = include("database.php");
session_start();


if (!isset($_SESSION['user_id']) || empty($_SESSION['user_id'])) {
    header("Location: login.php");
    exit();
}

$user_id = $_SESSION['user_id'];

// Handle add to collection logic
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['add_collection'])) {
    $card_id = $_POST['card_id'];
    $collection_id = $_POST['collection_id'];

    if ($card_id && $collection_id) {
        // Prevent duplicate entries
        $check_sql = "SELECT * FROM collectionxcard WHERE card_id = ? AND collection_id = ?";
        $stmt = mysqli_prepare($con, $check_sql);
        mysqli_stmt_bind_param($stmt, "ii", $card_id, $collection_id);
        mysqli_stmt_execute($stmt);
        $result = mysqli_stmt_get_result($stmt);

        if (mysqli_num_rows($result) === 0) {
            // Insert into collection_cards
            $insert_sql = "INSERT INTO collectionxcard (card_id, collection_id) VALUES (?, ?)";
            $stmt = mysqli_prepare($con, $insert_sql);
            mysqli_stmt_bind_param($stmt, "ii", $card_id, $collection_id);
            mysqli_stmt_execute($stmt);
        }
    }
}

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['add_profilepic'])) {
    $card_id = $_POST['card_id'];

    // Update the user's profile card
    $update_sql = "UPDATE users SET profile_card_id = ? WHERE user_ID = ?";
    $stmt = mysqli_prepare($con, $update_sql);
    mysqli_stmt_bind_param($stmt, "ii", $card_id, $user_id);
    mysqli_stmt_execute($stmt);
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fossil Set Page</title>
    <link href="style_home.css" rel="stylesheet"/>
</head>
<body>
<section class="flexboxh1">
    <div class="boxed">
        <form action="fossil.php" method="post">
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
<div class="hero-image_fossil">
    <div class="subheadline">
        <h2 class="text-shadow">
            Carve out ancient relics <br> with the second expansion Set from 1999
        </h2>
    </div>
</div>
<main class="wrapper clearfix">
    <div class="container">

        <?php
        $sql = "SELECT c.ID as card_id, c.name, c.card_number, c.card_photo, r.Bezeichnung as rarity, t.Bezeichnung as type, e.Bezeichnung as element, c.hp_value, e.icon as icon 
            FROM cards c 
            INNER JOIN types t on c.type_id = t.ID 
            INNER JOIN elements e on c.element_id = e.ID 
            INNER JOIN `set` s on c.set_id = s.ID 
            INNER JOIN rarity r on c.rarity_id = r.ID
            WHERE c.set_id = 4";

        $collections_sql = "SELECT ID, collection_name FROM collection WHERE user_id = $user_id";

        $collections_result = mysqli_query($con, $collections_sql);

        $result = mysqli_query($con, $sql);

        $options = "";
        while ($collection = mysqli_fetch_assoc($collections_result)) {
            $options .= "<option value='" . htmlspecialchars($collection['ID']) . "'>" . htmlspecialchars($collection['collection_name']) . "</option>";
        }

        if (mysqli_num_rows($result) > 0) {
            while ($row = mysqli_fetch_assoc($result)) {
                $img_location = $row["card_photo"];
                ?>
                <div class="card-container">
                    <div class="card-img" style="background-image: url('<?php echo $img_location ?>')">
                        <input type='checkbox' class='checkbox' id='checkbox'>
                    </div>
                    <div class="card-text">
                        <span>Number: <?php echo $row["card_number"] ?> of 102</span><br/>
                        <span>Name: <?php echo $row["name"] ?></span><br/>
                        <span>Rarity: <?php echo $row["rarity"] ?></span><br/>
                        <span>Card Type: <?php echo $row["type"] ?></span><br/>
                        <span>Element: <?php echo $row["element"] ?></span><img class="icon" src="<?= $row["icon"] ?>" alt="icon" /><br/>
                        <span>HP Value: <?php echo $row["hp_value"] ?></span><br/>
                        <form action="" method="POST" class="buttons">
                            <input type="hidden" name="card_id" value="<?php echo $row["card_id"] ?>">
                            <input type="submit" name="add_collection" value="Add" class="add_button">
                            <select id="collection_id" name="collection_id" class="collection_select">
                                <option value="">Select Collection</option>
                                <?php echo $options ?>
                            </select>
                        </form>
                        <form action="" method="POST">
                            <input type="hidden" name="card_id" value="<?= $row["card_id"] ?>">
                            <input type="submit" name="add_profilepic" value="Profile" class="profile_button">
                        </form>
                    </div>
                </div>
                <?php
            }
        }
        mysqli_close($con);
        ?>
    </div>
</main>
<footer><a href="login.php" class="logout">logout</a></footer>
</body>


</html>

