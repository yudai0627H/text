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
<title>ItemList画面</title>
</head>
<body>
<header>
<div id="top">
		<h1>商品一覧画面</h1>
	</div>
</header>
<div id="main">
		<s:if test="itemListDTOList==null">
			<h3>商品情報がありません</h3>
		</s:if>
		<s:elseif test="message==null">
			<h3>商品情報は以下になります</h3>
			<table border="1">
				<tr>
					<th>id</th>
					<th>商品名</th>
					<th>価格</th>
					<th>在庫</th>
					<th>登録日</th>
					<th>更新日</th>
				</tr>
				<s:iterator value="itemListDTOList">
				<tr>
					<td><s:property value="id"/></td>
					<td><s:property value="itemName"/></td>
					<td><s:property value="itemPrice"/></td>
					<td><s:property value="itemStock"/></td>
					<td><s:property value="insert_date"/></td>
					<td><s:property value="update_date"/></td>
				</tr>
				</s:iterator>
		</table>
		<s:form action="ItemListDeleteConfirmAction">
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