<?php
$con = include("database.php");
session_start();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page</title>
    <link href="style_home.css" rel="stylesheet"/>
</head>
<body>
<section class="flexboxh1">
    <div class="boxed">
        <form action="home.php" method="post">
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
        <h2 class="text-shadow">
            Welcome to the Pokémon TCG Archive <br> from 1999
        </h2>
    </div>
</div>
<main class="wrapper clearfix">
    <div class="container_home">
        <h1 class="subheadline">From the most popular Franchise in History</h1><br/><br/>
        <h3 class="subheadline_h3">The first Booster Sets which started the TCG sensation in 1999</h3><br/><br/>
        <p class="blocktext">The first set of the Pokémon Trading Card Game, known as the Base Set, was released in the United States in January 1999,
            marking the beginning of what would become a global phenomenon. Featuring iconic cards like Charizard, Blastoise, and
            Venusaur, the Base Set introduced 102 original cards and brought the world of Pokémon from video games and TV screens
            into the hands of collectors and players. With its simple mechanics and instantly recognizable artwork, the set ignited
            a trading card craze that captivated millions of fans and laid the foundation for the Pokémon TCG to become one of the
            most enduring and popular hobbies in the world.</p>

        <p class="blocktext">The first set of the Pokémon Trading Card Game, known as the Base Set, was released in the United States in January 1999,
            marking the beginning of what would become a global phenomenon. Featuring iconic cards like Charizard, Blastoise, and Venusaur, the Base Set
            introduced 102 original cards and brought the world of Pokémon from video games and TV screens into the hands of collectors and players.
            With its simple mechanics and instantly recognizable artwork, the set ignited a trading card craze that captivated millions of fans and laid
            the foundation for the Pokémon TCG to become one of the most enduring and popular hobbies in the world.</p>

        <p class="blocktext">What set the Base Set apart was not only its connection to the already booming Pokémon franchise but also the unique way it
            encouraged social interaction and strategic thinking. Kids traded cards during recess, battled friends after school, and carefully organized
            their collections in binders and boxes. Rarity tiers like holographic cards and the elusive "shadowless" prints added layers of excitement,
            and suddenly, a cardboard Charizard became a status symbol in playgrounds across the globe. The cultural impact of the Base Set quickly
            extended beyond the cards themselves, influencing everything from school policies to media coverage.</p>

        <p class="blocktext">Shortly after the success of the Base Set, the Pokémon TCG released its first two expansion sets: Jungle in June 1999 and
            Fossil in October 1999. Jungle introduced popular Pokémon like Scyther, Wigglytuff, and Snorlax, while Fossil brought fan-favorites such as
            Gengar, Articuno, and Lapras into the game. These expansions added new strategic depth, increased the total card pool, and kept the collecting
            momentum going strong. Each new set built upon the original game's appeal, deepening the connection fans had with their favorite Pokémon and
            solidifying the TCG as more than just a passing fad—it had become a lasting part of pop culture.</p>
    </div>
</main>
<footer><a href="login.php" class="logout">logout</a></footer>
</body>


</html>
