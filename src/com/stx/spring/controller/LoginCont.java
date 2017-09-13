package com.stx.spring.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.stx.spring.iservice.imyservice;
import com.stx.spring.model.hk_cuisine;
import com.stx.spring.model.order;
@Controller
@RequestMapping("/a")
public class LoginCont {
	@Resource
	private imyservice im;
	@RequestMapping("l.do")
	public String userlogin(String user_name,HttpServletRequest request){
	List<hk_cuisine> list=im.user_look();
		System.out.println(user_name+"user_name");
		request.setAttribute("user_name", user_name);
		request.setAttribute("list", list);
		System.out.println(list.get(0).getPath()+"path");
		return "usermain";//调转界面-食物选择区	
	}
	
	@RequestMapping("user.do")
	public String userorder(order to,HttpServletRequest request){
		
		im.userorder(to);
		request.setAttribute("user_name",to.getOrder_user_name());
		return "orderweb";
	}
}
