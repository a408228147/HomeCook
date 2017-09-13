<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="${pageContext.request.contextPath}/css/test.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/login.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/styles.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.1.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/Login.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/Register.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/cityTemplate.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/index.js"></script>
<title>Home Cook</title>
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<!--  jquery文件 在bootstrap.min.js 前导入   -->
<script src="http://cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script>
jQuery(document).ready(function($) {
    $('.theme-login').click(function(){
        $('.theme-popover-mask').fadeIn(100);
        $('.theme-popover').slideDown(200);
    })
    $('.theme-poptit .close').click(function(){
        $('.theme-popover-mask').fadeOut(100);
        $('.theme-popover').slideUp(200);
    })

})
function show1(){
    document.getElementById('login').style.display='block';
}
function hide1(){
    document.getElementById('login').style.display='none';}
</script>
</head>

<body>
 
<div id="boder">
    <div id="hea">
        <div id="head1">
            <div class="surplusl"></div>
            <div id="main">
                <table class="main-table">
                    <tr>
                        <td>
                            <div id="img-"><img id="address" src="img/29.png"></div>
                            <div id="font-">
                            	<input type="text" placeholder="选择城市" id="place" name="city">
								<!-- 城市 -->
								<div id="in_city" style="background-color:#E1E0E0; z-index: 10000; position:fixed ; display: none;border-radius:10px 0;alpha(opacity=70); opacity: 0.9; text-decoration:none;  "></div>
                            </div>                                                                                                     
                        </td>
                    </tr>
                </table>
            </div>
            <div id="my-list">
                <table id="main-table">
                    <tr>
                        <td> <a onclick="show1()" class="btn btn-primary btn-large theme-login" style="font-size: 8px;">登录/注册</a></td>
                    </tr>
                </table>
            </div>
            <div id="my-data">
                <table class="main-table">
                    <tr>
                        <td>&nbsp;&nbsp;<a class="theme-buy" href="#">我的订单</a>&nbsp;<a class="a-title" href="#">联系我们</a></td>
                    </tr>
                </table>
            </div>
            <div class="surplusr"></div>
        </div>
        <div id="head2">
            <div class="surplusl"></div>
            <div id="head2-body1">
                <img id="logo" src="img/HomeCook.png">
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



    <div id="login" class="jq22-container" style="padding-top:100px;display: none;position: fixed;top:-60px;
    left:500px;width:450px;height:550px;z-index: 99;" >
        <div class="login-wrap">
            <div class="cc" onclick="hide1()">
                &times;

            </div>
            <div class="login-html">
                <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">登录</label>
                <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">注册</label>
                <div class="login-form">

                    <div class="sign-in-htm">
						<form action="User/Login.do" method="post">
                        <div class="group">
                            <label for="user" class="label">用户名</label>
                            <input id="user1" type="text" class="input" name="user_name1">
                        </div>
                        <div class="group">
                            <label for="pass1" class="label">密码</label>
                            <input id="pass1" type="password" class="input" data-type="password" name="user_password1">
                        </div>
                        <div class="group">
                            <input id="check" type="checkbox" class="check" checked>
                            <label for="check"><span class="icon"></span> 记住密码？</label>
                        </div>
                        <div class="group">
                            <input type="button" id="submit" class="button" value="登录">
                        </div>
                        <div id="tip"></div>
                        <div class="hr"></div>
                        <div class="foot-lnk">
                            <a href="#forgot">忘记密码？</a>
                        </div>
                        </form>
                    </div>
                    <div class="sign-up-htm">
                   		<form action="User/Register.do" method="post">
                        <div class="group">
                            <label for="user" class="label">用户名</label>
                            <input id="user" type="text" class="input" name="user_name2">
                            <span id="tip1"></span>
                        </div>
                        <div class="group">
                            <label for="pass2" class="label">密码</label>
                            <input id="pass2" type="password" class="input" name="user_password2" data-type="password">
                        	<span id="tip2"></span>
                        </div>
                        <div class="group">
                            <label for="pass3" class="label">确认密码</label>
                            <input id="pass3" type="password" class="input" data-type="password"/>
                        	<span id="tip3"></span>
                        </div>
                        <!--<div class="group">-->
                            <!--<label for="pass" class="label">Email Address</label>-->
                            <!--<input id="pass" type="text" class="input">-->
                        <!--</div>-->
                        <div class="group">
                            <input type="button" id="submit2" class="button" value="注册" disabled="disabled">
                        </div>
                        <span id="tip4"></span>
                        <div class="hr"></div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>




    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
            <li data-target="#carousel-example-generic" data-slide-to="3"></li>
            <li data-target="#carousel-example-generic" data-slide-to="4"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img src="img/20.jpg" >
                <div class="carousel-caption">
                    柯总拿手菜
                </div>
            </div>
            <div class="item">
                <img src="img/14.jpg" alt="...">
                <div class="carousel-caption">
                    凯煜小姐姐
                </div>
            </div>


            <div class="item">
                <img src="img/22.jpg" alt="...">
                <div class="carousel-caption">
                    磨银小幺鸡
                </div>
            </div>


            <div class="item">
                <img src="img/24.jpg" alt="...">
                <div class="carousel-caption">
                    莎姐最爱吃
                </div>
            </div>

            <div class="item">
                <img src="img/27.jpg" alt="...">
                <div class="carousel-caption">
                羊漾漾漾
                </div>
            </div>
        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

    <div class="le"><br/>
       <br/><br/>
     <h3 style="font-family: 幼圆;">  &nbsp; &nbsp;&nbsp;&nbsp;有一千双手，就有一千种味道。</h3>
        <h3 style="font-family: 幼圆;"> （美食与手（刀工）的关系,美食与 </h3>
        <h3 style="font-family: 幼圆;">    &nbsp;厨师的 关系）. </h3><br/>
        <h3 style="font-family: 幼圆;">&nbsp; &nbsp;&nbsp;不管是否情愿，生活总在催促我们<br/><br/>
            &nbsp;迈步向前，人们整装、启程、跋涉、落<br/><br/>
            &nbsp;脚， 停在哪里，哪里就会燃起灶火. <br/><br/>
            </h3><br/>
    </div>


    <div id="footer">
        <div id="r1">
            <table>
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
            <table>
                <tr>
                    <td>版权：重庆邮电大学移通学院</td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;双体系卓越人才教育基地</td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;12期星辰一部</td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@惊鸿五组</td>
                </tr>
            </table>
        </div>
        <div id="r3">
            <table>
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
            &nbsp;&nbsp;&nbsp;<img src="img/28.png"><br>
            <span>扫一扫看更多哦~</span>
        </div>
    </div>
</div>

</body>
</html>