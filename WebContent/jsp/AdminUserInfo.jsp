<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户信息</title>
<link href="${pageContext.request.contextPath}/css/AdminUserInfo.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.1.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/AdminUserInfo.js"></script>
</head>

<body>
<div id="show">当前共有<span class="memberCount"></span>位用户</div>
<br/>
<div id="div-information">
	<table id="user_info" cellspacing="0px" cellpadding="0px">
		<tr>
			<td align="center">ID</td>
			<td align="center">用户名</td>
			<td align="center">密码</td>
			<td align="center">电话</td>
			<td align="center">地址</td>
			<td align="center">个人简介</td>
			<td align="center">用户权限</td>
			<td colspan="2" align="center">操作</td>
		</tr>
	</table>
</div>

<div class="alterDiv" 
style="width:100%;height:280px;">
<center>
	<table>
		<tr>
			<td>用户名</td>
			<td><input class="user_name_change"></td>
			<td class="tip1"></td>
		</tr>
		<tr>
			<td>密码</td>
			<td><input class="user_password_change"></td>
			<td class="tip2"></td>
		</tr>
		<tr>
			<td>电话</td>
			<td><input class="user_phone_change"></td>
			<td class="tip3"></td>
		</tr>
		<tr>
			<td>地址</td>
			<td id="address"><input class="user_address_change"></td>
			<td class="tip4"></td>
		</tr>
		<tr>
			<td>个人简介</td>
			<td><input class="user_introduce_change"></td>
		</tr>
		<tr>
			<td>用户权限</td>
			<td>
				<select class="user_power_change">
					<option value="0">普通用户</option>
					<option value="1">厨师</option>
					<option value="2">管理员</option>
				</select>
			</td>
		</tr>
		<tr>
			<td class="ajaxTip" colspan="3"></td>
		</tr>
		<tr>
			<td><button id="confirm">确定</button></td>
			<td><button id="cancel">取消</button></td>
		</tr>
	</table>
</center>
	<input type="hidden" class="user_id_change">
	
</div>

</body>
</html>