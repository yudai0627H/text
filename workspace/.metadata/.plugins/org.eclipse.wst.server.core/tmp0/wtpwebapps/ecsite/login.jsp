<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta http-equiv="Content-Style-Type" content="text/css"/>
<meta http-equiv="Content-Script-Type" content="text/javascript"/>
<link rel="stylesheet" type="text/css" href="./css/base.css">
<meta http-equiv="imagetoolbar" content="no"/>
<meta name="description" content=""/>
<meta name="keywords" content=""/>
<title>Login画面</title>


</head>
<body>
<header>
	<div id="top">
		<h1>ログイン画面</h1>
	</div>
</header>
<div id="main">
		<h3>商品を購入する際にはログインをお願いします</h3>
		<s:form action="LoginAction">
		<p>ログインID:<input type="text" name="loginUserId"/></p>
		<p>パスワード:<input type="password" name="loginPassword"/></p>
		<div id="pay">

		<s:submit value="ログイン"/>
		</div>
		</s:form>

</div>
<footer>
	<div id="idou">
	<p>新規ユーザー登録は <a href='<s:url action="UserCreateAction"/>'>こちら</a></p>
	<p>Homeへ戻る場合は<a href='<s:url action="GoHomeAction"/>'>こちら</a></p>
	</div>
</footer>
</body>
</html>