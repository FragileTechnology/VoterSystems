package com.votersystem.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.votersystem.dao.CandidateRegistrationDAOImpl;
import com.votersystem.dto.CandidateRegistrationEntity;

/**
 * Servlet implementation class CandidateRegistrationController
 */
@WebServlet("/CandidateRegistrationController")
public class CandidateRegistrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CandidateRegistrationController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		String docmd = request.getParameter("docmd");
		String nextPage = null;
		if(docmd != null && docmd.equalsIgnoreCase("createCandidate"));
		{
			//Creating object named candidateEntity of class CandidateRegistrationEntity
			CandidateRegistrationEntity candidateRegistrationEntity = new CandidateRegistrationEntity();
			
			//declaring variables for the input from the html page.
			String name = request.getParameter("name");
			String electionProgram = request.getParameter("electionProgram");
			int year = Integer.parseInt(request.getParameter("year"));
			String electionType = request.getParameter("electionType");
			String startDate = request.getParameter("startDate");
			String endtDate = request.getParameter("endtDate");
			String division = request.getParameter("division");
			String district = request.getParameter("district");
			String tehsil = request.getParameter("tehsil");
			int age = Integer.parseInt(request.getParameter("age"));
			long contact = Long.parseLong(request.getParameter("contact"));
			String wardName = request.getParameter("wardName");
			String wardNo = request.getParameter("wardNo");
			String reservationCategory = request.getParameter("reservationCategory");
			String postalAddress = request.getParameter("postalAddress");
			String customN1 = request.getParameter("N1");
			int customN2 = Integer.parseInt(request.getParameter("N2"));
			int customN3 = Integer.parseInt(request.getParameter("N3"));
			String customV1 = request.getParameter("V1");
			String customV2 = request.getParameter("V2");
			String customV3 = request.getParameter("V3");
			
			// using setter to set attributes of userEntity
			
			candidateRegistrationEntity.setName(name);
			candidateRegistrationEntity.setElectionProgram(electionProgram);
			candidateRegistrationEntity.setElectionType(electionType);
			candidateRegistrationEntity.setStartDate(startDate);
			candidateRegistrationEntity.setEndDate(endtDate);
			candidateRegistrationEntity.setDivision(division);
			candidateRegistrationEntity.setDistrict(district);
			candidateRegistrationEntity.setTehsil(tehsil);
			candidateRegistrationEntity.setWardName(wardName);
			candidateRegistrationEntity.setReservationCategory(reservationCategory);
			candidateRegistrationEntity.setPostalAddress(postalAddress);
			candidateRegistrationEntity.setYear(year);
			candidateRegistrationEntity.setAge(age);
			candidateRegistrationEntity.setWardName(wardName);
			candidateRegistrationEntity.setCustomN1(customN3);
			candidateRegistrationEntity.setCustomN2(customN2);
			candidateRegistrationEntity.setCustomN3(customN3);
			candidateRegistrationEntity.setCustomV1(customV1);
			candidateRegistrationEntity.setCustomV2(customV2);
			candidateRegistrationEntity.setCustomV3(customV3);
			candidateRegistrationEntity.setContact(contact);
			
			CandidateRegistrationDAOImpl impl = new CandidateRegistrationDAOImpl(); 
			try {
				String result = impl.createCandidate(candidateRegistrationEntity);
				if(result.equals("Success")){
					request.setAttribute("success", "User Created Successfully.");
					nextPage="candidateRegistration.jsp";
				}else{
					request.setAttribute("error", "Error Occured while creating Day Order.");
					nextPage="candidateRegistration.jsp";
				}
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}	
		}
		request.getRequestDispatcher(nextPage).forward(request, response);
		
		}
		
}


