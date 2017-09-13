/**
 * 管理员界面显示用户信息
 */
$(document).ready(function() {
	
	var count = 0;
	
	$('.alterDiv').hide();
	
	$.ajax({
		url:'../Admin/SelectUserInfo.do',
		error:function() {
			alert('服务器异常，请稍后重试');
		},
		success:function(data) {
			$.each(data, function(i,n) {
				$('<tr>', {
					id:'user'+i
				}).appendTo('#user_info');
				$('<td>', {
					class:'user_id',
					val:data[i].user_id,
					text:data[i].user_id
				}).appendTo("#user"+i+"");
				$('<td>', {
					class:'user_name',
					val:data[i].user_name,
					text:data[i].user_name
				}).appendTo("#user"+i+"");
				$('<td>', {
					class:'user_password',
					val:data[i].user_password,
					text:data[i].user_password
				}).appendTo("#user"+i+"");
				$('<td>', {
					class:'user_phone',
					val:data[i].user_phone,
					text:data[i].user_phone
				}).appendTo("#user"+i+"");
				$('<td>', {
					class:'user_address',
					val:data[i].user_address,
					text:data[i].user_address
				}).appendTo("#user"+i+"");
				$('<td>', {
					class:'user_introduce',
					val:data[i].user_introduce,
					text:data[i].user_introduce
				}).appendTo("#user"+i+"");
				if(data[i].user_power==0) {
					$('<td>', {
						class:'user_power',
						val:data[i].user_power,
						text:'普通用户'
					}).appendTo("#user"+i+"");
				} else if (data[i].user_power==1) {
					$('<td>', {
						class:'user_power',
						val:data[i].user_power,
						text:'厨师'
					}).appendTo("#user"+i+"");
				} else if (data[i].user_power==2) {
					$('<td>', {
						class:'user_power',
						val:data[i].user_power,
						text:'管理员'
					}).appendTo("#user"+i+"");
				}
				$('<td>', {
					class:'alter'
				}).appendTo("#user"+i+"");
				$('<td>', {
					class:'delete'
				}).appendTo("#user"+i+"");
				count++;
				countText();
			});
			$('<button class="alterButton">修改</button>').appendTo('.alter');
			$('<button class="deleteButton">删除</button>').appendTo('.delete');
		}
	});
	
	function countText() {
		$('.memberCount').text(count);
	}
	
	var alterObj;
	
	$(document).on('click', '.alterButton', function() {
		$('.tip1').html('');
		$('.tip2').html('');
		$('.tip3').html('');
		$('.tip4').html('');
		$('.ajaxTip').html('');
		alterObj = $(this);
//		alert($(this).parents('.alter').prevAll('.user_name').val());
		$('option').removeAttr('selected');
		$('.user_id_change').attr('value',$(this).parents('.alter').prevAll('.user_id').val());
		$('.user_name_change').attr('value',$(this).parents('.alter').prevAll('.user_name').val());
		$('.user_password_change').attr('value',$(this).parents('.alter').prevAll('.user_password').val());
		$('.user_phone_change').attr('value',$(this).parents('.alter').prevAll('.user_phone').val());
		$('.user_address_change').attr('value',$(this).parents('.alter').prevAll('.user_address').val());
		$('.user_introduce_change').attr('value',$(this).parents('.alter').prevAll('.user_introduce').val());
		var i = $(this).parents('.alter').prevAll('.user_power').val();
//		$('.user_power_change:eq('+i+')').text('qweqwe');
		$('option:eq('+i+')').attr('selected', true);
		$('.alterDiv').fadeIn();
		$('#div-information').hide();
	})
	
	$('#cancel').click(function() {
		$('.alterDiv').fadeOut('normal', function() {
			$('#div-information').show();
		});
	})
	
	$(document).on('click', '.deleteButton', function() {
		if(confirm('是否删除，删除后无法还原')) {
			if($.ajax({
				data:'user_id='+$(this).parents('td').prevAll('.user_id').val(),
				url:'../Admin/DeleteUser.do',
				success:function() {
					return true;
				},
				error:function() {
					alert('服务器异常,删除失败');
					return false;
				}
			})) {
				$(this).parents('tr').remove();
				count--;
				countText();
			}
			
		}
	})
	
	var check1 = true;
	var check2 = true;
	var check3 = true;
	var check4 = true;
	
	$(".user_name_change").keyup(function() {
		check1 = false;
		var name = /^[a-zA-Z]{1}([a-zA-Z0-9]|[._]){3,19}$/;
	     if(!name.test($(".user_name_change").val())) {
	    	 $(".tip1").css("color","red");
	    	 $(".tip1").html('用户名只能输入4-20个字符，必须以以字母开头、可带数字、下划线“_”、“.”'); 
	    	 check1 = false;
	     } else {
			$.ajax({
				data:"user_name="+$(".user_name_change").val(),
				dataType:"json",
				type:"get",
				url:"../User/UserCheck.do",
				error:function(data) {
					$(".tip1").html('服务器错误');
					check1 = false;
				},
				success:function(data) {
					if(data.tip==="用户名已存在") {
						$(".tip1").css("color","red");
						check1 = false;
					} else {
						$(".tip1").css("color","green");
						check1 = true;
					}
					$(".tip1").html(data.tip);
				}
			});
		}
	});
	
	$('.user_password_change').keyup(function() {
		check2 = false;
		var strongRegex = new RegExp("^(?=.{8,})(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*\\W).*$", "g");
		var mediumRegex = new RegExp("^(?=.{7,})(((?=.*[A-Z])(?=.*[a-z]))|((?=.*[A-Z])(?=.*[0-9]))|((?=.*[a-z])(?=.*[0-9]))).*$", "g");
		var enoughRegex = new RegExp("(?=.{6,}).*", "g");
		if (false == enoughRegex.test($(this).val())) {
			$(".tip2").css("color","red");
			$('.tip2').html('密码必须大于6位');
			check2 = false;
		} else if (strongRegex.test($(this).val())) {
			$(".tip2").css("color","green");
			$('.tip2').html('强');
			check2 = true;
		} else if (mediumRegex.test($(this).val())) {
			$(".tip2").css("color","yellow");
			$('.tip2').html('中');
			check2 = true;
		} else {
			$(".tip2").css("color","red");
			$('.tip2').html('弱');
			check2 = true;
		}
	});
	
	$('.user_phone_change').blur(function() {
		check3 = false;
		var telRegex = new RegExp("^((13[0-9])|(15[^4])|(18[0,2,3,5-9])|(17[0-8])|(147))\\d{8}$");
		if (false == telRegex.test($(this).val())) {
			$('.tip3').css('color','red');
			$('.tip3').html('请输入正确的手机号');
			check3 = false;
		} else {
			$('.tip3').html('');
			check3 = true;
		}
	})
	
	$('.user_address_change').change(function() {
		if($('.user_address_change').val()=="") {
			check4 = false;
			$('.tip4').css('color','red');
			$('.tip4').html('请输入地址');
		} else {
			$('.tip4').html('');
			check4 = true;
		}
	})
	
	$('#confirm').click(function() {
		if(check1==true&&check2==true&&check3==true&&check4==true) {
			$.ajax({
				type:'post',
				url:'../Admin/AlterUserInfo.do',
				data:{'user_id':$('.user_id_change').val(), 'user_name':$('.user_name_change').val(), 'user_password':$('.user_password_change').val(), 'user_phone':$('.user_phone_change').val(), 'user_address':$('.user_address_change').val(), 'user_introduce':$('.user_introduce_change').val(), 'user_power':$('.user_power_change').val() },
				error:function() {
					$('.ajaxTip').css('color','red');
					$('.ajaxTip').html('服务器异常，请稍后重试');
				},
				success:function(data) {
					if(data) {
						$('.alterDiv').fadeOut(function() {
							$('#div-information').show();
						});
						alterObj.parents('.alter').prevAll('.user_name').text($('.user_name_change').val());
						alterObj.parents('.alter').prevAll('.user_password').text($('user_password_change').val());
						alterObj.parents('.alter').prevAll('.user_phone').text($('.user_phone_change').val());
						alterObj.parents('.alter').prevAll('.user_address').text($('.user_address_change').val());
						alterObj.parents('.alter').prevAll('.user_introduce').text($('.user_introduce_change').val());
						if($('.user_power_change').val()==0) {
							alterObj.parents('.alter').prevAll('.user_power').text('普通用户');
						} else if($('.user_power_change').val()==1) {
							alterObj.parents('.alter').prevAll('.user_power').text('厨师');
						} else if($('.user_power_change').val()==2) {
							alterObj.parents('.alter').prevAll('.user_power').text('管理员');
						}
					} else {
						$('.ajaxTip').css('color','red');
						$('.ajaxTip').html('服务器异常，请稍后重试');
					}
				}
			});
		}
	})
	
})