function en(hankei){
    return hankei*hankei*3.14;
}
document.write("問１"+"<br>");
document.write(en(5)+"<br>");
document.write(en(7)+"<br>");

function kane(adult,child){
    return 500*adult+200*child;
}

document.write("問２"+"<br>");
document.write("Aグループの合計金額は"+kane(2,1)+"円です"+"<br>");
document.write("Bグループの合計金額は"+kane(1,5)+"円です"+"<br>");
document.write("Bグループの合計金額は"+kane(3,7)+"円です"+"<br>");


for (i=5;i>=1;i--){
    for(var a=i;a<=5;a++){
        document.write("★");
    }
    document.write("<br>");
}