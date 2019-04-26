package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.ecsite.util.DBConnector;
import com.internousdev.ecsite.util.DateUtil;

public class BuyItemCompleteDAO {

	private DateUtil dateUtil=new DateUtil();

	private String sql="INSERT INTO user_buy_item_transaction (item_transaction_id,total_price,total_count,user_master_id,pay,insert_date) VALUES(?,?,?,?,?,?)";


	public int buyItemeInfo(String item_transaction_id,String user_master_id,int total_price, int total_count, String pay)throws SQLException{
		DBConnector dbConnector=new DBConnector();
		Connection connection = dbConnector.getConnection();
		int count = 0;
		try{
			PreparedStatement preparedStatement =connection.prepareStatement(sql);
			preparedStatement.setString(1, item_transaction_id);
			preparedStatement.setInt(2, total_price);
			preparedStatement.setInt(3, total_count);
			preparedStatement.setString(4, user_master_id);
			preparedStatement.setString(5, pay);
			preparedStatement.setString(6, dateUtil.getDate());

			count = preparedStatement.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			connection.close();
		}
		return count;
	}

}
