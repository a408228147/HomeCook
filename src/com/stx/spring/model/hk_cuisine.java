package com.stx.spring.model;

public class hk_cuisine {
private String cuisine_name;
private String hc_name;
private int price;//¼Û¸ñ
private String material;//²ÄÁÏ
private String path;
private String method;
private String description;
public String getCuisine_name() {
	return cuisine_name;
}
public void setCuisine_name(String cuisine_name) {
	this.cuisine_name = cuisine_name;
}
public String getHc_name() {
	return hc_name;
}
public void setHc_name(String hc_name) {
	this.hc_name = hc_name;
}
public int getPrice() {
	return price;
}
public void setPrice(int price) {
	this.price = price;
}
public String getMaterial() {
	return material;
}
public void setMaterial(String material) {
	this.material = material;
}
public String getPath() {
	return path;
}
public void setPath(String path) {
	this.path = path;
}
public String getMethod() {
	return method;
}
public void setMethod(String method) {
	this.method = method;
}
public String getDescription() {
	return description;
}
public void setDescription(String description) {
	this.description = description;
}
}
