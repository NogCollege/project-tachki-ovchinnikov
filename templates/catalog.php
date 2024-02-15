<?php
require_once 'controllers/connect.php';


$sql = "SELECT * FROM catalog";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
   
    while ($row = $result->fetch_assoc()) {
        echo '<div class="car-card">';
        echo '<img src="car_image.jpg" alt="Car Image">'; 
        echo '<h3>' . $row['brand'] . ' ' . $row['model'] . '</h3>';
        echo '<p>Цена: ' . $row['price'] . '</p>';
       
        echo '</div>';
    }
} else {
    echo "Нет данных для отображения.";
}


$conn->close();
?>