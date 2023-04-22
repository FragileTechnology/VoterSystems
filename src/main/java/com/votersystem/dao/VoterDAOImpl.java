package com.votersystem.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import com.votersystem.dto.VoterEntity;
import com.votersystem.util.DataConnection;

public class VoterDAOImpl implements VoterDAO{
	@Override
	public String createVoter(VoterEntity vEntity) throws Exception {
		// TODO Auto-generated method stub
		Connection con = DataConnection.getConnection();
		//connection establishment 
		
		PreparedStatement pst = con.prepareStatement("INSERT INTO voterDetails(GENDER,AADHAR_NUMBER,DOB,STATE,CITY,DISTRICT,TALUKA,VILLAGE,POSTAL_CODE) VALUES(?,?,?,?,?,?,?,?,?,?,?,?)");
		pst.setInt(1, vEntity.getUserId());
		pst.setInt(2, vEntity.getGender());
		pst.setLong(3, vEntity.getAadhar());
		pst.setString(4, vEntity.getDob());
		pst.setString(5, vEntity.getState());
		pst.setString(6, vEntity.getCity());
		pst.setString(7, vEntity.getDistrict());
		pst.setString(8, vEntity.getTaluka());
		pst.setString(9, vEntity.getVillage());
		pst.setInt(10, vEntity.getPostal_code());
		
		int status = pst.executeUpdate();
		return status>0?"Success":null;
	}
	
}
