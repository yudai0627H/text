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
<title>Home画面</title>
</head>
<body>
<header>
		<div id="top">
			<h1>HOME画面</h1>
		</div>
	</header>

<div id="main">

	<s:form action="HomeAction">
			<s:submit class="button" value="商品購入"/>
	</s:form>

</div>
<footer>
		<div id="idou">
			<s:if test="#session.login_user_id !=null">
					<p>ログアウトする場合は
					<a href='<s:url action="LogoutAction"/>'>こちら</a></p>
			</s:if>
		</div>
	</footer>
</body>
</html>