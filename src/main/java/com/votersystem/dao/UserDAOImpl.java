package com.votersystem.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.votersystem.dto.UserEntity;
import com.votersystem.util.DataConnection;

public class UserDAOImpl  implements UserDAO{

	@Override
	public String createUser(UserEntity uEntity) throws Exception {
		// TODO Auto-generated method stub
		Connection con = DataConnection.getConnection();
		//connection establishment 
		
		PreparedStatement pst = con.prepareStatement("INSERT INTO user_details(NAME,EMAIL,CONTACT,PASSWORD) VALUES(?,?,?,?)");
		
		pst.setString(1, uEntity.getName());
		pst.setString(2, uEntity.getEmail());
		pst.setLong(3, uEntity.getContact());
		pst.setString(4, uEntity.getPassword());
		int status = pst.executeUpdate();
		return status>0?"Success":null;
	}
	
		
	
	
	public ArrayList<UserEntity> searchAllUser(String searchText) throws Exception {
		Connection con = DataConnection.getConnection();
		PreparedStatement pst = con.prepareStatement("SELECT * FROM user_details WHERE (NAME  LIKE (?) or EMAIL like(?) or CONTACT like(?) ) and status=1 ");
		pst.setString(1, searchText);
		pst.setString(2, searchText);
		pst.setString(3, searchText);
		ResultSet rs = pst.executeQuery();
		ArrayList<UserEntity> al = new ArrayList<UserEntity>();
		while(rs.next()){
			UserEntity entity = new UserEntity();
			entity.setName(rs.getString("name"));
			entity.setEmail(rs.getString("email"));
			entity.setContact(rs.getLong("contact"));
			al.add(entity);
		}
		return al;
	}




	@Override
	public UserEntity checkUserForLogin(String userName, String pwd) throws Exception {
		// TODO Auto-generated method stub
		Connection con = DataConnection.getConnection();
		PreparedStatement pst = con.prepareStatement("select * from user_details where email='"+userName+"' and password='"+pwd+"'");
		ResultSet rs = pst.executeQuery();
		UserEntity userEntity=null;
		while(rs.next()){
			userEntity = new UserEntity();
			userEntity.setUserId(rs.getInt("user_id"));
		}
		return userEntity;
	}




	@Override
	public List<UserEntity> getAllUserDetails() throws Exception {
		List<UserEntity> userList = new ArrayList<>();
		Connection con = DataConnection.getConnection();
		String sqlQuery = "SELECT * FROM user_details";
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery(sqlQuery);
		while (rs.next()) {
			UserEntity uEntity = new UserEntity();
			uEntity.setUserId(rs.getInt("user_id"));
			uEntity.setName(rs.getString("Name"));
			uEntity.setContact(rs.getLong("Contact"));
			uEntity.setEmail(rs.getString("Email"));
			// System.out.println("===>"+rs.getString("Email_id"));
			userList.add(uEntity);
		}

		return userList;
	}
	
	
	
}
