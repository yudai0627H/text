<?php
 require_once('util.php');
 session_start();

//DBとの接続
include_once 'dbconnect.php';

if(!isset($_SESSION['user'])){
    //ログインしていない場合は、ログインページに移動
    header('Location: index.php');
}

//SQL文を＄queryへ代入
$query="SELECT * FROM yudai WHERE user_id=".$_SESSION['user']."";//ユーザーIDをキーにDBからユーザー情報を取得


//$queryを実行
$result=$pdo->query($query);       //query関数はtrue falseで返す

if(!$result){
    print('クエリーが失敗しました'.$pdo->error);
    $pdo->close();
    exit();
}

while($row=$result->fetch()){
    $username=$row['username'];
    $email=$row['email'];
    $birth_year=$row['birth_year'];
}

//データベースの切断
//   $result->close();
?>

<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title>マイページ</title>
</head>
<body>
<h1>プロフィール</h1>
<ul>
    <li>名前:<?php echo es($username); ?></li>
    <li>メールアドレス:<?php echo es($email); ?></li>
    <li>誕生日:<?php echo es($birth_year); ?></li>
</ul>
<a href="logout.php?logout">ログアウト</a>
<a href="delete.php?delete" onclick="window.confirm('本当に退会しますか？');">退会希望</a>
<a href="updata.php">登録情報の変更</a>
<a href="board.php">個人メモに進む</a>