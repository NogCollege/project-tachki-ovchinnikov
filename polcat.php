<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
  <?php  require_once "(controllers/head.php)";
require_once "(templates/container.php)";
require_once "(controllers/connect.php";
?>

<div class="slideshow-container slider-container">
    <div class="slider">
        <img class="slide" src="templates/img/cars/1-BMW/main.jpg" alt="">
        <img class="slide" src="templates/img/cars/1-BMW/zadi.jpg" alt="">
        <img class="slide" src="templates/img/cars/1-BMW/sprava.jpg" alt="">
        <img class="slide" src="templates/img/cars/1-BMW/salon.jpg" alt="">
        
    </div>
    <a onclick="plusSlides(-1)" class="prev-button">&#10094</a>
    <a onclick="plusSlides(1)" class="next-button">&#10095</a>
</div>

<?
require_once ('controllers/create_folders.php');
require_once ("templates/last-block.php");

?>
<script src="script.js"></script>
</body>
</html>
