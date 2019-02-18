package com.javalec.frontcontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.command.Action;
import com.javalec.command.ActionForward;

public class bbsFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String RequestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = RequestURI.substring(contextPath.length());

		ActionForward forward = null;
		Action action = null;
		System.out.println(command);

		if (command.equals("/adminMain.bbs")) { // 硫붿씤�쑝濡� �씠�룞
			System.out.println(command);
			System.out.println("bbs");
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./top/ebiga.co.kr/home/bbs/adminMain.jsp");
		} 
		else if (command.equals("/best.bbs")) { // 硫붿씤�쑝濡� �씠�룞
			System.out.println(command);
			System.out.println("bbs ");
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./top/ebiga.co.kr/home/bbs/best.jsp");
		} else if (command.equals("/community.bbs")) { // 硫붿씤�쑝濡� �씠�룞
			System.out.println(command);
			System.out.println("bbs");
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./top/ebiga.co.kr/home/bbs/community.jsp");
		} else if (command.equals("/event.bbs")) { // 硫붿씤�쑝濡� �씠�룞
			System.out.println(command);
			System.out.println("bbs");
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./top/ebiga.co.kr/home/bbs/event.jsp");
		}
		
		else if (command.equals("/tv.bbs")) { // 硫붿씤�쑝濡� �씠�룞
			System.out.println(command);
			System.out.println("bbs");
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./top/ebiga.co.kr/home/bbs/tv.jsp");
		} 
		else if (command.equals("/ebigaIn.bbs")) { // 硫붿씤�쑝濡� �씠�룞
			System.out.println(command);
			System.out.println("bbs");
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./top/ebiga.co.kr/home/bbs/ebigaIn.jsp");
		} 
		else if (command.equals("/media.bbs")) {
			System.out.println(command);
			System.out.println("bbs");
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./top/ebiga.co.kr/home/bbs/media.jsp");
		} 
		else if (command.equals("/open.bbs")) { // 硫붿씤�쑝濡� �씠�룞
			System.out.println(command);
			System.out.println("bbs");
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./top/ebiga.co.kr/home/bbs/open.jsp");
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
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
		doGet(request, response);
	}

}
