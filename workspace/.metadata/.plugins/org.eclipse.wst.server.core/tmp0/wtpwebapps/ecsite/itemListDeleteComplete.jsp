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
<title>itemDeleteComplete画面</title>

</head>
<body>
<header>
		<div id="top">
			<h1>商品削除完了画面</h1>
		</div>
	</header>
<div id="main">
	<div id="top">
		<p>商品削除完了</p>
	</div>

			<div>
			<p><s:property value="message"/></p>
			<div>
			<p>管理画面には行くには<a href='<s:url  action="AdminAction"/>'>こちら</a></p>
		</div>
		</div>

</div>
<footer></footer>

</body>
</html>