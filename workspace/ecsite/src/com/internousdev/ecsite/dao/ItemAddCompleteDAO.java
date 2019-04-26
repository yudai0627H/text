package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.internousdev.ecsite.util.DBConnector;
import com.internousdev.ecsite.util.DateUtil;

public class ItemAddCompleteDAO {

	private DBConnector dbConnector=new DBConnector();
	private Connection connection=dbConnector.getConnection();
	private DateUtil dateUtil=new DateUtil();

	private String sql="INSERT INTO item_info_transaction(item_name, item_price, item_stock,insert_date) VALUES(?,?,?,?)";

	public void addItem(String itemName,String itemPrice, String itemStock)throws SQLException{

		try{
			PreparedStatement prepaerdStatement=connection.prepareStatement(sql);
			prepaerdStatement.setString(1,itemName);
			prepaerdStatement.setString(2,itemPrice);
			prepaerdStatement.setString(3,itemStock);
			prepaerdStatement.setString(4, dateUtil.getDate());

			prepaerdStatement.execute();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			connection.close();
	}
	}

	public boolean isExistsItemName(String itemName) throws SQLException{
		boolean result=false;
		DBConnector dbConnector=new DBConnector();
		Connection connection=dbConnector.getConnection();

		String sql="SELECT count(id) AS COUNT FROM item_info_transaction where item_name=?";

		try{
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setString(1, itemName);
			ResultSet rs=preparedStatement.executeQuery();

				if(rs.next()){
					if(rs.getInt("COUNT")>0){
						result=true;
					}
				}
			}
			catch(Exception e){
				e.printStackTrace();
			}finally{
				connection.close();
			}
			return result;

		}
	}
