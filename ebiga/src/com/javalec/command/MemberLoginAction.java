package com.javalec.command;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.javalec.db.*;


public class MemberLoginAction implements Action {
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		ActionForward forward = new ActionForward();

		HttpSession session = request.getSession();
		MemberDao memberdao = new MemberDao();
		System.out.println("로그인");
		String Member_ID = request.getParameter("mb_id");
		String MEMBER_PW = request.getParameter("mb_password");
		System.out.println(Member_ID);
		System.out.println("adminMain으로 가고 싶지 않니?");

		if (memberdao.memberLogin(Member_ID, MEMBER_PW) == true) {
			session.setAttribute("idSession", Member_ID);
			String id = (String) session.getAttribute("idSession");
			System.out.println(id + " 입장");

			if (id.equals("admin")) {
				forward.setRedirect(false);
				System.out.println("adminMain으로 가고 싶지 않니?");
				forward.setPath("adminMain.member");
				System.out.println("idSession");
				return forward;
			} else {
				forward.setRedirect(false);
				System.out.println("main으로 가지 그래?");
				forward.setPath("index.member");
				System.out.println("idSession");
				return forward;

			}

		} else {
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('아이디와 비밀번호 확인해주세요')");
			out.println("location.herf='./login.member");
			out.println("<script>");

		}
		return null;
	}
}
