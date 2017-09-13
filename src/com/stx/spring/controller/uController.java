package com.stx.spring.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.stx.spring.iservice.imyservice;
import com.stx.spring.model.tal_comment;
import com.stx.spring.model.order;
@Controller
@RequestMapping("/z")
public class uController {

	@Resource
	private imyservice im;
	
	
	@RequestMapping("check.do")
	public String check(String user_name,HttpServletRequest request){
	System.out.println(user_name+"1111111");
		List<order>	list=im.check(user_name);
	request.setAttribute("info", list);	
	return "no";
		
	}
	@RequestMapping("checkq.do")
	public String checkq(String user_name,HttpServletRequest request){
	System.out.println(user_name+"1111111");
		List<order>	list=im.check(user_name);
	request.setAttribute("info", list);	
	return "nq";
		
	}

	
	@RequestMapping("checkp.do")
	public String checkp(String user_name,HttpServletRequest request){
	System.out.println(user_name+"1111111");
		List<order>	list=im.check(user_name);
	request.setAttribute("info", list);	
	request.setAttribute("user_name", user_name);
	return "np";
		
	}
	@RequestMapping("comment.do")
public String comment(tal_comment tc,HttpServletRequest request){
		List<order>	list=im.check(tc.getComment_user_name());
im.update(tc);		
		request.setAttribute("info", list);	
		request.setAttribute("user_name", tc.getComment_user_name());
		return "np";	
	}
	
	@RequestMapping("history.do")
	public String history(String user_name,HttpServletRequest request){
		List<order>	list=im.check(user_name);
		request.setAttribute("info", list);	
		request.setAttribute("user_name", user_name);
	return "ns";
	}
	
	/*@RequestMapping("history1.do")
	public String history1(String user_name,HttpServletRequest request){
		List<tbl_order>	list=im.check(user_name);
		request.setAttribute("info", list);	
		request.setAttribute("user_name", user_name);
	return "ns";
	}*/
	
}
