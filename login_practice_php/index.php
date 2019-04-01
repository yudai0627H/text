<?php
ob_start();
session_start();
if(isset($_SESSION['user'])!=""){
    //ログイン済みの場合は、マイページに移動
    header("Location: home.php");
}

//DBとの接続
include_once 'dbconnect.php';
//include_onceは一度だけ指定したファイルを実行し、errorが出ても処理を続ける
?>
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <title>ログイン画面</title>
</head>
<body>
<?php
if(isset($_POST['login'])){      //ログインが押されたとき発動
    $email =$mysqli->real_escape_string($_POST['email']);
    $password=$mysqli->real_escape_string($_POST['password']);

    //SQL文をqueryに代入
    $query="SELECT * FROM yudai WHERE email='$email'"; //入力されたメールアドレスがDBにあるかの確認


    //$queryの実行
    $result=$mysqli->query($query);                     //queryは１回だけ使用するようなSQL文をデータベースへ送信する際に使う（PDOクラス）
    if(!$result){
        print('ログインに失敗しました。メールアドレスの確認をお願いします。'.$mysqli->error);
        $mysqli->close();   //データベースの切断
        exit();
}

    //DBから該当ユーザーのパスワード（暗号化済み）とユーザーIDを取得
    while($row=$result->fetch_assoc()){              //$resultから＄rowに取り出す  行の連想配列をすべて返す？
     $db_hashed_pwd=$row['password'];
     $user_id=$row['user_id'];                                               
    }

    $result->close();           //データベースの切断

    //ハッシュ化されたパスワードがマッチするかどうかを確認
    if(password_verify($password,$db_hashed_pwd)){              //password_verifyはパスワードとハッシュ化されたパスワードが同じかを調べる関数
      $_SESSION['user']=$user_id;
      header("Location: home.php");     //ログイン
      exit;
    }else{  ?>
    <div role="alert">メールアドレスとパスワードを確認してください</div>
    <?php }
    }

    ?>
        <form method="post">
        <h1>ログインフォーム</h1>
    <div class="form-group">
        <input type="text" class="form-control" name="username" placeholder="ユーザー名" required/>
    </div>
    <div class="form-group">
        <input type="email" class="form-control" name="email" placeholder="メールアドレス" required/>
    </div>
    <div class="form-group">
        <input type="password" class="form-control" name="password" placeholder="パスワード" required/>
    </div>
    <button type="submit" class="btn btn-default" name="login">ログインする</button>
    <a href="register.php">会員登録はこちら</a>
</form>

</div>
</body>
</html>


