<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/HomeCook/css/styles.css">
<link href="/HomeCook/css/chefshow.css" rel="stylesheet">


<script type="text/javascript" src="/HomeCook/js/chefshow.js"></script>
<script type="text/javascript" src="/HomeCook/js/jquery-3.2.1.js"></script>
<link href="/HomeCook/css/component2.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="/HomeCook/css/alert.css"/>
<script type="text/javascript">


function f1(e){

	$.ajax({
		data:{"order_id":e,"hc_name":"3"},/* 这里需要把3换成 hc_name */
		dataType:"json",
	    type:"get",
		url:"/HomeCook/b/Ajax9.do",
		error:function(data){
			$("#right5").html();
		},
		success:function(data){
			$("#right5").html('');
				    var msg="<table id='t1'><tr><th>菜品名称</th><th>用户</th><th>时间</th><th>操作</th></tr>";
			        $.each(data, function (i, item) {
			        	msg += "<tr><td style='width:200px; text-align:center'>" + item.order_food_name + "</td>";
		                msg += "<td style='width:200px; text-align:center'>" + item.order_user_name+ "</td>";
		                msg += "<td style='width:300px; text-align:center'>" +item.order_time + "</td>";
			        	msg +="<td style='width:250px; text-align:center'>" +"<a class='del2' href='' onclick='f1("+item.order_id+");return false;'>删除</a>"+"</td>";
			        	msg+="</tr>"; 
			        });
			
				    msg+="</table>";
				    $("#right5").html(msg);	    
		}                   		       
		});
	
}


function f(e){
	$.ajax({
		data:{"order_id":e,"hc_name":"3"},
		dataType:"json",
	    type:"get",
		url:"/HomeCook/b/Ajax7.do",
		error:function(data){
			$("#right4").html();
		},
		success:function(data){
			
			$("#right4").html('');
				    var msg="<table id='t1'><tr><th>菜品名称</th><th>用户</th><th>时间</th><th>操作</th></tr>";
			        $.each(data, function (i, item) {   
		                msg += "<tr><td style='width:200px; text-align:center'>" + item.order_food_name + "</td>";
		                msg += "<td style='width:200px; text-align:center'>" + item.order_user_name+ "</td>";
		                msg += "<td style='width:300px; text-align:center'>" +item.order_time + "</td>";
			        	msg +="<td style='width:250px; text-align:center'>" +"<a class='del2' href='' onclick='f("+item.order_id+");return false;'>已完成</a>"+"</td>";  
			        	msg+="</tr>"; 
			        });
				    
				    msg+="</table>";
				    $("#right4").html(msg);	    
		}                   		       
		}); 
	
	$.ajax({
		data:"hc_name="+"3",/* 这里需要把3换成 hc_name */
		dataType:"json",
	    type:"get",
		url:"/HomeCook/b/Ajax5.do",
		error:function(data){
			$("#rq4").html();
		},
		success:function(data){
			
			 if(data.e==0){
				 $("#rq4").removeAttr('style','background-image');}  
			 else{
				$("#rq4").html(data.e);
				}
		
			 }
		});
}


$(document).ready(function r3(){
	$.ajax({
		data:"hc_name="+"3",/* 这里需要把3换成 hc_name */
		dataType:"json",
	    type:"get",
		url:"/HomeCook/b/Ajax3.do",
		error:function(data){
			$("#rq3").html();
		},
		success:function(data){
			 if(data.d==0){
				 $("#rq3").removeAttr('style','background-image');}  
			 else{
	         
				$("#rq3").html(data.d);
				}
		
			 }
		});
	
	$.ajax({
		data:"hc_name="+"3",/* 这里需要把3换成 hc_name */
		dataType:"json",
	    type:"get",
		url:"/HomeCook/b/Ajax4.do",
		error:function(data){
			$("#right3").html();
		},
		success:function(data){
				 document.getElementById('right2').style.display='none';
				    document.getElementById('right3').style.display='block'; 
				    document.getElementById('right1').style.display='none'; 			    
				    document.getElementById('right4').style.display='none';
				    document.getElementById('right5').style.display='none'; 
				    var msg="<table id='t1'><tr><th>菜品名称</th><th>用户</th><th>时间</th><th>操作</th></tr>";
			      
				    $.each(data, function (i, item) {  
			        	
			        
		                msg += "<tr><td style='width:200px; text-align:center'>" + item.order_food_name + "</td>";
		                msg += "<td style='width:200px; text-align:center'><a href='javascript:;' class='md-trigger btn btn-primary btn-sm' data-modal='modal-9'>"+item.order_user_name+"</a></td>";
		          
		                
 
		                msg += "<td style='width:300px; text-align:center'>" +item.order_time + "</td>";
			        	msg += "<td style='width:250px; text-align:center'>"+"<a  href='/HomeCook/n/uporder.do?order_id="+item.order_id+"'>接单</a>|<a  href='#接单' >不接单</a>"+"</td>";
		                
			        	msg+="</tr>"; 
			        	 msg+= "<div class='md-modal md-effect-9' id='modal-9'>";
			            msg+= "<div class='md-content'>"; 
			                msg+="<h3>用户信息</h3>";
			                 msg+= "<div>";
			                    msg+="联系方式：<input type='text' readonly='readonly' value='13913830961' class='innerinput'>";
			                     msg+=" <br/>";
			                    msg+="地址：<input type='text' readonly='readonly' value='江苏省南京市白下区后标营XXX号X幢XXXX室' class='innerinput2'>";
			                      msg+="<br/>";
			                      msg+="<br/>";
			                    msg+="<button class='md-close btn-sm btn-primary'>关闭</button>"; 
			                 msg+="</div>";
			                 msg+="</div>";
			                 msg+="</div>";
			         msg+="<div class='md-overlay'></div>";       
			        	/* alert(item.order_time + ","  + item.order_food_name);  */ 
			        });
				    
				    msg+="</table>";
				    $("#right3").html(msg);	 
				   	
				    
		}                   		       
		});
	
	$.ajax({
		data:"hc_name="+"3",/* 这里需要把3换成 hc_name */
		dataType:"json",
	    type:"get",
		url:"/HomeCook/b/Ajax5.do",
		error:function(data){
			$("#rq4").html();
		},
		success:function(data){
			 if(data.e==0){
				 $("#rq4").removeAttr('style','background-image');}  
			 else{
				$("#rq4").html(data.e);
				}
		
			 }
		});
	
	$.ajax({
		data:"hc_name="+"3",/* 这里需要把3换成 hc_name */
		dataType:"json",
	    type:"get",
		url:"/HomeCook/b/Ajax6.do",
		error:function(data){
			$("#right3").html();
		},
		success:function(data){
				/*  document.getElementById('right2').style.display='none';
				    document.getElementById('right3').style.display='block'; 
				    document.getElementById('right1').style.display='none'; 			    
				    document.getElementById('right4').style.display='none';
				    document.getElementById('right5').style.display='none';  */
				    var msg="<table id='t1'><tr><th>菜品名称</th><th>用户</th><th>时间</th><th>操作</th></tr>";
			        $.each(data, function (i, item) {  
			        	
			        
		                msg += "<tr><td style='width:200px; text-align:center'>" + item.order_food_name + "</td>";
		                msg += "<td style='width:200px; text-align:center'>" + item.order_user_name+ "</td>";
		                msg += "<td style='width:300px; text-align:center'>" +item.order_time + "</td>";
			        	msg +="<td style='width:250px; text-align:center'>" +"<a class='del2' href='' onclick='f("+item.order_id+");return false;'>已完成</a>"+"</td>";
	                
			        	msg+="</tr>"; 
			        	/* alert(item.order_time + ","  + item.order_food_name);  */ 
			        });
				    
				    msg+="</table>";
				    $("#right4").html(msg);	    
		}                   		       
		});
	
	
	
	$.ajax({
		data:"hc_name="+"3",/* 这里需要把3换成 hc_name */
		dataType:"json",
	    type:"get",
		url:"/HomeCook/b/Ajax8.do",
		error:function(data){
			$("#right5").html();
		},
		success:function(data){
				/*  document.getElementById('right2').style.display='none';
				    document.getElementById('right3').style.display='block'; 
				    document.getElementById('right1').style.display='none'; 			    
				    document.getElementById('right4').style.display='none';
				    document.getElementById('right5').style.display='none';  */
				    var msg="<table id='t1'><tr><th>菜品名称</th><th>用户</th><th>时间</th><th>操作</th></tr>";
			        $.each(data, function (i, item) {
			        	msg += "<tr><td style='width:200px; text-align:center'>" + item.order_food_name + "</td>";
		                msg += "<td style='width:200px; text-align:center'>" + item.order_user_name+ "</td>";
		                msg += "<td style='width:300px; text-align:center'>" +item.order_time + "</td>";
			        	msg +="<td style='width:250px; text-align:center'>" +"<a class='del2' href='' onclick='f1("+item.order_id+");return false;'>删除</a>"+"</td>";
	                
			        	msg+="</tr>"; 
			        	/* alert(item.order_time + ","  + item.order_food_name);  */ 
			        });
				    
				    msg+="</table>";
				    $("#right5").html(msg);	 
				    
		}                   		       
		});
	
})
  function r3 () {
 
	document.getElementById('right2').style.display='none';
    document.getElementById('right3').style.display='block'; 
    document.getElementById('right1').style.display='none';
    document.getElementById('right4').style.display='none';
    document.getElementById('right5').style.display='none'; 

}  

</script>

<body>
<a href="javascript:;" class="md-trigger btn btn-primary btn-sm" data-modal="modal-9">1</a>

<div class="md-modal md-effect-9" id="modal-9">
    <div class="md-content">
        <h3>用户信息</h3>
        <div>
            联系方式：<input type="text" readonly="readonly" value="13913830961" class="innerinput">
            <br/>
            地址：<input type="text" readonly="readonly" value="江苏省南京市白下区后标营XXX号X幢XXXX室" class="innerinput2">
            <br/>
            <br/>
            <button class="md-close btn-sm btn-primary">关闭</button>
        </div>
    </div>
</div>
<div class="md-overlay"></div>
<div id="boder">
    <div id="hea">
        <div id="head1">
            <div class="surplusl"></div>
            <div id="main">
                <table class="main-table">
                    <tr>
                        <td>
                            <div id="img-"><img id="address" src="/HomeCook/image/29.png"></div>
                            <div id="font-">合川区&nbsp;重庆邮电大学移通学院</div>
                        </td>
                    </tr>
                </table>
            </div>
            <div id="my-list">
                <table id="main-table">
                    <tr>
                        <td> <a onclick="show1()" class="btn btn-primary btn-large theme-login" style="font-size: 16px;">登录/注册</a></td>
                    </tr>
                </table>
            </div>
            <div id="my-data">
                <table class="main-table">
                    <tr>
                        <td><a class="a-title" href="#"style="font-size: 16px" >&nbsp;&nbsp;我的菜品</a>
                            <a class="a-title" href="#" style="font-size: 16px">&nbsp;&nbsp;我的信息</a>

                            <!--<a class="a-title" href="#" style="font-size: 10px">&nbsp;&nbsp;我的订单</a></td>-->
                    </tr>
                </table>
            </div>
            <div class="surplusr"></div>
        </div>
        <div id="head2">
            <div class="surplusl"></div>
            <div id="head2-body1">
                <img id="logo" src="/HomeCook/image/HomeCook.png">
            </div>
            <div id="head2-body3">
                <table id="head2-body3-table"><tr><td>随时随地享美食，chef~</td></tr></table>
            </div>
            <div id="head2-body2">
                <table id="head2-body2-table">
                    <tr>
                        <td><input type="text" id="ta-td1">&nbsp;
                            <input type="button" value="搜索" id="ta-td2"></td>
                    </tr>
                </table>
            </div>
            <div class="surplusr"></div>
        </div>
    </div>
<center>

<div id="left">
    <div id="le1">
        <ul>
            <br/>
            <li><a href="JavaScript:r1()"> 历史菜品</a></li><br/><br/>
            <li><a href="JavaScript:r2()"> 上传菜品 </a> </li><br/><br/>
            <li> <a href="JavaScript:r3()">我的订单</a> </li><br/><br/>
            <li><a href="JavaScript:r4()">已接订单</a></li><br/><br/>
            <li> <a href="JavaScript:r5()">历史订单</a> </li>
        </ul>
    </div>
<div id="rq3"  style="background-image:url('/HomeCook/image/1.png')"></div>
<div id="rq4"  style="background-image:url('/HomeCook/image/1.png')"></div>
   
    <div id="right">
        
        
       
     
        <div id="right1"><!-- 历史菜品 -->

            <div id="in1">
        <img src="/HomeCook/image/22.jpg" style="width: 130px; height: 130px; position: relative;margin-top: 3%;right: 40%;border-radius: 10px;" ><br/><br/>
            <div id="inn1">
                <a href="#"; style=" font-size: 16px; font-family: 幼圆 ;color: white" >菜名 </a>
            </div>
            </div>

            <div id="in2">
                <img src="/HomeCook/image/22.jpg" style="width: 130px; height: 130px; position: relative;margin-top: 3%;right: 40%;border-radius: 10px;" ><br/><br/>
                <div id="inn2">
                    <a href="#"; style=" font-size: 16px; font-family: 幼圆 ;color: white" >菜名 </a>
                </div>
            </div>

            <div id="in3">
                <img src="/HomeCook/image/22.jpg" style="width: 130px; height: 130px; position: relative;margin-top: 3%;right: 40%;border-radius: 10px;" ><br/><br/>
                <div id="inn3">
                    <a href="#"; style=" font-size: 16px; font-family: 幼圆 ;color: white" >菜名 </a>
                </div>
            </div>

            <div id="in4">
                <img src="/HomeCook/image/22.jpg" style="width: 130px; height: 130px; position: relative;margin-top: 3%;right: 40%;border-radius: 10px;" ><br/><br/>
                <div id="inn4">
                    <a href="#"; style=" font-size: 16px; font-family: 幼圆 ;color: white" >菜名 </a>
                </div>
            </div>

            <div id="in5">
                <img src="/HomeCook/image/22.jpg" style="width: 130px; height: 130px; position: relative;margin-top: 3%;right: 40%;border-radius: 10px;" ><br/><br/>
                <div id="inn5">
                    <a href="#"; style=" font-size: 16px; font-family: 幼圆 ;color: white" >菜名 </a>
                </div>
            </div>

            <div id="in6">
                <img src="/HomeCook/image/22.jpg" style="width: 130px; height: 130px; position: relative;margin-top: 3%;right: 40%;border-radius: 10px;" ><br/><br/>
                <div id="inn6">
                    <a href="#"; style=" font-size: 16px; font-family: 幼圆 ;color: white" >菜名 </a>
                </div>
            </div>

        </div>

        <div id="right2" ><!-- 上传菜品  -->
            <div id="r2-1">
                <img src="/HomeCook/image/14.jpg" style="width: 300px; height: 300px; position: relative;margin-top:5%;right: 25%;border-radius: 10px;" ><br/><br/>
            </div>
            <div id="r2-2">
                
<table>
<form action="upload.do" method="post" enctype="multipart/form-data" >
<tr><td>上传图片：<input   type="file" name="file1"  value="上传图片"/></td></tr>
  <tr><td>菜名：<input type="text" name = "cuisine_name"/></td></tr>
  <tr><td>价格：<input type="text" name = "price"></td></tr>    
  <tr><td> 食材：<input type="text" name = "material"/></td></tr>     
  <tr><td> 烹饪手法：<input type="text" name = "method"/></td></tr>
  <tr><td>  菜品描述：<input type="text" name = "description"/></td></tr>
  <tr><td>  <input type="hidden"  name="hc_name" value="3" /></td></tr>
  <tr><td> <input type="submit" value="提交"></td></tr>
</form>
</table>
            </div>
            
        </div>
        <div id="right3"  ><!--我的订单  -->
  
        </div>
 


         <div id="right4" ><!--已接订单  -->


        </div>
         <div id="right5" ><!--历史订单  -->


        </div>



    </div>
	
</div>






</center>


    <div id="footer">
        <div id="r1">
            <table id="r1-table">
                <tr>
                    <td>用户帮助</td>
                </tr>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td><a href="http://www.baidu.com" style="color: #5F5E5E;">常见问题</a></td>
                </tr>

            </table>

        </div>
        <div id="r2">
            <table id="r2-table">
                <tr>
                    <td>版权：重庆邮电大学移通学院</td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;双体系卓越人才教育基地</td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;12期星辰一部</td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;@惊鸿五组</td>
                </tr>
            </table>
        </div>
        <div id="r3">
            <table id="r3-table">
                <tr>
                    <td>&nbsp;&nbsp;联系我们</td>
                </tr>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td>18883989195</td>
                </tr>

            </table>
        </div>
        <div id="r4">
            <img id="r4-img" src="/HomeCook/image/28.png">
        </div>
        <div id="r5">
            <table id="r5-table"><tr><td>扫一扫看更多哦~</td></tr></table>
        </div>
    </div>
</div>
<script src="/HomeCook/js/classie.js"></script>
<script src="/HomeCook/js/modalEffects.js"></script>

</body>
</html>