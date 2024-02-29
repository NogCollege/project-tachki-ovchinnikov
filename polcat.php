
<?php  require_once ("controllers/head.php");?>

  <div>
  <?php 
        require_once ("controllers/connect.php");
        
        $query = "SELECT * FROM Catalog WHERE id=".$_GET['id'];
        $result = mysqli_query($link, $query) or die(mysqli_error($link));
        $data = mysqli_fetch_assoc($result);
        $dir = 'templates/img/photots/' . $data['id'] . '-' . $data['nazvanie']; 
        $files = scandir($dir); 
        ?> 
        <header class="container">
            <header class="header-row">
            <h2 class="logo-menu">АРЕНДАТАЧЕК.РФ</h2> 
                <nav class="header-text">
                    <ul>
                        <li><a href="#">Подобрать авто</a></li>
                        <li><a href="#">Условия</a></li>
                        <li><a href="#">Цены</a></li>
                        <li><a href="#">О нас</a></li>
                        <li><a href="#">Контакты</a></li>
                    </ul>
                </nav>
                <img class="img-soc" src="./templates/img/soc.png" alt="">
                <header class="header-tel"><h2>+7 (499) 110-20-47</h2>
                    <a class="bth" href="#">Заказать звонок</a>
                </header>
                <img class="img-2" src="./templates/img/Group 72.png" alt=""></header>
           </header>
        <section class= "slidinf">
        <div class="slider-container">
                <h1 class="page"><?=$data['fullname']?> <?=$data['gorod']?></h1>
                <div class="slider">
                <?
                    foreach ($files as $file) {
                        $file_path = $dir . '/' . $file;

                        if (is_file($file_path) && in_array(pathinfo($file_path,
                        PATHINFO_EXTENSION), ['jpg', 'jpeg', 'png', 'gif'])) {
                            echo '<img src="' . $file_path . '" ;>';
                        }
                    
                    }
                    ?>
                </div>
                <button class="prev-button" aria-label="Посмотреть предыдущий слайд">&lt;</button>
                <button class="next-button" aria-label="Посмотреть следующий слайд">&gt;</button>
        </div>
        <div class= "car-info">
            <p class= "stoinf"><?=$data['max']?>₽</p>
            <div class="stoim">
                <h1>Стоимость аренды</h1>
                <p class="stoimost">Максимальная цена аренды: <span><?=$data['max']?></span></p>
                <p class="stoimost">Средняя цена аренды: <span><?=$data['average']?></span> </p>
                <p class="stoimost">Минимальная цена аренды: <span><?=$data['min']?></span> </p>
                <div class="inf-car">
                    <p><?=$data['gorod'] ?></p>
                    <p><img src="templates/img/Vector (17).png" alt=""><?=$data['volume'] ?></p>
                    <p><img src="templates/img/Vector (18).png" alt=""><?=$data['Horsepower'] ?></p>
                    <p><img class="benz" src="templates/img/Vector (17).png" alt=""><?=$data['dvigatel'] ?></p>
                </div>
                <a href="index.php"> <button class="arend">Арендовать</button></a>
            </div>
            <p class="opisanie"><?=$data['opisanie']?></p>
        </div>
    </section>
  </div>

<script src="script.js"></script>
<div class="last-block">
                        <div class="content-text">
                           <h2 class="logo12">АРЕНДАТАЧЕК.РФ</h2>
                           <strong class="tel5">+7 (499) 110-20-47</strong>
                           <p class="text12">Рабочие часы: с 10:00 до 20:00</p>
                           <div class="bth10">
                           <a  href="#">Заказать звонок</a></div>
                           </div>
                           </div>
                            <p class="text-y">г. Ногинск, ул. Ремесленная, д. 1178А</p>
                            <img class="img-m" src="./templates/img/Vector.png" alt="">
                            <p class="text-y2">info@арендатачек.рф</p>
                            <img class="img-m2" src="./templates/img/Vector (1).png" alt="">
                            <div class="img-soc3">
                            <img src="./img/soc.png" alt=""></div>
                            <img class="img-cursor" src="./templates/img/cursor.png" alt="">
                            <div class="grid-b">
                                <div class="logo-grid">
                                    <h2 class="logo13">Клиентам</h2>
                                    <h2 class="logo13">Автопарк</h2>
                                    <h2 class="logo13">Мероприятие</h2>
                                </div>
                                <div class="info-grid">
                                    <p class="info14">О нас</p>
                                    <p class="info14">Внедорожники</p>
                                    <p class="info14">На свадьбу</p>
                                </div>
                                <div class="info-grid2">
                                    <p class="info14">Условия</p>
                                    <p class="info14">СпортКар</p>
                                    <p class="info14">На фотосессию</p>
                                </div>
                                <div class="info-grid3">
                                    <p class="info14"><strong class="info15">Отзывы</strong></p>
                                    <p class="info14">Бизнес</p>
                                    <p class="info14">На видеосъемку</p>
                                </div>
                                <div class="info-grid4">
                                    <p class="info14">Статьи</p>
                                    <p class="info14">Премиум</p>
                                    <p class="info14">На день рождения</p>
                                </div>
                                <div class="info-grid5">
                                    <p class="info14">Контакты</p>
                                    <p class="info14">Комфорт</p>
                                    </div>
                            </div>
                            <hr class="hr3">

