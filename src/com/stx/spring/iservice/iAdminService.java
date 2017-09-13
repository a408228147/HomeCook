package com.stx.spring.iservice;

import java.util.List;

import com.stx.spring.model.OrderModel;
import com.stx.spring.model.UserModel;

public interface iAdminService {
	
	public List<UserModel> SelectUserInfo();
	public boolean AlterUserInfo(UserModel um);
	public boolean DeleteUser(int user_id);
	public List<OrderModel> SelectOrder();
	public boolean DeleteOrder(int order_id);
}
