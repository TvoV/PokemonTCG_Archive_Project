<?php
$con = include("database.php");
session_start();

if (!isset($_SESSION['user_id']) || empty($_SESSION['user_id'])) {
    header("Location: login.php");
    exit();
}

$user_id = $_SESSION['user_id'];

$collection_id = $_GET['collection_id'];

if (!isset($_GET['collection_id'])) {
    echo "Collection ID fehlt.";
    exit();
}

// Load cards from this collection
$sql = "SELECT c.ID as card_id, c.name, c.card_number, c.card_photo, 
           c.set_id, r.Bezeichnung as rarity, t.Bezeichnung as type, 
           e.Bezeichnung as element, c.hp_value, e.icon as icon 
        FROM cards c 
        INNER JOIN types t ON c.type_id = t.ID 
        INNER JOIN elements e ON c.element_id = e.ID 
        INNER JOIN `set` s ON c.set_id = s.ID 
        INNER JOIN rarity r ON c.rarity_id = r.ID
        INNER JOIN collectionxcard cc ON cc.card_id = c.ID
        WHERE cc.collection_id = ?";

$stmt = $con->prepare($sql);
$stmt->bind_param("i", $collection_id);
$stmt->execute();
$cards_result = $stmt->get_result();

// Verify that the collection belongs to the logged-in user
$verify_sql = "SELECT * FROM collection WHERE ID = ? AND user_id = ?";
$stmt = $con->prepare($verify_sql);
$stmt->bind_param("ii", $collection_id, $user_id);
$stmt->execute();
$verify_result = $stmt->get_result();

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Your Collections Page</title>
    <link href="style_home.css" rel="stylesheet"/>
</head>
<body>
<section class="flexboxh1">
    <div class="boxed">
        <form action="collection_subdomain.php" method="post">
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
<div class="hero-image_home">
    <div class="subheadline">
        <h2 class="text-shadow">Cards in Your Collection</h2>
    </div>
</div>

<main class="wrapper clearfix">
    <div class="container">
        <?php
        if ($cards_result->num_rows > 0) {
            while ($row = $cards_result->fetch_assoc()) {
                ?>
                <div class="card-container">
                    <div class="card-img" style="background-image: url('<?php echo htmlspecialchars($row["card_photo"]); ?>')">
                        <input type='checkbox' class='checkbox' id='checkbox'>
                    </div>
                    <div class="card-text">
                        <span>Name: <?php echo $row["name"] ?></span><br/>
                        <span>Rarity: <?php echo $row["rarity"] ?></span><br/>
                        <span>Card Type: <?php echo $row["type"] ?></span><br/>
                        <span>Element: <?php echo $row["element"] ?></span><img class="icon" src="<?= $row["icon"] ?>" alt="icon" /><br/>
                        <span>HP Value: <?php echo $row["hp_value"] ?></span><br/>
                        <form action="" method="POST">
                            <input type="hidden" name="card_id" value="<?= $row["card_id"] ?>">
                            <input type="submit" name="add_profilepic" value="Profile" class="profile_button_collection">
                        </form>
                    </div>
                </div>
                <?php
            }
        } else {
            echo "<p>No cards found in this collection.</p>";
        }
        ?>
    </div>
</main>

<footer>
    <a href="login.php" class="logout">logout</a>
</footer>

</body>
</html>