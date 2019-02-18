package com.javalec.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.javalec.db.*;


public class MemberDeleteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		ActionForward forward = new ActionForward();

		HttpSession session = request.getSession();
		MemberDao memberdao = new MemberDao();

		boolean result = false;

		String Member_ID = (String) session.getAttribute("Member_ID");

		String delete = request.getParameter("Member_ID");
		result = memberdao.memberDelete(delete);

		if (result == false) {
			System.out.println("삭제실패");
			return null;
		}
		forward.setRedirect(true);
		
		forward.setPath("member_list.member");
		return forward;
		
	}
}
