package com.stx.spring.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.stx.spring.iservice.imyservice;
import com.stx.spring.model.order;

import net.sf.json.JSONObject;


@Controller
@RequestMapping("/b")
public class AjaxController {
	@Resource
	private imyservice im;
	
	
	@RequestMapping("Ajax.do")
	@ResponseBody
	public Object count(String user_name){
          int a = im.count(user_name);
          JSONObject  resultJson=new JSONObject();
          resultJson.put("a", a);
		System.out.println(a+"yixiadan");
		return resultJson;	
	}
	
	
	
	@RequestMapping("Ajax1.do")
	@ResponseBody
	public Object count1(String user_name){
          int c = im.count1(user_name);
          JSONObject  resultJson2=new JSONObject();
          resultJson2.put("c", c);
		System.out.println(c+"aaaaaaaaaa111");
		return resultJson2;	
	}

	@RequestMapping("Ajax2.do")
	@ResponseBody
	public Object count2(String user_name){
          int b = im.count2(user_name);
          JSONObject  resultJson1=new JSONObject();
          resultJson1.put("b", b);
		System.out.println(b+"aaaaaaaaaa2222");
		return resultJson1;	
	}
	
	@RequestMapping("Ajax3.do")
	@ResponseBody
	public Object count3(String hc_name){
         
		int d = im.count3(hc_name);
          JSONObject  resultJson1=new JSONObject();
          resultJson1.put("d", d);
		System.out.println(d+"aaaaaaaaaa333");
		return resultJson1;	
	}
	
	@RequestMapping("Ajax4.do")
	@ResponseBody
	public List<order> sc4(String hc_name,HttpServletRequest request){
         
		List<order> list= im.sc4(hc_name);
          /*JSONObject  resultJson1=new JSONObject();
          resultJson1.put("d", d);*/
		
		return list;	
	}
	
	@RequestMapping("Ajax5.do")
	@ResponseBody
	public Object count5(String hc_name){
         
		int e = im.count5(hc_name);
          JSONObject  resultJson1=new JSONObject();
          resultJson1.put("e", e);
		System.out.println(e+"aaaaaaaaaa555");
		return resultJson1;	
	}
	
	@RequestMapping("Ajax6.do")
	@ResponseBody
	public List<order> sc5(String hc_name,HttpServletRequest request){
		List<order> list= im.sc5(hc_name);
          /*JSONObject  resultJson1=new JSONObject();
          resultJson1.put("d", d);*/
		
		return list;	
	}
	
	
	@RequestMapping("Ajax7.do")
	@ResponseBody
	public List<order> sc6(String hc_name,String order_id,HttpServletRequest request){
System.out.println(hc_name+"hc——那么、");
System.out.println(order_id+"odert_df2q3");
List<order> list= im.sc5(hc_name);
  im.sc6(order_id);
          /*JSONObject  resultJson1=new JSONObject();
          resultJson1.put("d", d);*/
		
		return list;	
	}
	
	@RequestMapping("Ajax8.do")
	@ResponseBody
	public List<order> sc7(String hc_name,HttpServletRequest request){
		List<order> list= im.sc7(hc_name);
          /*JSONObject  resultJson1=new JSONObject();
          resultJson1.put("d", d);*/
		return list;	
	}
	
	@RequestMapping("Ajax9.do")
	@ResponseBody
	//删除订单
	public List<order> sc8(String hc_name,String order_id,HttpServletRequest request){
System.out.println(hc_name+"hc——那么、");
System.out.println(order_id+"odert_df2q3");
List<order> list= im.sc7(hc_name);
  im.sc8(order_id);//删除
          /*JSONObject  resultJson1=new JSONObject();
          resultJson1.put("d", d);*/
		
		return list;	
	}
	
}
