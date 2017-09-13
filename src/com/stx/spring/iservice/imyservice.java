package com.stx.spring.iservice;

import java.util.List;

import com.stx.spring.model.hk_cuisine;
import com.stx.spring.model.tal_comment;
import com.stx.spring.model.order;

public interface imyservice {
public void userorder(order to);//提交订单
public List check(String user_name);//用户查询订单
public List checkq(String user_name);//用户查询订单
public void update(tal_comment tc);//用户评价  未完成
public int count(String user_name);//Ajax查询订单数
public int count2(String user_name);//Ajax查询订单数
public int count1(String user_name);//Ajax查询订单数
public void cuisine(hk_cuisine hc);//家厨上传菜品
public void hcok(String user_name);//家厨接单
public List<hk_cuisine> selectcuisine(String hc_name);//家厨查询菜品
public List<hk_cuisine> user_look();//用户选菜
public int count3(String hc_name);//查询条数
public List<order> sc4(String hc_name);//订单
public String uporder(String order_id);//接单
public int count5(String hc_name);//条数
public List<order> sc5(String hc_name);//订单
public void sc6(String order_id);//历史
public List<order> sc7(String hc_name);//历史订单
public void  sc8(String order_id);//删除历史订单


}
