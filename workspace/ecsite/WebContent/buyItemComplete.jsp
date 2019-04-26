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
<title>buyItemComplete画面</title>


</head>
<body>
<header>
		<div id="top">
		<h1>購入確認画面</h1>
		</div>
</header>
<div id="main">

	<div>
			<p>購入手続きが完了いたしました</p>
			<div>
					<a href='<s:url action="MyPageAction"/>'>
					マイページ</a><span>から購入履歴を確認が可能です。</span>
			</div>
	</div>

</div>
<footer>
	<div id="idou">
	<p>Homeへ戻る場合は<a href='<s:url action="GoHomeAction"/>'>こちら</a></p>
	</div>
</footer>

</body>
</html>