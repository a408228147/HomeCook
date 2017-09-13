package com.stx.spring.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.stx.spring.idao.imydb;
import com.stx.spring.iservice.imyservice;
import com.stx.spring.model.hk_cuisine;
import com.stx.spring.model.tal_comment;
import com.stx.spring.model.order;



@Service
public class myservice implements imyservice {
	@Resource
	private imydb im;
	
	public void userorder(order to){
		im.userorder(to);
	}

	@Override
	public List check(String user_name) {
		// TODO Auto-generated method stub
		return im.check(user_name);
	}

	@Override
	public List checkq(String user_name) {
		// TODO Auto-generated method stub
		return im.check(user_name);
	}

	@Override
	public void update(tal_comment tc) {
		// TODO Auto-generated method stub
		im.update(tc);
	}

	@Override
	public int count(String user_name) {
		// TODO Auto-generated method stub
		return im.count(user_name);
	}

	@Override
	public int count2(String user_name) {
		// TODO Auto-generated method stub
		return im.count2(user_name);
	}

	@Override
	public int count1(String user_name) {
		// TODO Auto-generated method stub
		return im.count1(user_name);
	}

	@Override
	public void cuisine(hk_cuisine hc) {
		// TODO Auto-generated method stub
		 im.cuisine(hc);
	}

	@Override
	public void hcok(String user_name) {
		// TODO Auto-generated method stub
		im.hcok(user_name);
	}

	@Override
	public List<hk_cuisine> selectcuisine(String hc_name) {
		// TODO Auto-generated method stub

		return im.selectcuisine(hc_name);
	}

	@Override
	public List<hk_cuisine> user_look() {
		// TODO Auto-generated method stub
		return im.user_look();
	}

	@Override
	public int count3(String hc_name) {
		// TODO Auto-generated method stub
		return im.count3(hc_name);
	}
	public List sc4(String hc_name){
	return	im.sc4(hc_name);
	}
	public String uporder(String order_id){
		return im.uporder(order_id);
	}
	public int count5(String hc_name){
		return im.count5(hc_name);
	}
	public List<order> sc5(String hc_name){
		return im.sc5(hc_name);
	}
	public void sc6(String order_id){
		im.sc6(order_id);
		
	}
	public List<order> sc7(String hc_name){
		return im.sc7(hc_name);
		}

	@Override
	public void sc8(String order_id) {
		// TODO Auto-generated method stub
		im.sc8(order_id);
	}
}
