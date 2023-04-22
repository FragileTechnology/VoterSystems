package com.votersystem.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.votersystem.dao.PartyDAO;
import com.votersystem.dao.PartyDAOImpl;
import com.votersystem.dto.PartyEntity;

/**
 * Servlet implementation class PartyController
 */
@WebServlet("/PartyController")
public class PartyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PartyController() {
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
		String partyName = request.getParameter("partyName");
		String presidentName =  request.getParameter("partyPresident");
		String symboll = request.getParameter("partySymbol");
		System.out.println("partyName===>"+partyName+" presidentName==>"+presidentName+" symboll==>0"+symboll);
		
		PartyEntity partyEntity = new PartyEntity();
		partyEntity.setPartyname(partyName);
		partyEntity.setPresidentname(presidentName);
		partyEntity.setSymboll(symboll);
		
		PartyDAO dao = new PartyDAOImpl();
		try {
			 String result = dao.createParty(partyEntity);
			 System.out.println("result===============>"+result);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
