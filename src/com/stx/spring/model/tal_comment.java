package com.stx.spring.model;

public class tal_comment {//评论表模型
private int comment_order_id;
private  String comment_time;
private String  comment_user_name;
private  String comment_content;
public int getComment_order_id() {
	return comment_order_id;
}
public void setComment_order_id(int comment_food_id) {
	this.comment_order_id = comment_food_id;
}

public String getComment_time() {
	return comment_time;
}
public void setComment_time(String comment_time) {
	this.comment_time = comment_time;
}
public String getComment_user_name() {
	return comment_user_name;
}
public void setComment_user_id(String comment_user_id) {
	this.comment_user_name = comment_user_id;
}
public String getComment_content() {
	return comment_content;
}
public void setComment_content(String comment_content) {
	this.comment_content = comment_content;
}
}
