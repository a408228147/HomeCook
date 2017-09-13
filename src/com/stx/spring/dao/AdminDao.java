package com.stx.spring.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.stx.spring.idao.iAdminDao;
import com.stx.spring.model.OrderModel;
import com.stx.spring.model.UserModel;

@Repository
public class AdminDao implements iAdminDao {
	
	@Resource
	JdbcTemplate jdbc;

	@Override
	public List<UserModel> SelectUserInfo() {
		// TODO Auto-generated method stub
		String sql = "select * from tbl_hc_user";
		return jdbc.query(sql, new innerSelectUser());
	}
	
	class innerSelectUser implements RowMapper<UserModel> {

		@Override
		public UserModel mapRow(ResultSet rs, int arg1) throws SQLException {
			// TODO Auto-generated method stub
			UserModel um = new UserModel();
			um.setUser_id(rs.getInt("user_id"));
			um.setUser_name(rs.getString("user_name"));
			um.setUser_password(rs.getString("user_password"));
			um.setUser_phone(rs.getString("user_phone"));
			um.setUser_introduce(rs.getString("user_introduce"));
			um.setUser_address(rs.getString("user_address"));
			um.setUser_power(rs.getInt("user_power"));
			
			return um;
		}
		
	}

	@Override
	public boolean AlterUserInfo(UserModel um) {
		// TODO Auto-generated method stub
		String sql = "update tbl_hc_user set user_name = ?, user_password = ?, user_phone = ?, user_introduce = ?, user_address = ?, user_power = ? where user_id = ?";
		Object[] obj = {um.getUser_name(), um.getUser_password(), um.getUser_phone(), um.getUser_introduce(), um.getUser_address(), um.getUser_power(), um.getUser_id() };
		if(jdbc.update(sql, obj)>0) {
			return true; 
		}
		return false;
	}

	@Override
	public boolean DeleteUser(int user_id) {
		// TODO Auto-generated method stub
		String sql = "delete from tbl_hc_user where user_id = ?";
		Object obj = user_id;
		if(jdbc.update(sql, obj)>0) {
			return true;
		};
		return false;
	}

	@Override
	public List<OrderModel> SelectOrder() {
		// TODO Auto-generated method stub
		String sql = "select * from tbl_order";
		return jdbc.query(sql, new innerSelectOrder());
	}
	
	class innerSelectOrder implements RowMapper<OrderModel> {

		@Override
		public OrderModel mapRow(ResultSet rs, int arg1) throws SQLException {
			// TODO Auto-generated method stub
			OrderModel om = new OrderModel();
			om.setOrder_id(rs.getInt("order_id"));
			om.setOrder_user_name(rs.getString("order_user_name"));
			om.setOrder_time(rs.getString("order_time"));
			om.setOrder_food_name(rs.getString("order_food_name"));
			om.setOrder_status(rs.getInt("order_status"));
			om.setOrder_comment(rs.getInt("order_comment"));
			om.setHc_name(rs.getString("hc_name"));
			return om;
		}
		
	}

	@Override
	public boolean DeleteOrder(int order_id) {
		// TODO Auto-generated method stub
		String sql = "delete from tbl_order where order_id = ?";
		Object obj = order_id;
		if(jdbc.update(sql, obj)>0) {
			return true;
		};
		return false;
	}

}
