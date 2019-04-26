<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta http-equiv="Content-Style-Type" content="text/css"/>
<meta http-equiv="Content-Script-Type" content="text/javascript"/>
<meta http-equiv="imagetoolbar" content="no"/>
<meta name="description" content=""/>
<meta name="keywords" content=""/>
<link rel="stylesheet" type="text/css" href="./css/base.css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<title>BuyItemConfirm画面</title>


<script type="text/javascript">
		function submitAction(url){
			$("form").attr("action",url);
			$("form").submit();
		}
</script>
</head>
<body>
 <header>
	<div id="top">
	<h1>購入前確認画面</h1>
	</div>
 </header>
 <div id="main">

		<s:form action="BuyItemConfirmAction" theme="simple">
				<tr>
					<th>id</th>
					<th>商品名</th>
					<th>価格</th>
					<th>購入個数</th>
					<th>金額</th>
				</tr>
				<s:iterator value="itemListDTOList">
					<table border="1">
						<tr>
							<td><s:property value="id" /><s:hidden name="id" value="%{id}" /></td>
							<td><s:property value="itemName" /></td>
							<td><s:property value="itemPrice" /><s:hidden name="itemPrice" value="%{itemPrice}" /><span>円</span></td>
							<td><s:property value="count"/><s:hidden name="count" value="%{count}" /><span>個</span></td>
							<td><s:property value="totalPrice"/><s:hidden name="totalPrice" value="%{totalPrice}" /><span>円</span></td>
						</tr>
					</table>
				</s:iterator>
				<div id="pay">
						<p><span>支払い方法</span></p>
						<s:property value="itemListDTOList.get(0).pay"/><s:hidden  name="pay" value="%{itemListDTOList.get(0).pay}" />
				</div>


					<input type="button" value="戻る" onclick="submitAction('HomeAction')"/>
					<input type="button" value="完了" onclick="submitAction('BuyItemConfirmAction')"/>

			</s:form>
	</div>

<footer>
	<div id="idou">
	<p>前画面に戻る場合は<a href='<s:url action="GoHomeAction"/>'>こちら</a></p>
			<p>マイページは<a href='<s:url action="MyPageAction"/>'>こちら</a></p>
	</div>

</footer>

</body>
</html>