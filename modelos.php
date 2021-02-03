<?php
include 'client.php';

$client = new client();

$marca = $_GET['marca'];
$url = $_GET['url'];
$modelos = $client->getModelos($marca);

?>
<!DOCTYPE html>
<html>
<head>
    <style>
        figure {
            border: 1px #cccccc solid;
            padding: 4px;
            margin: auto;
        }

        figcaption {
            background-color: navy;
            color: white;
            font-weight: bolder;
            font-style: italic;
            padding: 2px;
            text-align: center;
        }
    </style>
</head>
<body>
<h1>Modelos disponibles marca: <?=$url?></h1>
<?php
foreach ($modelos as $id => $modelo) {
?>
        <figure>
            <img src="images/<?=strtolower($url)?>.jpg" alt="logo <?=$marca?>" />
            <figcaption><?=$modelo?></figcaption>
        </figure>
    <?php
}
?>


</body>
</html>