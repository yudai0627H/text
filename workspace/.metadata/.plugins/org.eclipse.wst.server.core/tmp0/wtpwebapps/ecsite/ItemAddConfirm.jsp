
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
<title>ItemAddConfirm画面</title>


</head>
<body>
<header>
		<div id="top">
			<h1>商品追加確認画面</h1>
		</div>
</header>
<div id="main">


			<div>
			<h3>追加内容は以下でよろしいでしょうか</h3>

		<s:form action="ItemAddCompleteAction">

		<p>商品名:
		<s:property value="itemName" escape="false"/></p>

		<p>値段:
		<s:property value="itemPrice" escape="false"/></p>

		<p>在庫:
		<s:property value="itemStock" escape="false"/></p>
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