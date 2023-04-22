package com.votersystem.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.votersystem.dto.PartyEntity;
import com.votersystem.util.DataConnection;

public class PartyDAOImpl implements PartyDAO {

	@Override
	public String createParty(PartyEntity pEntity) throws Exception {
		// TODO Auto-generated method stub
		Connection con = DataConnection.getConnection();
		String sqlQuery = "INSERT INTO party_registration (party_name,party_symbol,party_president,V1,V2,N1,N2) value (?,?,?,?,?,?,?)";
				
		PreparedStatement pst = con.prepareStatement(sqlQuery);
		pst.setString(1, pEntity.getPartyname());
		pst.setString(2, pEntity.getSymboll());
		pst.setString(3, pEntity.getPresidentname());
		pst.setString(4, pEntity.getCustomV1());
		pst.setString(5, pEntity.getCustomV2());
		pst.setInt(6, pEntity.getCustomN1());
		pst.setInt(7, pEntity.getCustomN2());
		int isRecordInserted = pst.executeUpdate();
		
		return isRecordInserted>0?"Success":"Error";
	}

	@Override
	public List<PartyEntity> getAllPartyDetails() throws Exception {
		// TODO Auto-generated method stub
		List<PartyEntity> partyList = new ArrayList<>();
		Connection con = DataConnection.getConnection();
		String sqlQuery = "select * from party_registration";
		Statement stmt = con.createStatement();
		ResultSet rs=  stmt.executeQuery(sqlQuery);
		while(rs.next()) {
			PartyEntity partyEntity = new PartyEntity();
			partyEntity.setPartyname(rs.getString("party_name"));
			partyEntity.setPresidentname(rs.getString("party_president"));
			partyEntity.setSymboll(rs.getString("party_symbol"));
			partyEntity.setPartyId(rs.getInt("party_id"));
			partyEntity.setCustomN1(rs.getInt("N1"));
			partyEntity.setCustomN2(rs.getInt("N2"));
			partyEntity.setCustomV2(rs.getString("V2"));
			partyEntity.setCustomV1(rs.getString("V1"));
			partyList.add(partyEntity);
		}
		
		return partyList;
	}

	

}
