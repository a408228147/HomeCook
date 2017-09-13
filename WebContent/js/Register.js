/**
 * 注册验证
 */
$(document).ready(function() {
	var check1=false;
	var check2=false;
	var check3=false;
	
	$("#user").keyup(function() {
		var name = /^[a-zA-Z]{1}([a-zA-Z0-9]|[._]){3,19}$/;
	     if(!name.test($("#user").val())) {
	    	 $("#tip1").css("color","red");
	    	 $("#tip1").html('用户名只能输入4-20个字符，必须以以字母开头、可带数字、下划线“_”、“.”'); 
	    	 check1 = false; 
	     } else {
			$.ajax({
				data:"user_name="+$("#user").val(),
				dataType:"json",
				type:"get",
				url:"User/UserCheck.do",
				error:function(data) {
					$("#tip1").html('服务器错误');
					check1 = false;
				},
				success:function(data) {
					if(data.tip==="用户名已存在") {
						$("#tip1").css("color","red");
						check1 = false;
					} else {
						$("#tip1").css("color","green");
						check1 = true;
					}
					$("#tip1").html(data.tip);
				}
			});
		}
		check();
	});
	
	$('#pass2').keyup(function() {
		var strongRegex = new RegExp("^(?=.{8,})(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*\\W).*$", "g");
		var mediumRegex = new RegExp("^(?=.{7,})(((?=.*[A-Z])(?=.*[a-z]))|((?=.*[A-Z])(?=.*[0-9]))|((?=.*[a-z])(?=.*[0-9]))).*$", "g");
		var enoughRegex = new RegExp("(?=.{6,}).*", "g");
		if (false == enoughRegex.test($(this).val())) {
			$("#tip2").css("color","red");
			$('#tip2').html('密码必须大于6位');
			check2 = false;
		} else if (strongRegex.test($(this).val())) {
			$("#tip2").css("color","green");
			$('#tip2').html('强');
			check2 = true;
		} else if (mediumRegex.test($(this).val())) {
			$("#tip2").css("color","yellow");
			$('#tip2').html('中');
			check2 = true;
		} else {
			$("#tip2").css("color","red");
			$('#tip2').html('弱');
			check2 = true;
		}
		check();
	});
	
	$('#pass3').keyup(function() {
		if($('#pass3').val()!=$('#pass2').val()) {
			$("#tip3").css("color","red");
			$('#tip3').html('两次密码输入不一致');
			check3 = false;
		} else {
			$("#tip3").css("color","green");
			$('#tip3').html('密码一致');
			check3 = true;
		}
		check();
	})	

	
	function check() {
		if(check1==true&&check2==true&&check3==true) {
			$("#submit2").removeAttr("disabled");
		} else {
			$("#submit2").attr("disabled","disabled");
		}
	}
	
	$('#submit2').click(function() {
		$.ajax({
		    // 请求发送方式
		    type: 'post',
		    // 验证文件
		    url: 'User/Register.do',
		    // 用户输入的帐号密码
		    data: {'user_name': $("#user").val(), 'user_password': $("#pass2").val()},
		    // 异步，不写默认为True
		    async: true,
		    //请求成功后的回调
		    success: function(data){
		    	if(data) {
		    		$.alerts.alert('点击确定后跳转至用户主页','注册成功','确定',function() {
		    			$(location).attr('href', 'UserMain.jsp?user_name='+$("#user").val());
		    		});
		    	} else {
		    		$("#tip4").css("color","red");
		    		$('#tip4').html('服务器异常，请稍后重试');
		    	}
		    },
		    error: function(){
		    	$("#tip4").css("color","red");
		    	$('#tip4').html('服务器异常，请稍后重试');
		    }
		})
	})
});