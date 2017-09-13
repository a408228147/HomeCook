package com.stx.spring.idao;

import java.util.List;

import com.stx.spring.model.OrderModel;
import com.stx.spring.model.UserModel;

public interface iAdminDao {
	
	public List<UserModel> SelectUserInfo();

	public boolean AlterUserInfo(UserModel um);

	public boolean DeleteUser(int user_id);

	public List<OrderModel> SelectOrder();

	public boolean DeleteOrder(int order_id);

}
