
/--------問１-------------/ 
var a=1;
document.write("問１の実行結果<br>");
document.write("---------<br>");
while(a<=5){
    document.write("★");
    a++;
}
document.write("<br>---------<br>");


/----------問２------------/ 
document.write("<br>問２の実行結果<br>");
document.write("---------<br>");

for(var i=1;i<=2;i++){
    for(var b=1;b<=3;b++){
        document.write("★");
    }
    document.write("<br>");
}

document.write("<br>---------<br>");

/ーーーーーー問３ーーーーーーーーー/ 
document.write("問３の実行結果<br>");
document.write("---------<br>");

for(var c=1;c<=2;c++){
    var d=1;
    while(d<=5){
        document.write("☆");
        d++;
    }
    document.write("<br>");
}
/-------------問４------------------/ 
document.write("問4の実行結果<br>");
document.write("---------<br>");

for(var c=1;c<=4;c++){
    var d=1;
    while(d<=5){
        document.write("★");
        d++;
    }
    document.write("<br>");
}
/-------------問5------------------/ 
document.write("問5の実行結果<br>");
document.write("---------<br>");

for(var c=1;c<=4;c++){
    var d=1;
    while(d<=3){
        document.write("★");
        d++;
    }
    document.write("<br>");
}

/-------------問6------------------/ 
document.write("問6の実行結果<br>");
document.write("---------<br>");

for(var c=1;c<=3;c++){
    
    var d=1;
    while(d<=3){
        if(d%2==0){
        document.write("☆");}
        else{
        document.write("★");
        }
        d++;
    }
    document.write("<br>");
}

/-------------問7-----------------/ 
document.write("問7の実行結果<br>");
document.write("---------<br>");

for(var c=1;c<=4;c++){
    
    var d=1;
    while(d<=5){
        if(d%2==0){
        document.write("☆");}
        else{
        document.write("★");
        }
        d++;
    }
    document.write("<br>");
}
/-------------問8------------------/ 
document.write("<br>問8の実行結果<br>");
document.write("---------<br>");

for (i=2;i>=1;i--){
    for(var a=i;a<=3;a++){
        document.write("★");
     }
    document.write("<br>");
}