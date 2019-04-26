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
<title>Admin画面</title>

</head>
<body>
<header>
	<div id="top">
		<h1>管理人の部屋</h1>
	</div>
	</header>
<div id="main">

			<p>商品</p>
			<s:form action="ItemAddAction">
			<s:submit value="新規登録"/>

			</s:form>
			<s:form action="ItemListAction">
					<s:submit class="button" value="一覧"/>
			</s:form>

					<p>ユーザー</p>
			<s:form action="UserCreateAction">
					<s:submit class="button" value="新規登録"/>
			</s:form>
			<s:form action="UserListAction">
					<s:submit class="button" value="一覧"/>
			</s:form>

	</div>
<footer>
		<div id="idou">

		</div>
</footer>
</body>
</html>