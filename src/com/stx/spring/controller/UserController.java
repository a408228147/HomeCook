package com.stx.spring.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.stx.spring.iservice.iUserService;
import com.stx.spring.iservice.imyservice;
import com.stx.spring.model.UserModel;
import com.stx.spring.model.hk_cuisine;

@Controller
@RequestMapping("/User")
public class UserController {
	
	@Resource
	iUserService ius;
	@Resource
	private imyservice im;
	@RequestMapping("UserCheck.do")
	public @ResponseBody Map<String,String> UserCheck(String user_name) {
		Map<String,String> map = new HashMap<String,String>();
		if(ius.UserCheck(user_name)){
			map.put("tip", "可以使用");
		} else {
			map.put("tip", "用户名已存在");
		}
		return map;
	}
	
	@RequestMapping(value="Register.do", method = RequestMethod.POST)
	public @ResponseBody boolean Register(String user_name, String user_password) {
		if(ius.Register(user_name, user_password)) {
			return true;
		}
		return false;
	}
	
	@RequestMapping(value="Login.do", method = RequestMethod.POST)
	public @ResponseBody Map<String,Object> Login(String user_name, String user_password,HttpServletRequest request) {
		List<UserModel> li = ius.Login(user_name, user_password);
		Map<String,Object> map = new HashMap<String,Object>();
		List<hk_cuisine> list=im.user_look();
		if(li.size()>0){
			map.put("user_name", li.get(0).getUser_name());
			map.put("user_power", li.get(0).getUser_power());
			request.setAttribute("user_name", user_name);
			request.setAttribute("list", list);
			System.out.println(list.get(0).getPath()+"path");
			
		} else {
			map.put("user_power", -1);
		}
		return map;
	}

	@RequestMapping("UserInfo.do")
	public String UserInfo(String user_name, HttpSession session) {
		UserModel um = ius.SelectUserInfo(user_name);
		session.setAttribute("UserInfo", um);
		if(um.getUser_phone()==null){
			return "redirect:../jsp/CompleteUserInfo.jsp?user_name="+user_name;
		}
		return "redirect:../jsp/UserInfo.jsp";
		
	}
	
	@RequestMapping("CompleteUserInfo.do")
	public @ResponseBody boolean CompleteUserInfo(UserModel um, HttpSession session) {
		if(ius.CompleteUserInfo(um)==null) {
			return false;
		} else {
			session.setAttribute("UserInfo", um);
			return true;
		}
		
	}
}
