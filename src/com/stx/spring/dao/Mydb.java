package com.stx.spring.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;


import com.stx.spring.idao.imydb;
import com.stx.spring.model.hk_cuisine;
import com.stx.spring.model.tal_comment;
import com.stx.spring.model.order;
@Repository
public class Mydb implements imydb {
	@Resource
	private JdbcTemplate jdbcTemplate;
	
//提交订单
	public void userorder(order to){
		System.out.println(to.getOrder_food_name()+"getfood");
		String sql="insert into tbl_order values (order_id.nextval,?,?,?,?,?,?) ";
	Object[] obj={to.getOrder_user_name(),to.getOrder_time(),to.getOrder_food_name(),to.getOrder_status(),to.getOrder_comment(),to.getHc_name()};
	jdbcTemplate.update(sql, obj);
	}
	//用户查询订单
	public  List<order> check(String user_name){
		System.out.println(user_name+"hahaa");
		String sql="select * from tbl_order where order_user_name=?";
		Object[] obj = {user_name};
		List<order> list=jdbcTemplate.query(sql, obj,new all());
		return list;
	}
	class all implements RowMapper{

		@Override
		public order mapRow(ResultSet rs, int arg1) throws SQLException {
			// TODO Auto-generated method stub
			order to=new order();
			to.setOrder_food_name(rs.getString("order_food_name"));
			to.setOrder_id(rs.getInt("order_id"));
		to.setHc_name(rs.getString("hc_name"));
			to.setOrder_status(rs.getInt("order_status"));
			to.setOrder_comment(rs.getInt("order_comment"));
		
			return to;
		}
		
	}
	//用户查询 订单
	@Override
	public List checkq(String user_name) {
		// TODO Auto-generated method stub
		String sql = "select * from tbl_order where order_user_name=?";
		Object[] obj = {user_name};
		List<order> list=jdbcTemplate.query(sql, obj,new all());
		return list;
	}
//用户评价
	@Override
	public void update(tal_comment tc) {
		// TODO Auto-generated method stub
		String sql = "update tbl_order set tbl_comment=? where comment_order_id=? ";
		String sql1 = "insert into tal_comment values (?,?,?,?) ";
		Object[] obj = {1,tc.getComment_order_id()};
	   Object[] obj1={tc.getComment_order_id(),tc.getComment_time(),tc.getComment_user_name(),tc.getComment_content()};
	jdbcTemplate.update(sql, obj);
	jdbcTemplate.update(sql, obj1);
	
	}
	//Ajax刷新订单数
	@Override
	public int count(String user_name){
		
		String sql="select count(*) from tbl_order  where order_user_name=? and order_status=0";
		Object[] obj = {user_name};
	List<Integer> list = jdbcTemplate.query(sql, obj, new innerCount());
		     if(list.size()>0)
		     {int a=(int) list.get(0);
		    System.out.println(a+"aaaaaaaaaaa");	 
		     return a;
		     }else 
		    	 return 0;
		
	} 
	
	class innerCount implements RowMapper<Integer> {

		@Override
		public Integer mapRow(ResultSet rs, int arg1) throws SQLException {
			// TODO Auto-generated method stub
			return rs.getInt("count(*)");
		}
		
	}//Ajax刷新订单数
	@Override
	public int count2(String user_name) {
		// TODO Auto-generated method stub
		String sql="select count(*) from tbl_order  where order_user_name=? and order_status=2 and order_comment=0 ";
		Object[] obj = {user_name};
	List<Integer> list = jdbcTemplate.query(sql, obj, new innerCount());
		     if(list.size()>0)
		     {int a=(int) list.get(0);
		    System.out.println(a+"aaaaaaaaaaa22222");	 
		     return a;
		     }else 
		    	 return 0;
	}
	//Ajax刷新订单数
	@Override
	public int count1(String user_name) {
		// TODO Auto-generated method stub
		String sql="select count(*) from tbl_order  where order_user_name=? and order_status=1 and order_comment=0 ";
		Object[] obj = {user_name};
	List<Integer> list = jdbcTemplate.query(sql, obj, new innerCount());
		     if(list.size()>0)
		     {int a=(int) list.get(0);
		    System.out.println(a+"aaaaaaaaaaa111");	 
		     return a;
		     }else 
		    	 return 0;
	}
	//上传菜品
	@Override
	public void cuisine(hk_cuisine hc) {
		// TODO Auto-generated method stub
		String sql = "insert into cuisine values (?,?,?,?,?,?,?)";
		Object[] obj = {hc.getCuisine_name(),hc.getHc_name(),hc.getPrice(),hc.getMaterial(),hc.getMethod(),hc.getDescription(),hc.getPath()};
				jdbcTemplate.update(sql, obj);
	}
	
	//用户查看菜品
	public List<hk_cuisine> user_look(){
	String sql = "select * from cuisine";
    List<hk_cuisine> list = jdbcTemplate.query(sql, new usermapp());
	return list;
	}
	class usermapp implements RowMapper{

		@Override
		public Object mapRow(ResultSet rs, int arg1) throws SQLException {
			// TODO Auto-generated method stub
			hk_cuisine hc = new hk_cuisine();
			hc.setCuisine_name(rs.getString("cuisine_name"));
			hc.setPath(rs.getString("path"));
			hc.setHc_name(rs.getString("hc_name"));
			hc.setDescription(rs.getString("description"));
			hc.setMaterial(rs.getString("material"));
			hc.setPrice(rs.getInt("price"));
			hc.setMethod(rs.getString("method"));
			
			return hc;
		}
		
	}
	
	//家厨查询菜品
	public List<hk_cuisine> selectcuisine(String hc_name){
		String sql = "select * from cuisine where hc_name=?";
		Object[] obj={hc_name};
		List<hk_cuisine> list=jdbcTemplate.query(sql, obj, new hcselect());
		return list;
	}
	class hcselect implements RowMapper{

		@Override
		public Object mapRow(ResultSet rs, int arg1) throws SQLException {
			// TODO Auto-generated method stub
			hk_cuisine hc = new hk_cuisine();
			hc.setCuisine_name(rs.getString("cuisine_name"));
			hc.setDescription(rs.getString("description"));
			hc.setHc_name(rs.getString("hc_name"));
			hc.setMaterial(rs.getString("material"));
			hc.setMethod(rs.getString("method"));
			hc.setPath(rs.getString("path"));
			hc.setPrice(rs.getInt("price"));
			return hc;
		}}
//家厨接收订单
	public void hcok(String user_name){
		String sql = "update tbl_order set order_status=1 where order_user_name=?";
		Object[] obj = {user_name};
		jdbcTemplate.update(sql, obj);
		
	}
	//拒绝接单 
	public void hcno(String user_name){
		String sql = "";
	}
	//家厨订单提醒
	@Override
	public int count3(String hc_name) {
		// TODO Auto-generated method stub
		String sql = "select count(*) from tbl_order where hc_name=? and order_status=0";
		Object[] obj = {hc_name};
		List list=jdbcTemplate.query(sql, obj, new sel());
		if(list.size()>0){
			
			return (int) list.get(0);
		}else{
		return 0;}
	}
class sel implements RowMapper{
	@Override
	public Object mapRow(ResultSet rs, int arg1) throws SQLException {
		// TODO Auto-generated method stub
	return rs.getInt("count(*)");
	}
	
}
//家厨接单
@Override
public List<order> sc4(String hc_name) {
	// TODO Auto-generated method stub
	String sql = "select * from tbl_order where hc_name=? and order_status=0";
	Object[] obj = {hc_name};
	List<order> list = jdbcTemplate.query(sql, obj, new sal()) ;
	return list;
}
class sal implements RowMapper{

	@Override
	public Object mapRow(ResultSet rs, int arg1) throws SQLException {
		// TODO Auto-generated method stub
		order or = new order();
		or.setHc_name(rs.getString("hc_name"));
		or.setOrder_food_name(rs.getString("order_food_name"));
		or.setOrder_time(rs.getString("order_time"));
		or.setOrder_status(rs.getInt("order_status"));
		or.setOrder_user_name(rs.getString("order_user_name"));
	or.setOrder_id(rs.getInt("order_id"));
		System.out.println(or.getOrder_status());
		return or;
	}
	
}
@Override
public String uporder(String order_id) {
	// TODO Auto-generated method stub
	System.out.println(order_id+"hah");
	String sql = "update tbl_order set order_status=1 where order_id=? ";
	
	
	Object[] obj = {order_id};
	jdbcTemplate.update(sql, obj);
	return null;
}
//家厨已接订单
public int count5(String hc_name){
	String sql = "select count(*) from tbl_order where hc_name=? and order_status=1";
Object[] obj = {hc_name};
List list=jdbcTemplate.query(sql, obj, new sel());
if(list.size()>0){
	return (int) list.get(0);
}else{
return 0;}
}

@Override
public List<order> sc5(String hc_name) {
	// TODO Auto-generated method stub
	String sql = "select * from tbl_order where hc_name=? and order_status=1";
	Object[] obj = {hc_name};
	List<order> list = jdbcTemplate.query(sql, obj, new sal()) ;
	return list;
}
@Override
public void sc6(String order_id) {
	// TODO Auto-generated method stub
	String sql = "update tbl_order set order_status=2 where order_id=?";

	Object[] obj = {order_id};
	jdbcTemplate.update(sql, obj);
System.out.println("chenggong");
}

public List<order> sc7(String hc_name){
	String sql = "select * from tbl_order where hc_name=? and order_status=2";
	Object[] obj = {hc_name};
	List<order> list = jdbcTemplate.query(sql, obj, new sal()) ;
	return list;
	
}
@Override
public void sc8(String order_id) {
	// TODO Auto-generated method stub
	String sql = "delete  from tbl_order  where order_id=? ";
  Object[] obj = {order_id};
jdbcTemplate.update(sql, obj);
}



}