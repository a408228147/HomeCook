package com.stx.spring.iservice;

import java.util.List;

import com.stx.spring.model.UserModel;

public interface iUserService {
	
	public boolean UserCheck(String user_name);
	public boolean Register(String user_name, String user_password);
	public List<UserModel> Login(String user_name, String user_password);
	public UserModel SelectUserInfo(String user_name);
	public UserModel CompleteUserInfo(UserModel um);

}
