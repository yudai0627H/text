<?php
    require_once('util.php');
    session_start();
    if(isset($_SESSION['user'])!=""){
        //ログイン済みならマイページに移動
        header("Location:home.php");
    }

    //DBと接続
    include_once 'dbconnect.php';
    //include_onceは指定したファイルを１度だけ実行する warningを出ても処理を実行する
?>


<?php
if(!cken($_POST)){
    $encoding=mb_internal_encoding();
    $err="Encoding Error! The expected encoding is ".$encoding;
    exit($err);
}
?>
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="utf-8">
    <title>登録画面</title>
</head>
<body>
<?php

if(isset($_POST['signup'])){     //新規登録ボタンが押された場合

$username=$_POST['username'];
$email=$_POST['email'];
$password=$_POST['password'];
$password=password_hash($password,PASSWORD_DEFAULT);
$birth_year=$_POST['birth_year'];


//SQL命令文を$queryへ代入
$query="INSERT INTO yudai (username,email,password,birth_year) VALUES('$username','$email','$password','$birth_year')";

//$queryを実行
if($pdo->query($query)){ ?>
    <div role="alert">登録しました</div>
<?php }else{ ?>
    <div role="alert">エラーが発生しました</div>
<?php
}
}
?>

<form method="post">
    <h1>会員登録フォーム</h1>
    <div class="form-group">
        <input type="text" class="form-control" name="username" placeholder="ユーザ名" required/>
    </div>
    <div class="form-group">
        <input type="email" class="form-control" name="email" placeholder="メールアドレス" required/>
    <div>
    <div class="form-group">
        <input type="password" class="form-control" name="password" placeholder="パスワード" required/>
    </div>
    <div class="form-group">
        <select name="birth_year">
        <option value="" selected required>選択してください</option>
        <script>
        for(var i=1900; i<=2020; i++){
            document.write("<option>");
            document.write(i);
            document.write("</option>");
        }
        </script>
        </select>年
    </div>

    <button type="submit" class="btn btn-defult" name="signup">会員登録する</button>
    <a href="index.php">ログインはこちら</a>
</form>
<body>
</html>




