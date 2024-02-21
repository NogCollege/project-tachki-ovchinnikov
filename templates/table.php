<div class="logo-avto"><h2>Наш автопарк</h2>
        <div class="bth-s">
            <a href="#">Смотреть все</a></div>
        </div>
<div class="table">
        <div class="grid-car">
            <img class="vector-car1" src="" alt="">
            <a class="bth-a1" href=""><p class="text-car" >Внедорожники</p></a>
            <img class="vector-car2" src="./templates/img/Vector (7).png" alt="">
            <a class="bth-a2" href=""><p class="text-car" >Бизнес</p></a>
            <img class="vector-car3" src="./templates/img/Vector (8).png" alt="">
            <a class="bth-a3" href=""><p class="text-car" >Спорткар</p></a>
            <img class="img-cursor2" src="./templates/img/cursor.png" alt="">
            <img class="vector-car4" src="./templates/img/Group 47.png" alt="">
            <a class="bth-a4" href=""><p class="text-car" >Премиум</p></a>
            <img class="vector-car5" src="./templates/img/Vector (9).png" alt="">
            <a class="bth-a5" href=""><p class="text-car" >Комфорт</p></a>
            </div>
          </div>
          <?php 
                    require_once ("controllers/connect.php");
                
                    $query = "SELECT * FROM catalog";
        
                    $result = mysqli_query($link, $query) or die(mysqli_error($link));
        
                    for ($data = []; $row = mysqli_fetch_assoc($result); $data[] = $row);

                    echo '<div class = "content4">';
                  
                    foreach ($data as $elem){
                      $folderName = $elem['id'] . "-" . preg_replace("/[^A-Za-z0-9]/", "", $elem['nazvanie']);
                      $folderPath = "./templates/img/photots/" . $folderName;

                        $result = '';
                        $result .= '
                        <div class="grid1 ' . $elem['categoria'] .'">
                        <div class="">
                        <img src="'.$folderPath.'/main.jpg" alt="">
                        </div>';
                        $result .= ' <h4>'. $elem['fullname'] . ', '. $elem['gorod'] . '</h4>';
                        $result .= '<div class="">
                            <p> <img src="templates/img/Vector (17).png" alt="">'. $elem['volume'] . ',' . $elem['Engine Type'] . '</p>
                            <p class="center1"> <img src="templates/img/Vector (18).png" alt="">'. $elem['Horsepower'] .'</p>
                        </div>';
                        $result .= '<hr class="h2" >';
                        $result .= '<div class="">
                            <button class="bth-car1">Забронировать</button><p>от <span class="arenda-car1">'.$elem['Cost-average'].'</span>руб/сут.</p>
                        </div>
                        </div>';
                        
        
                        echo $result;
                    }
                    echo '</div>';
        
                ?>