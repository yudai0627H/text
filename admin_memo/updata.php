<?php
require_once('util.php');
session_start();
include_once 'dbconnect.php';
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
    <meta charset="UTF-8">
    <title>登録内容変更画面</title>
</head>
<body>
<?php
if(isset($_POST['updata'])){      //更新が押されたとき発動
    $username=$_POST['username'];
    $email=$_POST['email'];
    $password=$_POST['password'];
    $password=password_hash($password,PASSWORD_DEFAULT);
    $birth_year=$_POST['birth_year'];

    //SQL文をqueryに代入
    $query="UPDATE yudai SET username='$username' ,email='$email' , password='$password',birth_year='$birth_year' WHERE user_id=".$_SESSION['user'].""; 

    //$queryの実行
    $result=$pdo->query($query);                     //queryは１回だけ使用するようなSQL文をデータベースへ送信する際に使う（PDOクラス）
    if(!$result){
        print('変更に失敗しました.'.$pdo->error);
        $mysqli->close();   //データベースの切断
        exit();
    }
    }
    ?>
        <form method="post">
        <h1>変更フォーム</h1>
    <div class="form-group">
        <input type="text" class="form-control" name="username" placeholder="ユーザー名" required/>
    </div>
    <div class="form-group">
        <input type="email" class="form-control" name="email" placeholder="メールアドレス" required/>
    </div>
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
    <button type="submit" class="btn btn-default" name="updata">変更する</button>
    <a href="home.php">現在の登録内容はこちら</a>
</form>

</div>
</body>
</html>