<?php
require_once('util.php');
session_start();
include_once 'dbconnect.php';

 if(!isset($_SESSION['user'])){
     header('Location: index.php');
 }
?>
<?php
if(!cken($_POST)){
  $encoding=mb_internal_encoding();
    $err="Encoding Error! The expected encoding is ".$encoding;
    exit($err);
}
?>

<?php
 $query="SELECT *FROM yudai WHERE user_id=".$_SESSION['user']."";
 $result=$pdo->query($query);       //query関数はtrue falseで返す 中身を実行する

if(!$result){
    print('クエリーが失敗しました'.$pdo->error);
    $pdo->close();
    exit();
}

while($row=$result->fetch()){
    $username=$row['username'];
    $title=$row['title'];
    $commtents=$row['commtents'];
}
// $result->close();
 ?>

<!DOCTYPE html>
<html lang="ja">

<head>
<meta charset="utf-8">
<title>個人メモ</title>
<link rel="stylesheet" type="text/css" href="style.css">

<!-- bxslider -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

  <script>
    $(document).ready(function(){
      $('.abc').bxSlider({
          auto:true,
          mode:'horizontal',
          speed:1000,
      });
    });
  </script>

</head>

 <body>

<?php //ここに後で入れる ?>

<div id="page">
  <header>

    <div class="abc">
    <div><img src="kojin.png"></div>
    <div><img src="computer_net_stalker_man.jpg"></div>
    <div><img src="ai_man.jpg"></div>
    </div>

    <nav>
        <ul>
            <li><a href="home.php">ホーム画面に戻る</a></li>
            <li><a href="#">オススメを探す</a></li>
            <li><a href="#">楽しみ方</a></li>
            <li><a href="#">お問い合わせ</a></li>
            <li><a href="#">その他</a></li>
        </ul>
    </nav>
  </header>

<?php

?>


  <main>
 <div class=main_content>
  
  <h1>掲示板:<?php echo $username;?></h1>
  <div class="enter_form">
   <h3>TO DO フォーム</h3>
   <form method="post">
    
    <div id="title">
        <label>タイトル</label>
        <br>
        <input type="text" class="text" size="35" name="title" placeholder="Title">
    </div>
    <div id="commtents">
        <label>詳細</label>
        <br>
        <textarea cols="70" rows="7" name="commtents" placeholder="他人を傷つけることはやめましょう">
        </textarea>
    </div>

    <div id="send">
        <input type="submit" class="submit" name="contribution" value="メモる">
    </div>
    </form>
    </div>
    </div>

    <!-- SQLを介しての投稿されたところ -->
    <?php


//** 
if(isset($_POST['contribution'])){           //投稿ボタンが押された場合

$title=$_POST['title'];
$commtents=$_POST['commtents'];

$query2="UPDATE yudai SET title='$title',commtents='$commtents' WHERE user_id=".$_SESSION['user']."";

$result=$pdo->query($query2);
if(!$result){
  print('変更に失敗しました.'.$pdo->error);
  $pdo->close();   //データベースの切断
  exit();
}

// }else{
//  $query2="SELECT * FROM yudai WHERE user_id=".$_SESSION['user']."";
//  $result=$pdo->query($query2);
//  if(!$result){
//    print('クエリー2が失敗しました'.$pdo->error);
//    $pdo->close();
//    exit();
 }

//  while($row=$result->fetch()){
//    $title=$row['title'];
//    $commtents=$row['commtents'];
 
//}
// }

//  $result->close();
//** 

    echo "<div class='kiji'>";
    echo "<h3>".es($title)."</h3>";
    echo "<div class='contents'>";
    echo es($commtents);
    date_default_timezone_set('Asia/Tokyo');
    echo "<div class='user_name'>DATE ".date("Y/m/d H:i:s")."</div>";
    echo "</div>";
    echo "</div>";

    // $result->close();
     ?>    
    
  </main>

<div class="sub">
 <h3>人気の記事</h3>
 <ul>
    <li><a href="#">PHPオススメ本</a></li>
    <li><a href="#">PHP vs Ruby 今から勉強するならどっち</a></li>
    <li><a href="#">初心者向けの言語なに？</a></li>
    <li><a href="#">【悲報】C言語わからなすぎる</a></li>
  </ul>
 
 <h3>最近の記事</h3>
 <ul>
    <li><a href="#">Pythonの需要って実際どうなの</a></li>
    <li><a href="#">【朗報】COBOLさんTwitterで急上昇</a></li>
    <li><a href="#">サッカー日本代表は強いの？</a></li>
    <li><a href="#">転職するか悩み中...</a></li>
 </ul>

 <h3>カテゴリ</h3>
 <ul>
    <li><a href="#">就職・転職</a></li>
    <li><a href="#">勉強法</a></li>
    <li><a href="#">プログラミング言語</a></li>
    <li><a href="#">その他</a></li>
  </ul>
 </div>



<!-- フッター -->
<footer>
<div class="foot">
<p>copyright Yudai_Hoshi | <!--he mard color --></p>
</div>

</footer>
</div>
</body>
</html>