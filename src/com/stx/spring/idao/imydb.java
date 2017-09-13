package com.stx.spring.idao;

import java.util.List;

import com.stx.spring.model.hk_cuisine;
import com.stx.spring.model.tal_comment;
import com.stx.spring.model.order;

public interface imydb {
	public void userorder(order to);
	public List check(String user_name);
	public List checkq(String user_name);
	public void update(tal_comment tc);
	public int count(String user_name);
	public int count2(String user_name);
	public int count1(String user_name);
	public void cuisine(hk_cuisine hc);
	public List<hk_cuisine> selectcuisine(String hc_name);
	public void hcok(String user_name);
	public List<hk_cuisine> user_look();
	public int count3 (String hc_name);
	public List sc4(String hc_name);
	public String uporder(String order_id);
	public int count5(String hc_name);
	public List<order> sc5(String hc_name);
	public void sc6(String order_id);
	public List<order> sc7(String hc_name);
	public void sc8(String order_id);

	
}
