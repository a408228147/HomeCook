package com.stx.spring.model;

public class OrderModel {
	
	private int order_id;//订单id
	private String order_user_name;//订单发起人
	private String order_time;//订单时间
	private String order_food_name;//订单食品名
	private int order_status;//订单状态
	private int order_comment;//订单评论
	private String hc_name;//订单接受人
	
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
	public String getHc_name() {
		return hc_name;
	}
	public void setHc_name(String hc_name) {
		this.hc_name = hc_name;
	}

}
