<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.text.*,java.util.*" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<link href="../css/userbuy.css" rel="stylesheet" type="text/css">

<link href="../css/component.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="../css/alert.css"/>
<script>
//弹出调用的方法
function showDivFun1()
	{
		document.getElementById('test1').style.display='block';
		document.getElementById('test2').style.display='none';
		document.getElementById('test3').style.display='none';
		document.getElementById('test4').style.display='none';
	}
function showDivFun2()
	{
		document.getElementById('test2').style.display='block';
		document.getElementById('test1').style.display='none';
		document.getElementById('test3').style.display='none';
		document.getElementById('test4').style.display='none';
	}
function showDivFun3()
	{
		document.getElementById('test3').style.display='block';
		document.getElementById('test2').style.display='none';
		document.getElementById('test1').style.display='none';
		document.getElementById('test4').style.display='none';
	}
function showDivFun4()
	{
		document.getElementById('test4').style.display='block';
		document.getElementById('test2').style.display='none';
		document.getElementById('test3').style.display='none';
		document.getElementById('test1').style.display='none';
	}
	$("div#head1").scroll(function(e)
	{
		alert("----");
		if($(document).scrollTop()>="108px")
		   {
			   $("head1").css("position","fixed");
		   }
	});
</script>
<title>HomeCook</title>

</head>
<!--<script language="javascript">
function scrollImg(){
    var posX,posY;
    if (window.innerHeight) {
        posX = window.pageXOffset;
        posY = window.pageYOffset;
    }
    else if (document.documentElement && document.documentElement.scrollTop) {
        posX = document.documentElement.scrollLeft;
        posY = document.documentElement.scrollTop;
    }
    else if (document.body) {
        posX = document.body.scrollLeft;
        posY = document.body.scrollTop;
    }
    var ad=document.getElementById("head2");
    ad.style.top=(posY+100)+"px";
    ad.style.left=(posX+50)+"px";
    setTimeout("scrollImg()",100);
}
scrollImg();
</script>-->
<body>

<div id="head1">
  <div class="surplusl"></div>
  <div id="main">
		<table class="main-table">
			<tr>
				<td>
				<div id="img-"><img id="address" src="../image/addp.png"></div>
				<div id="font-">合川区&nbsp;重庆邮电大学移通学院</div>
				</td>
			</tr>
		</table>
	</div>
	<div id="my-list">
	  <table id="main-table">
		  <tr>
				<td><a class="a-title" href="#">登录</a>&nbsp;|&nbsp;<a class="a-title" href="#">注册</a></td>
			</tr>
		</table>
  </div>
  <div id="my-data">
		<table class="main-table">
			<tr>
				<td style="width:40%;">
				 <form action="../n/order.do">
						<input  type="hidden" name="user_name" value="${user_name}"/>
						<input type="submit" value="我的订单" style="border:none;color:white;background-color:transparent;" />
					</form>
				</td>
				<td>
					<a class="a-title" href="#">联系我们</a>
				</td>
			</tr>
		</table>
	</div>
  <div class="surplusr"></div>
</div>
<div id="head2">
	<div class="surplusl"></div>
	<div id="head2-body1">
		<img id="logo" src="../image/HomeCook.png">
	</div>
	<div id="head2-body3">
		<table id="head2-body3-table"><tr><td>随时随地享美食，chef~</td></tr></table>
	</div>
	<div id="head2-body2">
		<table id="head2-body2-table">
			<tr>
				<td><input type="text" id="ta-td1">&nbsp;&nbsp;
				<input type="button" value="搜索" id="ta-td2"></td>
			</tr>
		</table>
	</div>
	<div class="surplusr"></div>
</div>
<div id="body-menu1">
	<div id="menu">
		<table id="menu-table">
			<tr><th colspan="6">菜品</th></tr>
			<tr>
				<td style="width:10%"></td> 
				<td style="width:20%">
					<!-- <a class="menu-table-a" href="javascript:showDivFun4()">所有订单</a> -->
					<div id="test4">
						<!-- <iframe src="所有订单.html" width="100%" height="720px" frameborder="0">
						</iframe> -->
					</div>
				</td>
				<td style="width:20%">
				<!-- 	<a class="menu-table-a" href="javascript:showDivFun1()">已下单</a> -->
					<div id="test1">
						<!-- <iframe src="已下单.html" width="100%" height="720px" frameborder="0">
						</iframe> -->
					</div>
				</td>
				<td style="width:20%">
<!-- 					<a class="menu-table-a" href="javascript:showDivFun2()">待配送</a>
 -->					<div id="test2">
						<!-- <iframe src="待配送.html" width="100%" height="720px" frameborder="0">
						</iframe> -->
					</div>
				</td>
				<td style="width:20%">
<!-- 					<a class="menu-table-a" href="javascript:showDivFun3()">待评价</a>
 -->					<div id="test3">
						<!-- <iframe src="待评价.html" width="100%" height="720px" frameborder="0">
						</iframe> -->
					</div>
				</td>
				<td style="width:10%"></td>
			</tr>
		</table>
	</div>
	<div id="menu2">

	 <c:forEach  items="${requestScope.list}" var="map" >
<div class = "imgshow">
	<a href="javascript:;" class="md-trigger btn btn-primary btn-sm" data-modal="modal-9">
	<img src="../${map.path}" alt="" class = "img1">
		<div class = "bg"></div>
	<br/>
		<div class = "whitefont">
			菜名：<input type="text" value="${map.cuisine_name}" readonly="readonly" class = "input">
			<br/>
			价格：<input type="text" value="${map.price}" readonly="readonly" class = "input">
		</div>
	</a>
</div>
 <div class="md-modal md-effect-9" id="modal-9">
	<div class="md-content">
		<h3>菜品详情</h3>
		<div>
			<div id = "innershow">
				<img src="../${map.path}" alt="" class = "img1">
				<br/>
				菜名：<input type="text" value="${map.cuisine_name}" readonly="readonly" class = "innerinput">
				<br/>
				材料：<input type="text" value="${map.material }" readonly="readonly" class = "innerinput">
				<br/>
				做法：<textarea rows="" cols="" readonly="readonly">${map.method}</textarea>	
				<br/>
				描述：<textarea rows="" cols="" readonly="readonly">${map.description} </textarea>
				<br/>
				价格：<input type="text" value="${map.price}"  class = "innerinput">
			</div>
			<button class="md-close btn-sm btn-primary">关闭</button>
			


			<form action = "../n/userorder.do" method="post">
<% 	Date date = new Date();
    	SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    	String today = df.format(date);
   request.setAttribute("date", today);
    	%>

<input  type="hidden"  value="${user_name}" name="order_user_name"/>
<input  type="hidden"  value="${map.hc_name}" name="hc_name"/>
<input  type="hidden"  value="0" name="order_status"/>
<input  type="hidden"  value="${map.cuisine_name}" name="order_food_name"/>
<input  type="hidden"  value="0" name="order_comment"/>
<input  type="hidden"  value="${date}" name="order_time"/>
<input  type="submit" value="订单"/>
</form>		</div>
	</div>
</div> 
<div class="md-overlay"></div>
<!-- <c:if  test="i==4">
	<br/>
</c:if> -->


</c:forEach>
	</div>
</div>
 <div id="footer">
 <div id="r1"> 
 <table id="r1-table">
	<tr>
		<td>用户帮助</td></tr>
		<tr><td></td></tr>
		<tr><td><a href="http://www.baidu.com" style="color: #5F5E5E;">常见问题</a> </td></tr>
</table>
 </div>
 <div id="r2">
 <table id="r2-table">
	<tr>
		<td>版权：重庆邮电大学移通学院</td></tr>
		<tr><td>双体系卓越人才教育基地</td></tr>
		<tr><td>12期星辰一部</td></tr>
		<tr><td>@惊鸿五组</td></tr>
</table>
 </div>	
 <div id="r3"> 
 <table id="r3-table">
	<tr>
		<td>联系我们</td>
	</tr>
		<tr><td></td></tr>
	<tr>
		<td>18883989195</td>
	</tr>
</table>
 </div>
 <div id="r4">
 <img id="r4-img" src="../image/photo.jpg">
 </div>
 <div id="r5">
 	<table id="r5-table"><tr><td>扫一扫看更多哦~</td></tr></table>
 </div>
</div>
</body>
<script src="../js/classie.js"></script>
<script src="../js/modalEffects.js"></script>
</html>







<%-- <html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
${user_name}
<form action="../n/order.do">
<input  type="hidden" name="user_name" value="${user_name}"/>
<input type="submit" value="我的订单"  />

</form>

 <form  action="../a/user.do">
    1<input type="text" name="order_id"  value="1"/> 
   2<input type="text" name="order_user_name"  value="${user_name}"/>
   4<input type="text" name="order_time"  value="132123"/>
  5<input type="text" name="order_food_id"  value="1123"/>
  6<input type="hidden" name="order_status"  value="2"/> 
  <input type="hidden" name="order_comment"  value="0"/> 
   
<input  type="submit"  value="order"/>
</form>

</body>
</html> --%>