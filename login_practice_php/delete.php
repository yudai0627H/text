<?php
session_start();

//DBとの接続
include_once 'dbconnect.php';

if(isset($_GET['delete'])){ //退会希望が押されたとき発動
    $query="DELETE FROM yudai WHERE user_id=".$_SESSION['user'].""; //ユーザーIDををキーにDBからユーザー情報を削除
    $result=$mysqli->query($query);

    if(!$result){
        print('クエリーが失敗しました'.$mysqli->error);
        $mysqli->close();
        exit();
    }
}

if(isset($_GET['delete'])){
    session_destroy();
    unset($_SESSION['user']);
    header("Location: delete.php");
}else{
    header("Location: register.php");
}


?>

<!-- <!DOCTYPE HTML>
<html lang="ja">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>削除完了画面</title>
</head>
<body>
<p>削除しました</p>
</body>
</html> -->