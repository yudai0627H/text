<?php
    require_once('./core/config.php');

    //DBと接続する為にPDOクラスをオブジェクト化してから使用
    //MySQLのDSN文字列
$dsn="mysql:host={$host};dbname={$dbname};charset=utf8";

    //MySQLデータベースに接続する
try{
    $pdo=new PDO($dsn,$username,$password);

    //プリペアードステートメントのエミュレーションを無効にする
    $pdo->setAttribute(PDO::ATTR_EMULATE_PREPARES,false);

    //例外がスローされる設定にする
    $pdo->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
    echo "データベース{$dbname}に接続しました";
    
}catch(Exception $e){
    echo '<span class="error"></span>エラーが発生<br>';
    echo $e->getMessage();
    exit();
}
?>