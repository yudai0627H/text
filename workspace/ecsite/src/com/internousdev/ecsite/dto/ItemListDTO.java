package com.internousdev.ecsite.dto;

import java.util.List;

public class ItemListDTO {
	private String id;
	private String itemName;
	private String itemPrice;
	private int itemStock;
	private String insert_date;
	private String update_date;
	//追加
	private String itemTransactionId;
	private String count;
	private String totalCount;
	private String totalPrice;
	private String pay;
	private List<Integer> itemCountList;


	public String getId(){
		return id;
	}

	public void setId(String id){
		this.id=id;
	}

	public String getItemName(){
		return itemName;
	}

	public void setItemName(String itemName){
		this.itemName=itemName;
	}

	public String getItemPrice(){
		return itemPrice;
	}

	public void setItemPrice(String itemPrice){
		this.itemPrice=itemPrice;
	}

	public int getItemStock(){
		return itemStock;
	}

	public void setItemStock(int itemStock){
		this.itemStock=itemStock;
	}

	public String getInsert_date(){
		return insert_date;
	}

	public void setInsert_date(String insert_date){
		this.insert_date=insert_date;
	}

	public String getUpdate_date(){
		return update_date;
	}

	public void setUpdate_date(String update_date){
		this.update_date=update_date;
	}

	//追加
	public String getItemTransactionId(){
		return itemTransactionId;
	}

	public void setItemTransactionId(String itemTransactionId) {
		this.itemTransactionId=itemTransactionId;
	}

	public String getCount(){
		return count;
	}

	public void setCount(String count) {
		this.count=count;

	}

	public String getTotalPrice(){
		return totalPrice;
	}

	public void setTotalPrice(String totalPrice) {
		this.totalPrice=totalPrice;

	}

	public String getTotalCount(){
		return totalCount;
	}

	public void setTotalCount(String totalCount) {
		this.totalCount=totalCount;
	}

	public String getPay(){
		return pay;
	}

	public void setPay(String pay) {
		this.pay=pay;

	}

	public List<Integer> getItemCountList() {
		return itemCountList;
	}

	public void setItemCountList(List<Integer> itemCountList) {
		this.itemCountList = itemCountList;
	}


}
