package com.votersystem.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.votersystem.dao.UserDAO;
import com.votersystem.dao.UserDAOImpl;
import com.votersystem.dto.UserEntity;

/**
 * Servlet implementation class UserRegistrationController
 */
@WebServlet("/UserRegistrationController")
public class UserRegistrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserRegistrationController() {
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
		String docmd=  request.getParameter("docmd");
		String nextPage = null;
		if(docmd != null && docmd.equalsIgnoreCase("createUser")) {
			UserEntity userEntity = new UserEntity();
			// creating object named userEntity of the class UserEntity
			
			//declaring variables for the input from the html page 
			String name = request.getParameter("useName");		
			String email = request.getParameter("useremail");
			long contact = Long.parseLong(request.getParameter("usercontact"));
			String password = request.getParameter("userpassword");
			// using setter to set attributes of userEntity
			userEntity.setName(name);
		    userEntity.setEmail(email);
			userEntity.setContact(contact);
			userEntity.setPassword(password);
			UserDAO impl = new UserDAOImpl();
			try {
				String result = impl.createUser(userEntity);
				if(result.equals("Success")){
					request.setAttribute("success", "User Created Successfully.");
					nextPage="userRegistration.jsp";
				}else{
					request.setAttribute("error", "Error Occured while creating Day Order.");
					nextPage="userRegistration.jsp";
				}
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}	
		}
		request.getRequestDispatcher(nextPage).forward(request, response);
		
		
		
		
	}

	

}
