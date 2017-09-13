<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="../css/yxd.css" type="text/css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<div id="my-cooker">
	<table id="my-cooker-table">
		<tr>
			<td style="font-size: 18px;font-weight: bold;vertical-align: middle">我的家厨</td>
		</tr>
	</table>
</div>
<div id="ordered">
<table id="ordered-table">
	<tr>
		<th>宝贝</th>
		<th>名称</th>
		<th>数量</th>
		<th>价格</th>
		<th>交易操作</th>
	</tr>
	<c:forEach  items="${info}" var="qsy">
<c:if test="${qsy.order_status=='0'}">
	<tr>
		<td class="td-baby">1</td>
		<td class="td-general">${ qsy.order_food_name}</td>
		<td class="td-general">1</td>
		<td class="td-general">1</td>
		<td class="td-general"><a href="#" id="cancel">取消订单</a></td>
	</tr>
	</c:if>
</c:forEach> 
</table>
</div>



</body>
</html>