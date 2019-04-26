<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta http-equiv="Content-Style-Type" content="text/css"/>
<meta http-equiv="Content-Script-Type" content="text/javascript"/>
<meta http-equiv="imagetoolbar" content="no"/>
<link rel="stylesheet" type="text/css" href="./css/base.css">
<meta name="description" content=""/>
<meta name="keywords" content=""/>
<title>UserDeleteComplete画面</title>
</head>
<body>
<header>
		<div id="top">
			<h1>>ユーザー情報削除完了</h1>
		</div>
	</header>
<div id="main">

		<p><s:property value="message"/></p>
		<div>
		<p>管理画面には行くには<a href='<s:url  action="AdminAction"/>'>こちら</a></p>
		</div>

</div>
<footer></footer>

</body>
</html>