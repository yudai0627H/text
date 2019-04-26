<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/style.css">
<title>パスワード再設定確認</title>
</head>
<body>
<script type="text/javascript" src= "./js/resetPassword.js"></script>
<jsp:include page="header.jsp" />
<div id="contents">
	<h1>パスワード再設定確認画面</h1>
	<s:form id="resetPasswordForm" action="">
		<table class="vertical-list-table">
			<tr>
				<th scope="row"><s:label value="ユーザーID"/></th>
				<td><s:property value="userId"/></td>
			</tr>
			<tr>
				<th scope="row"><s:label value="新しいパスワード"/></th>
				<td><s:property value="concealedPassword"/></td>
			</tr>
		</table>
		<div class="submit_btn_box">
			<s:submit value="登録" class="submit_btn" onclick="goResetPasswordCompleteAction()"/>
		</div>
		<div class="submit_btn_box">
			<s:submit value="戻る" class="submit_btn" onclick="goResetPasswordAction()"/>
		</div>
		<s:hidden id="backFlag" name="backFlag" value=""/>
	</s:form>
</div>
</body>
</html>