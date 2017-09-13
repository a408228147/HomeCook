/**
 * 登录验证
 */
$(document).ready(function() {
	var check1 = false;
	var check2 = true;
	
	$('#submit').click(function () {
		$("#tip").css("color","red");
		if($('#user1').val()=="") {
			$('#tip').html('请输入用户名');
		} else if($('#user1').val()!=""&&$('#pass1').val()=="") {
			$('#tip').html('请输入密码');
		} else if($('#user1').val()!=""&&$('#pass1').val()!="") {
			$('#tip').html('');
			$.ajax({
			    // 请求发送方式
			    type: 'post',
			    dataType:'json',
			    // 验证文件
			    url: 'User/Login.do',
			    // 用户输入的帐号密码
			    data: {'user_name': $("#user1").val(), 'user_password': $("#pass1").val()},
			    // 异步，不写默认为True
			    async: true,
			    //请求成功后的回调
			    success: function(data){
			        if (data.user_power==0){
			        	$(location).attr('href', 'jsp/UserMain.jsp?user_name='+data.user_name);
			        } else if(data.user_power==1) {
			        	$(location).attr('href', 'chefshow.jsp?hc_name='+data.user_name);
			        } else if(data.user_power==2) {
			        	$(location).attr('href', 'jsp/AdminMain.jsp?user_name='+data.user_name);
			        } else {
			            $('#tip').html('帐号或密码错误');
			        }
			    },
			    error: function(){
			    	$('#tip').html('服务器异常，请稍后重试');
			    }
			})
		}
	})
	
});
