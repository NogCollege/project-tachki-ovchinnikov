<table>
    <?php 
    require_once("controllers/connect.php");
    require_once('controllers/head.php');

    if (!empty($_POST)) {
        
        $nazvanie = $_POST["nazvanie"];
        $gorod = $_POST["gorod"];
        $categoria = $_POST["categoria"];
        $fullname = $_POST["fullname"];
        $god= $_POST["god"];
        $volume = $_POST["volume"];
        $dvigatel = $_POST["dvigatel"];
        $Horsepower =($_POST["Horsepower"]);
        $max = $_POST["max"];
        $average = $_POST["average"];
        $min = $_POST["min"];
        $opisanie = $_POST["opisanie"];

        $query= "INSERT INTO catalog SET nazvanie= '$nazvanie', gorod='$gorod', categoria='$categoria', fullname='$fullname', god='$god', dvigatel = '$dvigatel', volume = '$volume', Horsepower= '$Horsepower', max= '$max', average= '$average', min= '$min', opisanie= '$opisanie' ";
         mysqli_query($link, $query) or die(mysqli_error($link));
         
        require ('controllers/creat-folder.php'); 
         

    }
    if (isset($_GET['delete'])) {
        $delet = $_GET['delete'];
        $query = "INSERT INTO delete  SELECT * FROM catalog WHERE 'id'=$delete";
        $query = "DELETE FROM catalog WHERE 'id'=$delete";
        mysqli_query($link, $query) or die(mysqli_error($link));
    }
     $query = "SELECT * FROM catalog";

     $result =mysqli_query($link, $query) or die(mysqli_error($link));

     for ($data = []; $row = mysqli_fetch_assoc($result);$data[]=$row);

     echo '<table>';
     $result = "";
    foreach($data as $elem){
        $result .= '<tr>';
        $result .= '<td>' . $elem['id'] .'</td>';
        
        $result .= '<td>'. $elem['nazvanie'] .'</td>';
        $result .= '<td>'. $elem['gorod'] .'</td>';
        $result .= '<td>'. $elem['categoria'] .'</td>';
        $result .= '<td>'. $elem['fullname'] .'</td>';
        $result .= '<td>'. $elem['god'] .'</td>';
        $result .= '<td>'. $elem['dvigatel'] .'</td>';
        $result .= '<td>'. $elem['volume'] .'</td>';
        $result .= '<td>'. $elem['Horsepower'] .'</td>';
        $result .= '<td>'. $elem['max'] .'</td>';
        $result .= '<td>'. $elem['average'] .'</td>';
        $result .= '<td>'. $elem['min'] .'</td>';
        $result .= '<td>'. $elem['opisanie'] .'</td>';
        $result .='<td><a href= "upload-photos.php?id='. $elem['id'].'">Фотографии</a></td>';
        $result .= '<td><a href="?del='.$elem['id'].'">удалить</a></td>';
        $result .= '</tr>';
    }
    echo $result;
    echo '</table>';
    ?>
    <form class="admin" action="" method="POST">
     <input name="nazvanie" placeholder="nazvanie">
    <input name="gorod" placeholder="gorod">
    <input name="categoria" placeholder="categoria">
    <input name="fullname" placeholder="fullname">
    <input name="god" placeholder="god">
    <input name="dvigatel" placeholder="dvigatel">
    <input name="volume" placeholder= "volume">
    <input name="Horsepower" placeholder= "Horsepower">
    <input name="max" placeholder="max">
    <input name="average" placeholder= "average">
    <input name="min" placeholder= "min">
    <input name="opisanie" placeholder="opisanie">
    <input type="submit" value="добавить авто">

</form>








































   
    

    