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
 * Servlet implementation class LogInOutController
 */
@WebServlet("/LogInOutController")
public class LogInOutController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LogInOutController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String docmd = request.getParameter("docmd");
		String nextPage="";
		if(docmd.equals("checkUserForLogin")) {
			String userName = request.getParameter("username");
			String password = request.getParameter("password");
			UserDAO dao = new UserDAOImpl();
			
			try {
				UserEntity uEntity = dao.checkUserForLogin(userName, password);
				if (uEntity != null) {
					nextPage = "dashBoard.jsp";
				}else {
					nextPage = "login.jsp";
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			request.getRequestDispatcher(nextPage).forward(request, response);
			
			
		}
	}

}
