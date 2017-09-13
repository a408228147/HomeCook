package com.stx.spring.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.stx.spring.iservice.iAdminService;
import com.stx.spring.model.OrderModel;
import com.stx.spring.model.UserModel;

@Controller
@RequestMapping("/Admin")
public class AdminController {
	
	@Resource
	iAdminService ias;
	
	@RequestMapping("SelectUserInfo.do")
	public @ResponseBody List<UserModel> SelectUserInfo() {
		List<UserModel> list = ias.SelectUserInfo();
		return list;
		
	}
	
	@RequestMapping("AlterUserInfo.do")
	public @ResponseBody boolean AlterUserInfo(UserModel um) {
		return ias.AlterUserInfo(um);
	}
	
	@RequestMapping("DeleteUser.do")
	public @ResponseBody boolean DeleteUser(int user_id) {
		return ias.DeleteUser(user_id);
	}
	
	@RequestMapping("SelectOrder.do")
	public @ResponseBody List<OrderModel> SelectOrder() {
		return ias.SelectOrder();
	}
	
	@RequestMapping("DeleteOrder.do")
	public @ResponseBody boolean DeleteOrder(int order_id) {
		return ias.DeleteOrder(order_id);
	}

}
