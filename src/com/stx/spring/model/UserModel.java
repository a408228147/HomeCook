package com.stx.spring.model;

public class UserModel {
	
	private int user_id;			//用户id
	private String user_name;		//用户名
	private String user_password;	//密码
	private String user_phone;		//电话
	private String user_introduce;	//家厨介绍
	private String user_address;	//用户地址
	private int user_power;			//用户权限，0:买家/1:家厨/2:管理员
	
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_password() {
		return user_password;
	}
	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}
	public String getUser_phone() {
		return user_phone;
	}
	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}
	public String getUser_introduce() {
		return user_introduce;
	}
	public void setUser_introduce(String user_introduce) {
		this.user_introduce = user_introduce;
	}
	public String getUser_address() {
		return user_address;
	}
	public void setUser_address(String user_address) {
		this.user_address = user_address;
	}
	public int getUser_power() {
		return user_power;
	}
	public void setUser_power(int user_power) {
		this.user_power = user_power;
	}

}
