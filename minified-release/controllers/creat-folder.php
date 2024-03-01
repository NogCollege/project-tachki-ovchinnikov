<?php 
    require_once('controllers/connect.php');

    if ($link->connect_error) {
        die("Ошибка подключения к базе данных: " . $link->connect_error);
    }

  
    $sql = "SELECT * FROM Catalog";
    $result = $link->query($sql);

    if ($result->num_rows > 0) {
        
        while ($row = $result->fetch_assoc()) {
            $id = $row["id"];
            $name = $row["nazvanie"];
            $folderName = $id . "-" . preg_replace("/[^A-Za-z0-9]/", "", $name);

            
            $folderPath = "./templates/img/photots/" . $folderName;
            if (!is_dir($folderPath)) {
                // var_dump($folderPath);
                mkdir($folderPath, 0777, true);
                echo "Папка " . $folderName . " успешно создана.<br>";
            }
        }
    } else {
        echo "Нет данных об автомобилях в базе.";
    }

    // $link->close();

?>