package com.javalec.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.javalec.db.*;
import com.javalec.command.*;

public class MemberInfoAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub

		ActionForward forward = new ActionForward();

		HttpSession session = request.getSession();

		MemberDao memberdao = new MemberDao();
		MemberBean member = new MemberBean();

		String Member_ID = (String) session.getAttribute("Member_ID");

		String info = request.getParameter("Member_ID");
		member = memberdao.memberInfo(info);

		if (member == null) {
			System.out.println("회원 정보 보기 실패");
			return null;
		}

		request.setAttribute("member", member);

		forward.setRedirect(false);
		forward.setPath("/top/ebiga.co.kr/home/bbs/member_info.jsp");
		return forward;

	}
}
