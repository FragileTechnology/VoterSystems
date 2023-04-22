package com.votersystem.dao;

import java.util.List;

import com.votersystem.dto.PartyEntity;

public interface PartyDAO {
	public String createParty(PartyEntity pEntity) throws Exception;
	public List<PartyEntity> getAllPartyDetails() throws Exception;
}
