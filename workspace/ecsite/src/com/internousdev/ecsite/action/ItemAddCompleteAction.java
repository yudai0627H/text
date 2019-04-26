package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.ItemAddCompleteDAO;
import com.opensymphony.xwork2.ActionSupport;


public class ItemAddCompleteAction extends ActionSupport implements SessionAware {

	public Map<String,Object>session;

	public String execute() throws SQLException{
		ItemAddCompleteDAO itemAddCompleteDAO=new ItemAddCompleteDAO();
		itemAddCompleteDAO.addItem(session.get("itemName").toString(),
				session.get("itemPrice").toString(),
				session.get("itemStock").toString());

		String result=SUCCESS;
		return result;

	}

	public Map<String, Object>getSession(){
		return session;
	}

	@Override
	public void setSession(Map<String,Object> session){
		this.session=session;
	}

}
