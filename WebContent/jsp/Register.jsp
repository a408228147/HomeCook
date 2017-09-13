<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.1.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/Register.js"></script>
<title>注册</title>
</head>

<body>
<form action="../User/Register.do" method="post">
<input type="text" id="user_name" name="user_name" placeholder="请输入用户名">
<span id="tip1"></span><p/>
<input type="password" id="user_password" name="user_password" placeholder="请输入密码">
<span id="tip2"></span><p/>
<input type="password" id="user_password2" name="user_password2" placeholder="确认密码">
<span id="tip3"></span><p/>
<input type="submit" id="submit" value="注册" disabled="disabled">
<a href="Login.jsp">已有账户，去登陆</a>
</form>
</body>
</html>