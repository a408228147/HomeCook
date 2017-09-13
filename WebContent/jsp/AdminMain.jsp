<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="../js/chefshow.js"></script>
<link href="${pageContext.request.contextPath}/css/manager.css" rel="stylesheet" type="text/css">
<title>管理员主页</title>

</head>
<body style=" background:#E1E0E0">

<div id="boder">

    <div id="hea">
        <div id="head1">
            <div class="surplusl"></div>
            <div id="main">
                <table class="main-table">
                    <tr>
                        <td>
                            <div id="img-"><img id="address" src="../img/29.png"></div>
                            <div id="font-">合川区&nbsp;重庆邮电大学移通学院</div>
                        </td>
                    </tr>
                </table>
            </div>
            <div id="my-list">
                <table id="main-table">
                    <tr>
                        <td> <a onclick="show1()" class="btn btn-primary btn-large theme-login" style="font-size: 8px; ">登录/注册</a></td>
                    </tr>
                </table>
            </div>
            <div id="my-data">
                <table class="main-table">
                    <tr>
                        <td>&nbsp;&nbsp;<a class="theme-buy" href="#"style="font-size: 10px" >我的菜品</a>&nbsp;<a class="a-title" href="#" style="font-size: 10px">&nbsp;&nbsp;联系我们</a></td>
                    </tr>
                </table>
            </div>
            <div class="surplusr"></div>
        </div>
        <div id="head2">
            <div class="surplusl"></div>
            <div id="head2-body1">
                <img id="logo" src="../img/HomeCook.png">
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
                    <!--<li>  <img src=" http://waimai.meituan.com/static/img/order/order-tip-active.svg"></li>-->
                    <br/>
                    <li><a href="JavaScript:r1()">查看用户信息</a></li><br/><br/>
                    <li><a href="JavaScript:r2()"> 查看订单信息 </a> </li><br/><br/>
                    <li> <a href="JavaScript:r3()">查看评论信息</a> </li><br/><br/>

                </ul>
            </div>

            <div id="right">

                <div id="right1">
		<iframe src="AdminUserInfo.jsp" style="height:100%; width:100%;border:0px"></iframe>
                </div>

                <div id="right2" >
		<iframe src="AdminOrderInfo.jsp" style="height:100%; width:100%;border:0px"></iframe>
                </div>

                <div id="right3" >
		<iframe src="AdminCommentInfo.jsp" style="height:100%; width:100%;border:0px"></iframe>
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
            <img id="r4-img" src="../img/28.png">
        </div>
        <div id="r5">
            <table id="r5-table"><tr><td>扫一扫看更多哦~</td></tr></table>
        </div>
    </div>

</div>
</body>
</html>