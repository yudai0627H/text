package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.internousdev.ecsite.util.DBConnector;
import com.internousdev.ecsite.util.DateUtil;

public class UserCreateCompleteDAO {
		private DateUtil dateUtil=new DateUtil();

		public void createUser(String loginUserId, String loginUserPassword, String userName) throws
		SQLException{

			DBConnector dbConnector =new DBConnector();//4-36
			Connection connection=dbConnector.getConnection();

			String sql="INSERT INTO login_user_transaction (login_id, login_pass, user_name, insert_date) VALUES(?,?,?,?)";

			try{
				PreparedStatement preparedStatement =connection.prepareStatement(sql);
				preparedStatement.setString(1, loginUserId);
				preparedStatement.setString(2, loginUserPassword);
				preparedStatement.setString(3, userName);
				preparedStatement.setString(4, dateUtil.getDate());

				preparedStatement.execute();
			}catch(Exception e){
				e.printStackTrace();
			}finally{
				connection.close();
			}
		}
		public boolean isExsistUserId(String loginUserId) throws SQLException {
			boolean result = false;
			DBConnector dbConnector =new DBConnector();
			Connection connection=dbConnector.getConnection();

			String sql="SELECT count(id) AS COUNT FROM login_user_transaction where login_id=?";

			try{
				PreparedStatement preparedStatement =connection.prepareStatement(sql);
				preparedStatement.setString(1, loginUserId);
				ResultSet rs = preparedStatement.executeQuery();

				if(rs.next()) {
					if(rs.getInt("COUNT") > 0) {
						result = true;
					}
				}
			}catch(Exception e){
				e.printStackTrace();
			}finally{
				connection.close();
			}
			return result;

		}



}
