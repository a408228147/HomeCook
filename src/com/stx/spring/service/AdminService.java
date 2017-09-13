package com.stx.spring.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.stx.spring.idao.iAdminDao;
import com.stx.spring.iservice.iAdminService;
import com.stx.spring.model.OrderModel;
import com.stx.spring.model.UserModel;

@Service
public class AdminService implements iAdminService {
	
	@Resource
	iAdminDao iad;

	@Override
	public List<UserModel> SelectUserInfo() {
		// TODO Auto-generated method stub
		return iad.SelectUserInfo();
	}

	@Override
	public boolean AlterUserInfo(UserModel um) {
		// TODO Auto-generated method stub
		return iad.AlterUserInfo(um);
	}

	@Override
	public boolean DeleteUser(int user_id) {
		// TODO Auto-generated method stub
		return iad.DeleteUser(user_id);
	}

	@Override
	public List<OrderModel> SelectOrder() {
		// TODO Auto-generated method stub
		return iad.SelectOrder();
	}

	@Override
	public boolean DeleteOrder(int order_id) {
		// TODO Auto-generated method stub
		return iad.DeleteOrder(order_id);
	}

}
