<?php
    require_once('./core/config.php');

    //DBと接続する為にmysqlクラスをオブジェクト化してから使用
    $mysqli=new mysqli($host, $username,$password,$dbname);
    if($mysqli->connect_error){
        error_log($mysqli->connect_error);
        exit;
    }
?>