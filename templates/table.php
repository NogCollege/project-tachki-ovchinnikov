<div class="logo-avto"><h2>Наш автопарк</h2>
        <button class="bth-s">Смотреть все</button>
        </div>
<div class="table">
        <div class="grid-car">
        <button class="bth-a1 polcat" data-category="suv"><img  src="./templates/img/Vector (6).png" alt="" />Внедорожники</button>
        <button class="bth-a2 polcat" data-category="business"><img  src="./templates/img/Vector (7).png" alt="" />Бизнес</button>
        <button class="bth-a3 polcat" data-category="sport"><img  src="./templates/img/Vector (8).png" alt="" />Спорткар</button>
        <button class="bth-a4 polcat" data-category="premium"><img  src="./templates/img/Group 47.png" alt="" />Премиум</button>
        <button class="bth-a5 polcat" data-category="comfort"><img  src="./templates/img/Vector (9).png" alt="" />Комфорт</button>
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
                        <div class="m-img">
                        <img src="'.$folderPath.'/main.jpg" alt="">
                        </div>';
                        $result .= ' <h4 class="text-car1">'. $elem['fullname'] . ', '. $elem['gorod'] . '</h4>';
                        $result .= '<div class="center1">
                            <p> <img src="templates/img/Vector (17).png" alt="">'. $elem['volume'] . ',' . $elem['Engine Type'] . '</p>
                            <p class=""> <img src="templates/img/Vector (18).png" alt="">'. $elem['Horsepower'] .'</p>
                        </div>';
                        $result .= '<hr class="hr2" >';
                        $result .= '<div class="bth-cost">
                            <a href="polcat.php?id='.$elem['id'] .'"><button class="">Забронировать</button></a><p>от <span class="">'.$elem['Cost-max'].'</span>руб/сут.</p>
                        </div>
                        </div>';
                        
        
                        echo $result;
                    }
                    echo '</div>';
        
                ?>
                <script> 
    let buttons = document.querySelectorAll('.polcat')

    let category = new Map([
        ['suv', document.querySelectorAll('.Внедорожник')],
        ['business', document.querySelectorAll('.Бизнес')],
        ['sport', document.querySelectorAll('.Спорт')],
        ['premium', document.querySelectorAll('.Премиум')],
        ['comfort', document.querySelectorAll('.Комфорт')]
    ]);

    
    let allCards = document.querySelectorAll('.grid1')

    for (let button of buttons) {
        button.addEventListener("click", function() {
            if (!button.classList.contains("butact")) {
                console.log("Нажатие на неактивную кнопку")
            buttons.forEach((button) => {
                button.classList.remove("butact") // убираем класс у всех кнопок
                this.classList.add("butact") // добавляем класс к нажатой кнопке
            })
            DisplayCards(this.dataset.category)
            } else {
                console.log("Нажатие на активную кнопку")
            }
        })
    }


    function DisplayCards(cat) {
        allCards.forEach((card) => {
            card.style.display = 'none'
        })
        category.get(cat).forEach((card) => {
            card.style.display = 'block'
        })
    }
    
    document.querySelector('.bth-s').addEventListener('click', function(evt) {
        evt.preventDefault();
        allCards.forEach((card) => {
            card.style.display = 'block';
        })
        buttons.forEach((button) => {
            button.classList.remove("butact")
        })
    })

    
</script>