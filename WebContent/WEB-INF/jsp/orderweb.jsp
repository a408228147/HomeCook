<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="../js/jquery-3.2.1.js"></script>
<title>Insert title here</title>
</head>

<link href="../css/userbuy.css" rel="stylesheet" type="text/css">
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
$(document).ready(function count(){
	$.ajax({
		data:"user_name="+${user_name},
		dataType:"json",
	    type:"get",
		url:"../b/Ajax.do",
		error:function(data){
			$("#result").html();
		},
		success:function(data){
			 if(data.a==0){
				 $("#result").removeAttr('style','background-image');}  
			 else{$("#result").html(data.a);	}
		}
		});
	
	
	$.ajax({
		data:"user_name="+${user_name},
		dataType:"json",
	    type:"get",
		url:"../b/Ajax1.do",
		error:function(data){
			$("#result1").removeAttr();
		},
		success:function(data){
			 if(data.c==0){
				 $("#result1").removeAttr('style','background-image');} else{
			$("#result1").html(data.c);	
				 }
		}
		});
	
	$.ajax({
		data:"user_name="+${user_name},
		dataType:"json",
	    type:"get",
		url:"../b/Ajax2.do",
		error:function(data){
			$("#result2").removeAttr('style');
			
		},
		success:function(data){
			
			if(data.b==0){
				
			 $("#result2").removeAttr('style','background-image');}else
				 {
		$("#result2").html(data.b);	}
		}
		});
	})

</script>

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
				<td><a class="a-title" href="#">登录</a>
				&nbsp;|&nbsp;<a class="a-title" href="#">注册</a></td>
			</tr>
		</table>
  </div>
  <div id="my-data">
  
		<table class="main-table">
			<tr>
				<td style="width:40%;">
				<form action="../n/order.do">
				<input  type="hidden" name="user_name" value="${user_name}"/>
				<input id="list-sub" type="submit" value="我的订单"/></form>
				</td>
				<td>
				<a class="a-title" href="#">联系我们</a>
				</td>
			</tr>
		</table>
	</div>
  <div class="surplusl"></div>
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
	<div id="menu" >
	<!-- <a  href="" onclick="JavaScript:showDivFun4()">432</a>  -->
		<table id="menu-table">
			<tr><th colspan="6">我的订单</th></tr>
			<tr>
				<td style="width:10%"></td> 
				<td style="width:20%;">
					<%--  <form action="../z/history.do">
			        <input  type="hidden" name="user_name" value="${user_name}" />
			        <input class="menu-sub" type="submit" value="所有订单" onclick="JavaScript:showDivFun4()"/>
			        </form>  --%>
			       <a class="a-href"  href="JavaScript:showDivFun4()" style=" text-decoration:none">所有订单</a>
				</td>
					<div id="test4">
						 <iframe src="../z/history.do?user_name=${user_name}" width="100%" height="720px" frameborder="0">
						</iframe>
					</div>
				<td style="width:20%;">
			         <%-- <form action="../z/check.do">
				        <input  type="hidden" name="user_name" id="user_name1" value="${user_name}" />
				        <input class="menu-sub" type="submit"  value="已下单"/>
         			</form>  --%>
         		<a class="a-href" href=" JavaScript:showDivFun1()" class="menu-sub" style=" text-decoration:none">已下单</a>
         			<div  id="result" style="background-image:url('../image/1.png')"></div>
				</td>
					<div id="test1">
						<iframe src="../z/check.do?user_name=${user_name}" width="100%" height="720px" frameborder="0">
						</iframe>
					</div>
				<td style="width:20%;">
					<%--  <form action="../z/checkq.do">
				         <input  type="hidden" name="user_name" id="user_name2" value="${user_name}" />
				         <input class="menu-sub" type="submit"  value="待配送"/>
					 </form> --%>
					 <a class="a-href" href="JavaScript:showDivFun2()" style=" text-decoration:none">待配送</a>
						<div  id="result1" style =" background-image:url('../image/1.png')" ></div>
				</td>
					 <div id="test2">
						<iframe src="../z/checkq.do?user_name=${user_name}" width="100%" height="720px" frameborder="0">
						</iframe>
					 </div>
				<td style="width:20%;">
					 <%-- <form action="../z/checkp.do">
				         <input  type="hidden" name="user_name" id="user_name3" value="${user_name}" />
				         <input class="menu-sub" type="submit"  value="待评价"/>		
			         </form> --%>
			         <a class="a-href" href="JavaScript:showDivFun3()" style=" text-decoration:none">待评价</a>
			         	 <div  id="result2" style="background-image:url('../image/1.png')"></div>
				</td>
					<div id="test3">
						<iframe src="../z/checkp.do?user_name=${user_name}" width="100%" height="720px" frameborder="0">
						</iframe>
					</div>
				<td style="width:10%"></td>
			</tr>
		</table>
	</div>
	<div id="menu2">
		<!-- <iframe src="http://www.baidu.com " width="100%" height="720px" frameborder="0">
		</iframe> -->
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
</html>