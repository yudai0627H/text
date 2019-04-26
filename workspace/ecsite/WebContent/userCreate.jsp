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
<title>UserCreate画面</title>

</head>
<body>
<header>
		<div id="top">
			<h1>ユーザー登録画面</h1>
		</div>
	</header>
<div id="main">
			<s:if test="errorMessage!=''">
					<s:property value="errorMessage" escape="false"/>
			</s:if>

		<h3>情報の登録をお願いします</h3>
		<s:form action="UserCreateConfirmAction">
		<p>ログインID:<input type="text" name="loginUserId" value=""/></p>
		<p>PassWord:<input type="text" name="loginPassword" value=""/></p>
		<p>ユーザー名:<input type="text" name="userName" value=""/></p>
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