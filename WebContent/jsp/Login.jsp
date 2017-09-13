<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.1.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/Login.js"></script>
<title>用户登录</title>
</head>
<body>
<form action="../User/Login.do" method="post">
<input type="text" id="user_name" name="user_name" placeholder="请输入用户名"><p/>
<input type="password" id="user_password" name="user_password" placeholder="请输入密码"><p/>
<div id="tip"></div>
<input type="button" id="submit" value="登录">
<a href="Register.jsp">没有账户，去注册</a>
</form>
</body>
</html>