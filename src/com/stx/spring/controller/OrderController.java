package com.stx.spring.controller;

import java.io.UnsupportedEncodingException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.stx.spring.iservice.imyservice;
import com.stx.spring.model.order;

import jdk.nashorn.internal.ir.RuntimeNode.Request;
import net.sf.json.JSONObject;

@Controller
@RequestMapping("/n")
public class OrderController {
	@Resource
	private imyservice im;
	@RequestMapping("order.do")
	public String order(String user_name,HttpServletRequest request){
		request.setAttribute("user_name", user_name);
		return "orderweb";
	}
@RequestMapping("userorder.do")
public String  userorder(order to,HttpServletRequest request) throws UnsupportedEncodingException{
	//System.out.println(to.getOrder_food());
	/*to.setOrder_food(new String(to.getOrder_food().getBytes("ISO-8859-1"),"UTF-8"));*/
	/*System.out.println(to.getOrder_food()+"orderfood");*/
	im.userorder(to);
request.setAttribute("user_name", to.getOrder_user_name());
	return "orderweb";
}
	
	@RequestMapping("uporder.do")
	public String uporder(String order_id){
		System.out.println(order_id+"conset");
		im.uporder(order_id);
	
		return "redirect:../chefshow.jsp";
	}


}

