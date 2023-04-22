package com.votersystem.dao;


import com.votersystem.dto.UserEntity;
import java.util.ArrayList;
import java.util.List;

public interface UserDAO {
	
	public String createUser(UserEntity uEntity) throws Exception;
	//public ArrayList<UserEntity> searchAllUser(String searchText) throws Exception;
	public List<UserEntity> getAllUserDetails() throws Exception;
	public UserEntity checkUserForLogin(String name, String pwd) throws Exception;
}
