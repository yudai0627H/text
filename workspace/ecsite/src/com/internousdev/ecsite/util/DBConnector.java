package com.internousdev.ecsite.util;

import java.sql.Connection;      // 111
import java.sql.DriverManager;   //これらのクラスをインポートしている
import java.sql.SQLException;

public class DBConnector {

	private static String driverName="com.mysql.jdbc.Driver";   //mysqlに接続が必要な情報
	private static String url="jdbc:mysql://localhost/ecsite";//jdbc:mysql://(サーバー名)/(データベース名)

	private static String user ="root";
	private static String password="";

	public Connection getConnection(){ //111
		Connection con=null;   //接続を表すConnectionオブジェクトの初期化

		try{
			Class.forName(driverName);
			con=(Connection)DriverManager.getConnection(url,user,password);
		}catch(ClassNotFoundException e){
			e.printStackTrace();
		}catch(SQLException e){
			e.printStackTrace();
	}
		return con;
	}
}
