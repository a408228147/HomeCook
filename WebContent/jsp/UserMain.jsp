<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.text.*,java.util.*" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
<script src="http://api.map.baidu.com/api?v=2.0&ak=zM59rTctT46ke2ky4R82pBYFz35jbbyH" type="text/javascript"></script>
<link href="../css/userbuy.css" rel="stylesheet" type="text/css">

<link href="../css/component.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="../css/alert.css"/>
<title>用户主页</title>
<style type="text/css">
	body, html{width: 100%;height: 100%;margin:0;font-family:"微软雅黑";font-size:14px;}
	#l-map{height:300px;width:100%;}
	#r-result{width:100%;}
</style>

</head>
<body>
欢迎您，${param.user_name }<p>
<a href="../User/UserInfo.do?user_name=${param.user_name}">个人信息</a>
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
<div id="l-map"></div>
<div id="r-result">请输入:<input type="text" id="suggestId" size="20" value="百度" style="width:300px; height: 30px" /></div>
<div id="searchResultPanel" style="border:1px solid #C0C0C0;width:150px;height:auto; display:none;"></div>
</body>
</html>
<script src="../js/classie.js"></script>
<script src="../js/modalEffects.js"></script>
<script type="text/javascript">
    // 百度地图API功能
    function G(id) {
        return document.getElementById(id);
    }

    var map = new BMap.Map("l-map");
    map.centerAndZoom("重庆",12);                   // 必须是设置的，初始化地图,设置城市和地图级别。
    map.enableScrollWheelZoom(true);     //开启鼠标




    /*var point = new BMap.Point(116.417854,39.921988);
     map.centerAndZoom(point, 15);
     var opts = {
     position : point,    // 指定文本标注所在的地理位置
     offset   : new BMap.Size(30, -30)    //设置文本偏移量
     }
     var label = new BMap.Label("家居安静安静房顶上", opts);  // 创建文本标注对象
     label.setStyle({
     color : "red",
     fontSize : "12px",
     height : "20px",
     lineHeight : "20px",
     fontFamily:"微软雅黑"
     });            *///这段代码是测试自定义在地图上标记的，不要了






    var ac = new BMap.Autocomplete(    //建立一个自动完成的对象
        {"input" : "suggestId"
            ,"location" : map
        });

    ac.addEventListener("onhighlight", function(e) {  //鼠标放在下拉列表上的事件
        var str = "";
        var _value = e.fromitem.value;
        var value = "";
        if (e.fromitem.index > -1) {
            value = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;
        }
        str = "FromItem<br />index = " + e.fromitem.index + "<br />value = " + value;

        value = "";
        if (e.toitem.index > -1) {
            _value = e.toitem.value;
            value = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;
        }
        str += "<br />ToItem<br />index = " + e.toitem.index + "<br />value = " + value;
        G("searchResultPanel").innerHTML = str;
    });

    var myValue;
    ac.addEventListener("onconfirm", function(e) {    //鼠标点击下拉列表后的事件
        var _value = e.item.value;
        myValue = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;
        G("searchResultPanel").innerHTML ="onconfirm<br />index = " + e.item.index + "<br />myValue = " + myValue;

        setPlace();
    });

    function setPlace(){
        map.clearOverlays();    //清除地图上所有覆盖物
        function myFun(){
            var pp = local.getResults().getPoi(0).point;    //获取第一个智能搜索的结果
            map.centerAndZoom(pp, 18);
            map.addOverlay(new BMap.Marker(pp));    //添加标注
        }
        var local = new BMap.LocalSearch(map, { //智能搜索
            onSearchComplete: myFun
        });
        local.search(myValue);
    }
    
    
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

<!-- <script type="text/javascript">
	// 百度地图API功能
	var map = new BMap.Map("allmap");
	var point = new BMap.Point(116.331398,39.897445);
	map.centerAndZoom(point,12);

	var geolocation = new BMap.Geolocation();
	geolocation.getCurrentPosition(function(r){
		if(this.getStatus() == BMAP_STATUS_SUCCESS){
			var mk = new BMap.Marker(r.point);
			map.addOverlay(mk);
			map.panTo(r.point);
			alert('您的位置：'+r.point.lng+','+r.point.lat);
		}
		else {
			alert('failed'+this.getStatus());
		}        
	},{enableHighAccuracy: true})
	//关于状态码
	//BMAP_STATUS_SUCCESS	检索成功。对应数值“0”。
	//BMAP_STATUS_CITY_LIST	城市列表。对应数值“1”。
	//BMAP_STATUS_UNKNOWN_LOCATION	位置结果未知。对应数值“2”。
	//BMAP_STATUS_UNKNOWN_ROUTE	导航结果未知。对应数值“3”。
	//BMAP_STATUS_INVALID_KEY	非法密钥。对应数值“4”。
	//BMAP_STATUS_INVALID_REQUEST	非法请求。对应数值“5”。
	//BMAP_STATUS_PERMISSION_DENIED	没有权限。对应数值“6”。(自 1.1 新增)
	//BMAP_STATUS_SERVICE_UNAVAILABLE	服务不可用。对应数值“7”。(自 1.1 新增)
	//BMAP_STATUS_TIMEOUT	超时。对应数值“8”。(自 1.1 新增)
</script> -->