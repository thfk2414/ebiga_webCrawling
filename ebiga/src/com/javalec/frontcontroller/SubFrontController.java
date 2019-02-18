package com.javalec.frontcontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.command.*;

/**
 * Servlet implementation class subFrontController
 */
public class SubFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String RequestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = RequestURI.substring(contextPath.length());

		ActionForward forward = null;
		Action action = null;
		System.out.println(command);

		if (command.equals("/sub01.sub")) { // 硫붿씤�쑝濡� �씠�룞
			System.out.println(command);
			System.out.println("sub");
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./top/ebiga.co.kr/home/sub01_02.jsp");
		} 
		else if (command.equals("/sub01_02.sub")) { // 硫붿씤�쑝濡� �씠�룞
			System.out.println(command);
			System.out.println("sub ");
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./top/ebiga.co.kr/home/sub01_02.jsp");
		} else if (command.equals("/sub01_03.sub")) { // 硫붿씤�쑝濡� �씠�룞
			System.out.println(command);
			System.out.println("sub");
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./top/ebiga.co.kr/home/sub01_03.jsp");
		} else if (command.equals("/sub02.sub")) { // 硫붿씤�쑝濡� �씠�룞
			System.out.println(command);
			System.out.println("sub");
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./top/ebiga.co.kr/home/sub02.jsp");
		} else if (command.equals("/sub04_02.sub")) { // 硫붿씤�쑝濡� �씠�룞
			System.out.println(command);
			System.out.println("sub �엯�땲�떎");
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./top/ebiga.co.kr/home/sub04_02.jsp");
		} else if (command.equals("/sub04_03.sub")) { // 硫붿씤�쑝濡� �씠�룞
			System.out.println(command);
			System.out.println("sub");
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./top/ebiga.co.kr/home/sub04_03.jsp");
		} else if (command.equals("/sub04.sub")) { // 硫붿씤�쑝濡� �씠�룞
			System.out.println(command);
			System.out.println("sub �엯�땲�떎");
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./top/ebiga.co.kr/home/sub04.jsp");
		} else if (command.equals("/sub06_02.sub")) { // 硫붿씤�쑝濡� �씠�룞
			System.out.println(command);
			System.out.println("sub ");
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./top/ebiga.co.kr/home/sub06_02.jsp");
			
		} else if (command.equals("/sub06_03.sub")) { // 硫붿씤�쑝濡� �씠�룞
			System.out.println(command);
			System.out.println("sub �엯�땲�떎");
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./top/ebiga.co.kr/home/sub06_03.jsp");
		} else if (command.equals("/sub06_04.sub")) { // 硫붿씤�쑝濡� �씠�룞
			System.out.println(command);
			System.out.println("sub");
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./top/ebiga.co.kr/home/sub06_04.jsp");
		} else if (command.equals("/sub06.sub")) { // 硫붿씤�쑝濡� �씠�룞
			System.out.println(command);
			System.out.println("sub");
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./top/ebiga.co.kr/home/sub06.jsp");
		}
		if (forward.isRedirect()) {
			response.sendRedirect(forward.getPath());
		} else {
			RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
			dispatcher.forward(request, response);
		}
	}
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
	
	}

}
