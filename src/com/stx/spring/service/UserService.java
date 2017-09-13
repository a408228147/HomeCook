package com.stx.spring.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.stx.spring.idao.iUserDao;
import com.stx.spring.iservice.iUserService;
import com.stx.spring.model.UserModel;

@Service
public class UserService implements iUserService{

	@Resource
	iUserDao iud;
	
	@Override
	public boolean Register(String user_name, String user_password) {
		// TODO Auto-generated method stub
		return iud.Register(user_name, user_password);
	}

	@Override
	public boolean UserCheck(String user_name) {
		// TODO Auto-generated method stub
		return iud.UserCheck(user_name);
	}

	@Override
	public List<UserModel> Login(String user_name, String user_password) {
		// TODO Auto-generated method stub
		return iud.Login(user_name, user_password);
	}

	@Override
	public UserModel SelectUserInfo(String user_name) {
		// TODO Auto-generated method stub
		return iud.SelectUserInfo(user_name);
	}

	@Override
	public UserModel CompleteUserInfo(UserModel um) {
		// TODO Auto-generated method stub
		return iud.CompleteUserInfo(um);
	}

}
