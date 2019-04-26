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
<title>ItemAdd画面</title>

</head>
<body>
<header>
<div id="top">
	<h1>商品登録画面</h1>
</div>
</header>
<div id="main">
		<s:if test="errorMassage!=''">
				<s:property value="errorMassage" escape="false"/>
		</s:if>

		<h3>商品の登録をお願いします</h3>
		<s:form action="ItemAddConfirmAction">
		<p>商品名:<input type="text" name="itemName" value=""/></p>

		<p>価格:<input type="text" name="itemPrice" value=""/></p>

		<p>在庫:<input type="text" name="itemStock" value=""/></p>
		<div>
		<s:submit value="登録"/>
		</div>
		</s:form>


</div>
<footer>
	<span>前画面に戻る場合は</span>
	<a href='<s:url action="HomeAction"/>'>こちら</a>
</footer>

</body>
</html>