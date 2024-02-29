<table>
    <?php 
    require_once("controllers/connect.php");

    if (!empty($_POST)) {
        $nazvanie = $_POST["nazvanie"];
        $gorod = $_POST["gorod"];
        $categoria = $_POST["categoria"];
        $fullname = $_POST["fullname"];
        $god= $_POST["Year of release"];
        $volume = $_POST["volume"];
        $Horsepower =($_POST["Horsepower"]);
        $max = $_POST["Cost-max"];
        $mid = $_POST["Cost-average"];
        $min = $_POST["Cost-min"];
        $opisanie = $_POST["opisanie"];
    }






































    $query="SELECT * FROM catalog";
    $result=mysqli_query($link,$query) or die(mysqli_error($link));
    for($data = []; $row = mysqli_fetch_assoc($result); 
    $data[] = $row);
    $result = '';
    foreach($data as $elem){
        $result .= '<tr>';
        $result .= '<td>' . $elem['id'] .'</td>';
        $result .= '<td>'. $elem['arenda'] .'</td>';
        $result .= '<td>'. $elem['nazvanie'] .'</td>';
        $result .= '<td>'. $elem['gorod'] .'</td>';
        $result .= '<td>'. $elem['categoria'] .'</td>';
        $result .= '<td>'. $elem['fullname'] .'</td>';
        $result .= '<td>'. $elem['Year of release'] .'</td>';
        $result .= '<td>'. $elem['Engine Type'] .'</td>';
        $result .= '<td>'. $elem['volume'] .'</td>';
        $result .= '<td>'. $elem['Horsepower'] .'</td>';
        $result .= '<td>'. $elem['Cost-max'] .'</td>';
        $result .= '<td>'. $elem['Cost-average'] .'</td>';
        $result .= '<td>'. $elem['Cost-min'] .'</td>';
        $result .= '<td>'. $elem['opisanie'] .'</td>';
        $result .= '<td>'. $elem[''] .'</td>';
        $result .= '</tr>';
    }
    echo $result;
    ?>
</table>



    