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
<title>UserCreateConfirm画面</title>

<script type="text/javascript">
	function submitAction(url){
		$('form').attr('action',url);
		$('form').submit();
	}
</script>

</head>
<body>
<header>
		<div id="top">
			<h1>登録内容 確認画面</h1>
		</div>
	</header>
<div id="main">
	<div>
			<h3>登録する内容は以下でよろしいでしょうか</h3>

		<s:form action="UserCreateCompleteAction">

		<p>ログインID:
		<s:property value="loginUserId" escape="false"/></p>

		<p>PassWord:
		<s:property value="loginPassword" escape="false"/></p>

		<p>ユーザー名:
		<s:property value="userName" escape="false"/></p>
		<div>
		<s:submit value="完了"/>
		</div>
		</s:form>


	</div>

</div>
<footer>
</footer>

</body>
</html>