<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.1.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/AdminOrderInfo.js"></script>
<title>订单信息</title>
</head>
<body>
当前共有<span class="orderCount"></span>条订单信息
<table id="order_info">
	<tr>
		<td align="center">ID</td>
		<td align="center">订单发起人</td>
		<td align="center">订单时间</td>
		<td align="center">食品名称</td>
		<td align="center">订单状态</td>
		<td align="center">订单评论</td>
		<td align="center">订单接受人</td>
		<td align="center">操作</td>
	</tr>
</table>
</body>
</html>