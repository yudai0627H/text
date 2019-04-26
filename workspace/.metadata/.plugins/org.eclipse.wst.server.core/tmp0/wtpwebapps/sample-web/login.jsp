<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/style.css">
<title>ログイン</title>
</head>
<body>
<script type="text/javascript" src= "./js/login.js"></script>
<jsp:include page="header.jsp" />
<div id="contents">
<h1>ログイン画面</h1>
<s:form id="loginForm" action="">
	<s:if test="!userIdErrorMessageList.isEmpty()">
		<div class="error">
			<div class="error-message">
				<s:iterator value="userIdErrorMessageList"><s:property /><br></s:iterator>
			</div>
		</div>
	</s:if>
	<s:if test="!passwordErrorMessageList.isEmpty()">
		<div class="error">
			<div class="error-message">
				<s:iterator value="passwordErrorMessageList"><s:property /><br></s:iterator>
			</div>
		</div>
	</s:if>
	<s:if test="!isNotUserInfoMessage.isEmpty()">
		<div class="error">
			<div class="error-message">
				<s:property  value="isNotUserInfoMessage"/>
			</div>
		</div>
	</s:if>


	<table class="vertical-list-table">
		<tr>
			<th scope="row"><s:label value="ユーザーID"/></th>
			<s:if test="#session.savedUserIdFlag==true">
			<td><s:textfield name="userId" class="txt" placeholder="ユーザーID" value='%{#session.savedUserId}' autocomplete="off"/></td>
			</s:if>
			<s:else>
			<td><s:textfield name="userId" class="txt" placeholder="ユーザーID" value='%{userId}' autocomplete="off"/></td>
			</s:else>
		</tr>
		<tr>
			<th scope="row"><s:label value="パスワード"/></th>
			<td><s:password name="password" class="txt" placeholder="パスワード" autocomplete="off"/></td>
		</tr>
	</table>
	<div class="box">
		<s:if test="#session.savedUserIdFlag==true && !#session.savedUserId.isEmpty()">
			<s:checkbox name="savedUserIdFlag" checked="checked"/>
		</s:if>
		<s:else>
			<s:checkbox name="savedUserIdFlag"/>
		</s:else>
		<s:label value="ユーザーID保存"/><br>
	</div>
	<div class="submit_btn_box">
		<s:submit value="ログイン" class="submit_btn" onclick="goLoginAction()" />
	</div>
<br>
<div class="submit_btn_box">
	<div id="contents-btn-set">
		<s:submit value="新規ユーザー登録" class="submit_btn" onclick="goCreateUserAction()" />
	</div>
</div>
<div class="submit_btn_box">
<div id="contents-btn-set">
	<s:submit value="パスワード再設定" class="submit_btn" onclick="goResetPasswordAction()" />

</div>
</div>
</s:form>
</div>

</body>
</html>