<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<link rel="stylesheet" type="text/css" href="./css/base.css">
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>BuyItem画面</title>

</head>



<body>
	<header>
		<div id="top">
			<h1>購入画面</h1>
		</div>
	</header>

	<div id="main">
			<div id="name">
					<span>ユーザ-ID</span>
					<s:property value="session.login_user_id" />
				</div>
		<div>

		<div>
			<s:iterator value="errorMessageList">
				<s:property /><br/>
			</s:iterator>
		</div>
			<s:form action="BuyItemAction" theme="simple">
				<tr>
					<th>#</th>
					<th>id</th>
					<th>商品名</th>
					<th>価格</th>
					<th>在庫</th>
					<th>購入個数</th>
				</tr>
				<s:iterator value="itemListDTOList">
					<table border="1">
						<tr>
							<td><s:checkbox name="checkList"  value="checked" fieldValue="%{id}"/></td>
							<td><s:property value="id" /></td>
							<td><s:property value="itemName" /><s:hidden name="itemName" value="%{itemName}" /></td>
							<td><s:property value="itemPrice" /><span>円</span></td>
							<td><s:property value="itemStock" /></td>
							<td><s:select name="count" list="%{itemCountList}" /></td>
						</tr>
					</table>
				</s:iterator>

				<div id="pay">
				<p><span>支払い方法</span></p>
				<input type="radio" name="pay" value="1" checked="checked">現金払い
				<input type="radio" name="pay" value="2">クレジットカード
				</div>
				<table>
				<tr>
					<td><s:submit value="購入" /></td>
				</tr>
				</table>
			</s:form>
		</div>

		</div>


	<footer>
		<div id="idou">
			<div>
				<p>
					前画面に戻る場合は <a href='<s:url action="GoHomeAction"/>'>こちら</a>
				</p>
				<p>
					マイページは<a href='<s:url action="MyPageAction"/>'>こちら</a>
				</p>
			</div>
		</div>
	</footer>
</body>
<!--  <body>
	<div id="header">
		<div id="pr"></div>
	</div>
	<div id="main">
		<div id="top">
			<p>購入画面（buyItem）</p>
		</div>
		<div>
			<span>ユーザ-ID</span>
			<s:property value="session.login_user_id" />
		</div>
		<div>
			<s:form action="BuyItemAction" theme="simple">
				<tr>
					<th>#</th>
					<th>id</th>
					<th>商品名</th>
					<th>価格</th>
					<th>在庫</th>
					<th>購入個数</th>
				</tr>
				<s:iterator value="itemListDTOList">
					<table border="1">
						<tr>
							<td><s:checkbox name="checkList"  value="checked" fieldValue="%{id}"/></td>
							<td><s:property value="id" /><s:hidden name="id" value="%{id}" /></td>
							<td><s:property value="itemName" /><s:hidden name="itemName" value="%{itemName}" /></td>
							<td><s:property value="itemPrice" /><span>円</span><s:hidden name="itemPrice" value="%{itemPrice}" /></td>
							<td><s:property value="itemStock" /><s:hidden name="itemStock" value="%{itemStock}" /></td>
							<td><select name="count">
									<option value="1" selected="selected">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
							</select></td>
						</tr>
					</table>
				</s:iterator>

				<tr>
					<td><span>支払い方法</span></td>
					<td><input type="radio" name="pay" value="1" checked="checked">現金払い
						<input type="radio" name="pay" value="2">クレジットカード</td>
				</tr>
				<tr>
					<td><s:submit value="購入" /></td>
				</tr>

			</s:form>
			<div>
				<p>
					前画面に戻る場合は <a href='<s:url action="GoHomeAction"/>'>こちら</a>
				</p>
				<p>
					マイページは<a href='<s:url action="MyPageAction"/>'>こちら</a>
				</p>
			</div>
		</div>
	</div>
	<div id="footer">
		<div id="pr"></div>
	</div>

</body>-->
</html>