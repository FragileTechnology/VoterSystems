package com.votersystem.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import com.votersystem.dto.MSDefinitionEntity;
import com.votersystem.util.DataConnection;
import com.votersystem.util.SqlQuerry;


public class MSDefinitionDAO {

	private static MSDefinitionDAO instance = null;
	
	public static MSDefinitionDAO getInstance(){
		if(instance == null){
			instance = new MSDefinitionDAO();
		}
		return instance;
	}
	String result="";
	  DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");  
	   LocalDateTime now = LocalDateTime.now();  
	   String currentDate = dtf.format(now);
	public String create(MSDefinitionEntity entity)throws Exception{
		Connection con = DataConnection.getConnection();
		PreparedStatement pst = con.prepareStatement(SqlQuerry.createDefinition);
		pst.setString(1, entity.getName());
		pst.setString(2, entity.getCategory());
		pst.setString(3, entity.getDescription());
		pst.setString(4, currentDate);
		int status = pst.executeUpdate();
		System.out.println();
		
		if(status>0){
			result = "success";
		}else{
			result = "error";
		}
		return result;
	}
	
	public String update(MSDefinitionEntity entity)throws Exception{
		Connection con = DataConnection.getConnection();
		PreparedStatement pst = con.prepareStatement(SqlQuerry.updateDefinition);
		pst.setString(1, entity.getName());
		pst.setString(2, entity.getCategory());
		pst.setString(3, entity.getDescription());
		pst.setInt(4, entity.getDef_id());
		int status = pst.executeUpdate();
		if(status>0){
			result="success";
		}else{
			result="error";
		}
		return result;
		
	}
	
	public List findByDefCategory(String category)throws Exception{
		Connection con = DataConnection.getConnection();
		PreparedStatement pst = con.prepareStatement(SqlQuerry.findByDefCategory);
		pst.setString(1, category);
		ResultSet rs = pst.executeQuery();
		List defEntities = new ArrayList();
		while(rs.next()){
			MSDefinitionEntity defEntity = new MSDefinitionEntity();
			defEntity.setDef_id(rs.getInt("def_id"));
			defEntity.setName(rs.getString("name"));
			defEntity.setCategory(rs.getString("category"));
			defEntity.setSubCategory(rs.getString("SUB_CATEGORY"));
			defEntity.setDescription(rs.getString("description"));
			defEntity.setCustomN1(rs.getInt("custom_N1"));
			defEntity.setCustomN2(rs.getInt("custom_N2"));
			defEntity.setCustomN3(rs.getInt("custom_N3"));
			defEntity.setCustomN4(rs.getInt("custom_N4"));
			defEntity.setCustomN5(rs.getInt("custom_N5"));
			defEntity.setCustomN6(rs.getInt("custom_N6"));
			defEntity.setCustomN7(rs.getInt("custom_N7"));
			defEntity.setCustomN8(rs.getInt("custom_N8"));
			defEntity.setCustomN9(rs.getInt("custom_N9"));
			defEntity.setCustomN10(rs.getInt("custom_N10"));
			defEntity.setCustomD1(rs.getDouble("custom_D1"));
			defEntity.setCustomD2(rs.getDouble("custom_D2"));
			defEntity.setCustomD3(rs.getDouble("custom_D3"));
			defEntity.setCustomD4(rs.getDouble("custom_D4"));
			defEntity.setCustomD5(rs.getDouble("custom_D5"));
			defEntity.setCustomD6(rs.getDouble("custom_D6"));
			defEntity.setCustomD7(rs.getDouble("custom_D7"));
			defEntity.setCustomD8(rs.getDouble("custom_D8"));
			defEntity.setCustomD9(rs.getDouble("custom_D9"));
			defEntity.setCustomD10(rs.getDouble("custom_D10"));
			defEntity.setCustomV1(rs.getString("custom_V1"));
			defEntity.setCustomV2(rs.getString("custom_V2"));
			defEntity.setCustomV3(rs.getString("custom_V3"));
			defEntity.setCustomV4(rs.getString("custom_V4"));
			defEntity.setCustomV5(rs.getString("custom_V5"));
			defEntity.setCustomV6(rs.getString("custom_V6"));
			defEntity.setCustomV7(rs.getString("custom_V7"));
			defEntity.setCustomV8(rs.getString("custom_V8"));
			defEntity.setCustomV9(rs.getString("custom_V9"));
			defEntity.setCustomV10(rs.getString("custom_V10"));
			defEntities.add(defEntity);
		}
		return defEntities;
		
	}
	
	public MSDefinitionEntity findByDefId(int defId)throws Exception{
		MSDefinitionEntity defEntity = new MSDefinitionEntity();
		Connection con = DataConnection.getConnection();
		PreparedStatement pst = con.prepareStatement(SqlQuerry.findByDefId);
		pst.setInt(1, defId);
		ResultSet rs = pst.executeQuery();
		while(rs.next()){
			defEntity.setDef_id(rs.getInt("def_id"));
			defEntity.setName(rs.getString("name"));
			defEntity.setDescription(rs.getString("description"));
			defEntity.setCategory(rs.getString("category"));
			defEntity.setSubCategory(rs.getString("subcategory"));
		}
		return defEntity;
	}
	
	public Collection findByCustomN1ANDCategory(String category,int customN1)throws Exception{
		List prefixList = new ArrayList();
		Connection con = DataConnection.getConnection();
		PreparedStatement pst = con.prepareStatement(SqlQuerry.findByCustomN1ANDCategory);
		pst.setString(1, category);
		pst.setInt(2, customN1);
		ResultSet rs = pst.executeQuery();
		while(rs.next()){
			MSDefinitionEntity defentity = new MSDefinitionEntity();
			defentity.setDef_id(rs.getInt("def_id"));
			defentity.setName(rs.getString("name"));
			defentity.setCategory(rs.getString("category"));
			defentity.setDescription(rs.getString("description"));
			defentity.setCustomN1(rs.getInt("custom_N1"));
			defentity.setSubCategory(rs.getString("subcategory"));
			prefixList.add(defentity);
		}
		return prefixList;
	}
	
}
