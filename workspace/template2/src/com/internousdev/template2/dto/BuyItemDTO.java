package com.internousdev.template2.dto;

public class BuyItemDTO {
	private int id;
	private String itemName;
	private String itemPrice;

	public int getId() {
		return id;
	}
	public void setId(int id){ //BuyItemDAOからセッターに入れる
		this.id = id;
	}
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public String getItemPrice() {
		return itemPrice;
	}
	public void setItemPrice(String itemPrice) {
		this.itemPrice = itemPrice;
	}


}
