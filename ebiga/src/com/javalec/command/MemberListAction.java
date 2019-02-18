package com.javalec.command;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.javalec.db.*;

public class MemberListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		ActionForward forward = new ActionForward();
		HttpSession session = request.getSession();
		MemberDao memberdao = new MemberDao();
		
		List memberlist = new ArrayList();


		memberlist = memberdao.getMemberList();
		
		if (memberlist == null) {
			System.out.println("목록없음");
			return null;
		}
		request.setAttribute("memberlist", memberlist);
		forward.setRedirect(false);
		forward.setPath("./top/ebiga.co.kr/home/bbs/member_list.jsp");
		return forward;

	}

}
