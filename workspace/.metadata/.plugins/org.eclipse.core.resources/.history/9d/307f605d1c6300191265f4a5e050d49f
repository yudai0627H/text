package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.internousdev.ecsite.dto.ItemListDTO;
import com.internousdev.ecsite.util.DBConnector;

public class BuyItemDAO {

	public ItemListDTO getItemInfo(String id) throws SQLException{
		DBConnector dbConnector=new DBConnector();
		Connection connection=dbConnector.getConnection();
		ItemListDTO dto=new ItemListDTO();

		String sql="SELECT * FROM item_info_transaction WHERE id=?";
		try{

			PreparedStatement preparedStatement =connection.prepareStatement(sql);
			preparedStatement.setString(1,id);
			ResultSet resultSet=preparedStatement.executeQuery();
			if(resultSet.next()){
				dto.setId(resultSet.getString("id"));
				dto.setItemName(resultSet.getString("item_name"));
				dto.setItemPrice(resultSet.getString("item_price"));
				dto.setItemStock(resultSet.getInt("item_stock"));
				dto.setInsert_date(resultSet.getString("insert_date"));
				dto.setUpdate_date(resultSet.getString("update_date"));

			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			connection.close();
		}
		return dto;
}


	public int getItemStock(String id) throws SQLException {
		DBConnector dbConnector=new DBConnector();

		Connection connection=dbConnector.getConnection();
		int itemStock=0;

		String sql="SELECT item_stock FROM item_info_transaction where id=?";
		try{

			PreparedStatement preparedStatement=connection.prepareStatement(sql);

			preparedStatement.setString(1,id);

			ResultSet resultSet=preparedStatement.executeQuery();

			if(resultSet.next()){
				itemStock = resultSet.getInt("item_stock");
			}
		}catch(Exception e){
				e.printStackTrace();

	}finally{
		connection.close();
	}
		return itemStock;
	}

	public int updateItemStock(String id, int count) throws SQLException {
		int result=0;

		DBConnector dbConnector=new DBConnector();
		Connection connection=dbConnector.getConnection();

		String sql="UPDATE item_info_transaction SET item_stock=?  where id=?";

		try{
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setInt(1,count);
			preparedStatement.setString(2,id);
			result=preparedStatement.executeUpdate();

		}catch(Exception e){
			e.printStackTrace();
		}finally{
			connection.close();
	}
		return result;
	}
		}
