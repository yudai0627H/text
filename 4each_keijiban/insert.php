<?php
mb_internal_encoding("utf-8");
$pdo=new PDO("mysql:dbname=yudai_h;host=localhost;","root","");

$pdo->exec("insert into 4each_keijiban(handlename,title,commtents)
values('".$_POST['handlename']."','".$_POST['title']."','".$_POST['commtents']."');");

header("Location://localhost/4each_keijiban/index.php");
?>

