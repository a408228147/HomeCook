<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.text.*,java.util.*" %>    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="../css/dpj.css" type="text/css" rel="stylesheet">

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
<% 	Date date = new Date();
    	SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    	String today = df.format(date);
   request.setAttribute("date", today);
    	%>
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
<c:if test="${qsy.order_status==2}">
<c:if test="${qsy.order_comment==0}">
	<tr>
		<td class="td-baby">1</td>
		<td class="td-general">${ qsy.order_food_name}</td>
		<td class="td-general">1</td>
		<td class="td-general">1</td>
		<td class="td-general"><form  action="comment.do">
<input  type="hidden" name="comment_user_name" value="${user_name} "/>
<input   type="hidden" name="comment_time" value="${date}"       />
<input  type="text"  name="comment_content" value="1"/>
<input  type="hidden"  name="comment_order_id" value="${qsy.order_id} " />
 <input type="submit" value="评价" />
</form></td>
	</tr>
	</c:if>
</c:if>
</c:forEach> 
</table>
</div>






</body>
</html>