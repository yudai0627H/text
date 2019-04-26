package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.internousdev.ecsite.dto.UserListDTO;
import com.internousdev.ecsite.util.DBConnector;

public class UserListDAO {

	private DBConnector dbConnector=new DBConnector();
	private Connection connection=dbConnector.getConnection();

	public List<UserListDTO> getUserList() throws SQLException{
		List<UserListDTO> userListDTOList=new ArrayList<UserListDTO>();
		String sql="SELECT *FROM login_user_transaction ORDER BY id";
		try{

			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			ResultSet resultSet=preparedStatement.executeQuery();
			while(resultSet.next()){
				UserListDTO dto=new UserListDTO();
				dto.setId(resultSet.getString("id"));
				dto.setLoginId(resultSet.getString("login_id"));
				dto.setLoginPass(resultSet.getString("login_pass"));
				dto.setUserName(resultSet.getString("user_name"));
				dto.setInsert_date(resultSet.getString("insert_date"));
				dto.setUpdate_date(resultSet.getString("update_date"));
				userListDTOList.add(dto);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			connection.close();
		}
		return userListDTOList;

	}

}
