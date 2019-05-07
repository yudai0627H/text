<?php
session_start();

//DBとの接続
include_once 'dbconnect.php';

if(isset($_GET['delete'])){ //退会希望が押されたとき発動
    $query="DELETE FROM yudai WHERE user_id=".$_SESSION['user'].""; //ユーザーIDををキーにDBからユーザー情報を削除
    $result=$pdo->query($query);

    if(!$result){
        print('クエリーが失敗しました'.$mysqli->error);
        $mysqli->close();
        exit();
    }
    else{
        session_destroy();
        unset($_SESSION['user']);
        header("Location: index.php");
    }

}

// if(isset($_GET['delete'])){
//     session_destroy();
//     unset($_SESSION['user']);
//     header("Location: delete.php");
// }else{
//     header("Location: register.php");
// }


?>
