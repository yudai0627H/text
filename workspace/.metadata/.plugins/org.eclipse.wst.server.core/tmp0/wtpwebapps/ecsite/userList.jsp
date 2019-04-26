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
<title>UserList画面</title>

</head>
<body>
<header>
		<div id="top">
			<h1>ユーザ一覧</h1>
		</div>
	</header>
<div id="main">

		<s:if test="userListDTOList==null">
			<h3>ユーザー情報がありません</h3>
		</s:if>
		<s:elseif test="message==null">
			<h3>ユーザ情報は以下になります</h3>
			<table border="1">
				<tr>
					<th>id</th>
					<th>ログインID</th>
					<th>パスワード</th>
					<th>ユーザ名</th>
					<th>登録日</th>
					<th>更新日</th>
				</tr>
				<s:iterator value="userListDTOList">
				<tr>
					<td><s:property value="id"/></td>
					<td><s:property value="loginId"/></td>
					<td><s:property value="loginPass"/></td>
					<td><s:property value="userName"/></td>
					<td><s:property value="insert_date"/></td>
					<td><s:property value="update_date"/></td>
				</tr>
				</s:iterator>
		</table>
		<s:form action="UserListDeleteConfirmAction">
			<s:submit value="削除"/>
		</s:form>
		</s:elseif>
		<s:if test="message !=null">
			<h3><s:property value="message"/></h3>
		</s:if>
</div>
<footer>
<p>管理画面には行くには<a href='admin.jsp'>こちら</a></p>
</footer>

</body>
</html>