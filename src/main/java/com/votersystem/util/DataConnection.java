package com.votersystem.util;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;




public class DataConnection {
	private static Connection connection=null;
	
	public static Connection getConnection(){
		
		if (connection!=null) {
			return connection;
		}else{
			try {
				Properties properties=new Properties();
				
				InputStream dbstream=DataConnection.class.getClassLoader().getResourceAsStream("db.properties");
				
				properties.load(dbstream);
				
				String driver=properties.getProperty("driver");
				String url=properties.getProperty("url");
				String user=properties.getProperty("user");
				String pass=properties.getProperty("pass");
				
				Class.forName(driver);
				connection=DriverManager.getConnection(url,user,pass);
				
				
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			} catch (FileNotFoundException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return connection;
		
	}
	

}
