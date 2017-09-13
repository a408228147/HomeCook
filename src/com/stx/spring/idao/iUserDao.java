package com.stx.spring.idao;

import java.util.List;

import com.stx.spring.model.UserModel;

public interface iUserDao {
	
	public boolean Register(String user_name, String user_password);
	public boolean UserCheck(String user_name);
	public List<UserModel> Login(String user_name, String user_password);
	public UserModel SelectUserInfo(String user_name);
	public UserModel CompleteUserInfo(UserModel um);

}
