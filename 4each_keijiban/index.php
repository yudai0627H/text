<?php?>
<!DOCTYPE html>
<html lang="ja">

<head>
<meta charset="utf-8">
<title>IT掲示板</title>
<link rel="stylesheet" type="text/css" href="style.css">

<!-- bxslider -->
<!-- ➀　スクールで学び、課題に個人的に取り入れた-->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

  <script>
    $(document).ready(function(){
      $('.abc').bxSlider({
          auto:true,
          mode:'horizontal',
          speed:2000,
        
      });
    });
  </script>
<!--　ここまで➀-->

</head>

 <body>

 

 <?php
 mb_internal_encoding("utf8");
    $pdo=new PDO("mysql:dbname=yudai_h;host=localhost;","root","");
    $stmt=$pdo->query("select*from 4each_keijiban");
    
  ?>

    <!-- ヘッダー -->
 <div id="page">
  <header>
    <!-- <div id="logo"> -->

    <div class="abc">
    <div><img src="img/job_it_dokata.jpg"></div>
    <div><img src="img/computer_net_stalker_man.jpg"></div>
    <div><img src="img/ai_man.jpg"></div>
    </div>

    
    <!-- </div> -->
    <nav>
        <ul>
            <li><a href="#">ホーム</a></li>
            <li><a href="#">オススメを探す</a></li>
            <li><a href="#">楽しみ方</a></li>
            <li><a href="#">お問い合わせ</a></li>
            <li><a href="#">その他</a></li>
        </ul>
    </nav>
  </header>

    <!-- メイン -->
 <main>
 <div class=main_content>
  
  <h1>IT土方掲示板</h1>
  <div class="enter_form">
   <h3>入力フォーム</h3>
   <form method="post" action="insert.php">
    
    <div id="name">
        <label>ハンドルネーム</label>
        <br>
        <input type="text" class="text" size="35" name="handlename" placeholder="HandleName"> 
    </div>
    <div id="title">
        <label>タイトル</label>
        <br>
        <input type="text" class="text" size="35" name="title" placeholder="Title">
    </div>
    <div id="commtents">
        <label>コメント</label>
        <br>
        <textarea cols="85" rows="7" name="commtents" placeholder="他人を傷つけることはやめましょう">
        </textarea>
    </div>

    <div id="send">
        <input type="submit" class="submit" value="投稿する">
    </div>
    </form>
    </div>
    </div>



    <!-- SQLを介しての投稿されたところ -->
    <?php

    while($row=$stmt->fetch()){

    echo "<div class='kiji'>";
    echo "<h3>".$row['title']."</h3>";
    echo "<div class='contents'>";
    echo  $row['commtents'];
    echo " <div class='user_name'>posted by".$row['handlename']."</div>";
    echo "</div>";
    echo "</div>";
    }

    ?>
     <!-- phpここまで -->





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
        <li><a href="#">未経験からWeb系行ったけど質問ある？</a></li>
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