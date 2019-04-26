<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/style.css">
<title>ユーザ情報入力</title>
<link rel="stylesheet" type="text/css" href="./css/style.css"/>
</head>
<body>
<jsp:include page="header.jsp" />
<div id="contents">
<h1>ユーザー情報入力画面</h1>

<s:if test="!familyNameErrorMessageList.isEmpty()">
	<div class="error">
	<div class="error-message">
		<s:iterator value="familyNameErrorMessageList"><s:property /><br></s:iterator>
	</div>
	</div>
</s:if>
<s:if test="!firstNameErrorMessageList.isEmpty()">
	<div class="error">
	<div class="error-message">
	<s:iterator value="firstNameErrorMessageList"><s:property /><br></s:iterator>
</div>
</div>
</s:if>
<s:if test="!familyNameKanaErrorMessageList.isEmpty()">
	<div class="error">
	<div class="error-message">
	<s:iterator value="familyNameKanaErrorMessageList"><s:property /><br></s:iterator>
	</div>
	</div>
</s:if>
<s:if test="!firstNameKanaErrorMessageList.isEmpty()">
	<div class="error">
	<div class="error-message">
	<s:iterator value="firstNameKanaErrorMessageList"><s:property /><br></s:iterator>
	</div>
	</div>
</s:if>
<s:if test="!emailErrorMessageList.isEmpty()">
	<div class="error">
	<div class="error-message">
	<s:iterator value="emailErrorMessageList"><s:property /><br></s:iterator>
	</div>
	</div>
</s:if>
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
<s:if test="!isExistsUserErrorMessage.isEmpty()">
	<div class="error">
	<div class="error-message">
	<s:iterator value="isExistsUserErrorMessage"><s:property /><br></s:iterator>
	</div>
	</div>
</s:if>

<s:form action="CreateUserConfirmAction">

<table class="vertical-list-table">
<tr>
	<th scope="row">姓</th>
	<td><s:textfield name="familyName" value="%{#session.familyName}" placeholder="姓" class="txt" /></td>
</tr>
<tr>
	<th scope="row">名</th>
	<td><s:textfield name="firstName" value="%{#session.firstName}" placeholder="名" class="txt" /></td>
</tr>
<tr>
	<th scope="row">姓ふりがな</th>
	<td><s:textfield name="familyNameKana" value="%{#session.familyNameKana}" placeholder="姓ふりがな" class="txt" /></td>
</tr>
<tr>
	<th scope="row">名ふりがな</th>
	<td><s:textfield name="firstNameKana" value="%{#session.firstNameKana}" placeholder="名ふりがな" class="txt" /></td>
</tr>
<tr>
	<th scope="row">性別</th>
	<td><s:radio name="sex" list="%{#session.sexList}" value="%{#session.sex}" placeholder="性別"/></td>
</tr>
<tr>
	<th scope="row">メールアドレス</th>
	<td><s:textfield name="email" value="%{#session.email}" placeholder="メールアドレス" class="txt" /></td>
</tr>
<tr>
	<th scope="row">ユーザーID</th>
	<td><s:textfield name="userId" value="%{#session.userIdForCreateUser}" placeholder="ユーザーID" class="txt" /></td>
</tr>
<tr>
	<th scope="row">パスワード</th>
	<td><s:password name="password" value="" placeholder="パスワード" class="txt" /></td>
</tr>
</table>
<div class="submit_btn_box">
<s:submit value="確認" class="submit_btn" />
</div>
</s:form>
</div>
</body>
</html>