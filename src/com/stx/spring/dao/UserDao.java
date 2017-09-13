package com.stx.spring.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.stx.spring.idao.iUserDao;
import com.stx.spring.model.UserModel;

@Repository
public class UserDao implements iUserDao{
	
	@Resource
	JdbcTemplate jdbc;

	//用户注册
	@Override
	public boolean Register(String user_name, String user_password) {
		// TODO Auto-generated method stub
		String sql = "insert into tbl_hc_user (user_id,user_name,user_password,user_power) values(user_id.nextval,?,?,0)";
		Object[] obj = {user_name, user_password};
		return jdbc.update(sql, obj)>0;
	}

	//判断用户名是否已注册
	@Override
	public boolean UserCheck(String user_name) {
		// TODO Auto-generated method stub
		String sql = "select user_name from tbl_hc_user where user_name = ?";
		Object[] obj = {user_name};
		List<String> list = jdbc.query(sql, obj, new innerUserCheck());
		return list.size()==0;
	}
	
	class innerUserCheck implements RowMapper<String> {

		@Override
		public String mapRow(ResultSet rs, int arg1) throws SQLException {
			// TODO Auto-generated method stub
			return rs.getString("user_name");
		}
		
	}

	//用户登录
	@Override
	public List<UserModel> Login(String user_name, String user_password) {
		// TODO Auto-generated method stub
		String sql = "select * from tbl_hc_user where user_name = ? and user_password = ?";
		Object[] obj = {user_name, user_password};
		return jdbc.query(sql, obj, new innerSelect());
	}

	//查询用户信息
	@Override
	public UserModel SelectUserInfo(String user_name) {
		// TODO Auto-generated method stub
		String sql = "select * from tbl_hc_user where user_name = ?";
		Object[] obj = {user_name};
		return jdbc.queryForObject(sql, obj, new innerSelect());
	}
	
	class innerSelect implements RowMapper<UserModel> {

		@Override
		public UserModel mapRow(ResultSet rs, int arg1) throws SQLException {
			// TODO Auto-generated method stub
			UserModel um = new UserModel();
			um.setUser_id(rs.getInt("user_id"));
			um.setUser_name(rs.getString("user_name"));
			um.setUser_password(rs.getString("user_password"));
			um.setUser_power(rs.getInt("user_power"));
			um.setUser_phone(rs.getString("user_phone"));
			um.setUser_address(rs.getString("user_address"));
			um.setUser_introduce(rs.getString("user_introduce"));
			return um;
		}
		
	}

	@Override
	public UserModel CompleteUserInfo(UserModel um) {
		// TODO Auto-generated method stub
		System.out.println(um.getUser_name()+"-----"+um.getUser_phone()+"-----"+um.getUser_address()+"-----"+um.getUser_introduce());
		String sql = "update tbl_hc_user set user_phone = ?, user_address = ?, user_introduce = ? where user_name = ?";
		Object[] obj = {um.getUser_phone(), um.getUser_address(), um.getUser_introduce(), um.getUser_name()};
		if(jdbc.update(sql, obj)>0) {
			System.out.println("1111111");
			sql = "select * from tbl_hc_user where user_name = ?";
			Object[] obj1 = {um.getUser_name()};
			return jdbc.queryForObject(sql, obj1, new innerSelect());
		}
		System.out.println("2222222");
		return null;
	}

}
