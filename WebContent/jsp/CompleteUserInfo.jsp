<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>完善个人信息</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.1.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/AddressSelection.js"></script>
</head>
<body>
<form action="../User/CompleteUserInfo.do">
电话：<input type="text" id="telephone" name="user_phone" value="">
<div id="address">地址：</div>
<input type="hidden" class="in" name="user_address" value="">
自我介绍：<input type="text" class="self_introduce" name="user_introduce" value="">
<div class="tip"></div>
<input type="hidden" class="username" value="${param.user_name }">
<input type="button" value="确定" class="submit">
</form>
</body>
</html>