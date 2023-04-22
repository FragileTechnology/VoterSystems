package com.votersystem.dao;

import com.votersystem.dto.CandidateRegistrationEntity;

public interface CandidateRegistrationDAO {
	public String createCandidate(CandidateRegistrationEntity cEntity) throws Exception;
	public String updateCandidate(CandidateRegistrationEntity cEntity) throws Exception;
	public String deleteCandidate(int candidateId) throws Exception;
	public String getAllCandidate() throws Exception;
	public String findByCandidateId(int candidateId) throws Exception;
}
