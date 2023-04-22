package com.votersystem.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.votersystem.dao.VoterDAO;
import com.votersystem.dao.VoterDAOImpl;
import com.votersystem.dto.VoterEntity;

/**
 * Servlet implementation class PartyController
 */
@WebServlet("/VoterRegistrationController")
public class VoterRegistrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VoterRegistrationController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		VoterEntity voterEntity = new VoterEntity();
		int userId=10;
		voterEntity.setUserId(userId);
		
		
		VoterDAO dao = new VoterDAOImpl();
		try {
			 String result = dao.createVoter(voterEntity);
			 System.out.println("result===============>"+result);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
