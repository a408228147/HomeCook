/**
 * 订单管理
 */
$(document).ready(function() {
	
	var count = 0;
	
	$.ajax({
		url:'../Admin/SelectOrder.do',
		error:function() {
			alert('服务器异常，请稍后重试');
		},
		success:function(data) {
			$.each(data, function(i,n) {
				
				$('<tr>', {
					id:'order'+i
				}).appendTo('#order_info');
				$('<td>', {
					class:'order_id',
					val:data[i].order_id,
					text:data[i].order_id
				}).appendTo("#order"+i+"");
				$('<td>', {
					class:'order_user_name',
					val:data[i].order_user_name,
					text:data[i].order_user_name
				}).appendTo("#order"+i+"");
				$('<td>', {
					class:'order_time',
					val:data[i].order_time,
					text:data[i].order_time
				}).appendTo("#order"+i+"");
				$('<td>', {
					class:'order_food_name',
					val:data[i].order_food_name,
					text:data[i].order_food_name
				}).appendTo("#order"+i+"");
				$('<td>', {
					class:'order_status',
					val:data[i].user_address,
					text:data[i].user_address
				}).appendTo("#order"+i+"");
				$('<td>', {
					class:'order_comment',
					val:data[i].order_comment,
					text:data[i].order_comment
				}).appendTo("#order"+i+"");
				$('<td>', {
					class:'hc_name',
					val:data[i].hc_name,
					text:data[i].hc_name
				}).appendTo("#order"+i+"");
				$('<td>', {
					class:'orderDelete'
				}).appendTo("#order"+i+"");
				count++;
			});
			$('<button class="deleteButton">删除</button>').appendTo('.orderDelete');
			countText();
		}
	});
	
	function countText() {
		$('.orderCount').text(count);
	}
	
	$(document).on('click', '.deleteButton', function() {
		if(confirm('是否删除，删除后无法还原')) {
			if($.ajax({
				data:'order_id='+$(this).parents('td').prevAll('.order_id').val(),
				url:'../Admin/DeleteOrder.do',
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
	
})