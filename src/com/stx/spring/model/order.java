package com.stx.spring.model;

public class order {
	
public int getOrder_id() {
		return order_id;
	}
	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}
	public String getOrder_user_name() {
		return order_user_name;
	}
	public void setOrder_user_name(String order_user_name) {
		this.order_user_name = order_user_name;
	}
	public String getHc_name() {
		return hc_name;
	}
	public void setHc_name(String hc_name) {
		this.hc_name = hc_name;
	}
	public String getOrder_time() {
		return order_time;
	}
	public void setOrder_time(String order_time) {
		this.order_time = order_time;
	}
	public String getOrder_food_name() {
		return order_food_name;
	}
	public void setOrder_food_name(String order_food_name) {
		this.order_food_name = order_food_name;
	}
	public int getOrder_status() {
		return order_status;
	}
	public void setOrder_status(int order_status) {
		this.order_status = order_status;
	}
	public int getOrder_comment() {
		return order_comment;
	}
	public void setOrder_comment(int order_comment) {
		this.order_comment = order_comment;
	}
private int order_id;
private String order_user_name;
private String hc_name;
private String order_time;
private String  order_food_name; //��Ʒ����
private int  order_status;//����״̬��0����δ�ӵ���1����ӵ���2������ɶ���
private int  order_comment;	//δ����0 ������ 1 statusΪ2ʱ��������

}
