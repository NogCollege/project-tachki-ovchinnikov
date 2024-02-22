<?php
require_once "(controllers/head.php)";
require_once "(templates/container.php)";
?>

<div class="slideshow-container slider-container">
    <div class="swiper-wrapper slider">
        <img class="slide block" src="templates/img/cars/1-BMW/main.jpg" alt="">
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
require_once ("javascript.php");
?>