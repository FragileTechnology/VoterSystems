package com.votersystem.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.votersystem.dto.CandidateRegistrationEntity;
import com.votersystem.util.DataConnection;

public class CandidateRegistrationDAOImpl implements CandidateRegistrationDAO 
{

	@Override
	public String createCandidate(CandidateRegistrationEntity cEntity) throws Exception {
		// TODO Auto-generated method stub
		//Connection establishment.
		Connection con = DataConnection.getConnection();
		
		PreparedStatement pst = con.prepareStatement("INSERT INTO candidate_registration (NAME, ELECTION_PROGRAM, YEAR, ELECTION_TYPE, START_DATE, END_DATE, DIVISION, DISTRICT, TEHSIL ,AGE ,CONTACT, WARD_NAME, WARD_No, RESERVATION_CATEGORY, POSTAL_ADDRESS, CUSTOM_N1, CUSTOM_N2, CUSTOM_N3, CUSTOM_V1, CUSTOM_V2, CUSTOM_V3) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		
		pst.setString(1, cEntity.getName());
		pst.setString(2, cEntity.getElectionProgram());
		pst.setLong(3, cEntity.getYear());
		pst.setString(4, cEntity.getElectionProgram());
		pst.setString(5, cEntity.getEndDate());
		pst.setString(6, cEntity.getEndDate());
		pst.setString(7, cEntity.getDivision());
		pst.setString(8, cEntity.getDistrict());
		pst.setString(9, cEntity.getTehsil());
		pst.setInt(10, cEntity.getAge());
		pst.setLong(11, cEntity.getContact());
		pst.setString(12, cEntity.getName());
		pst.setString(13, cEntity.getWardName());
		pst.setString(14, cEntity.getReservationCategory());
		pst.setString(15, cEntity.getPostalAddress());
		pst.setInt(16, cEntity.getCustomN1());
		pst.setInt(17, cEntity.getCustomN2());
		pst.setInt(18, cEntity.getCustomN3());
		pst.setLong(19, cEntity.getCustomN1());
		pst.setLong(20, cEntity.getCustomN1());
		pst.setLong(21, cEntity.getCustomN3());
		int status = pst.executeUpdate();
		return status>0?"Success":null;
	}

	@Override
	public String updateCandidate(CandidateRegistrationEntity uEntity) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String deleteCandidate(int candidateId) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getAllCandidate() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String findByCandidateId(int candidateId) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
	
}

