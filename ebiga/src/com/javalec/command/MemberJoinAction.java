package com.javalec.command;

import java.io.PrintWriter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.javalec.db.MemberBean;
import com.javalec.db.MemberDao;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

/*
 * 회원가입을 처리하는 Action 클래스 
 * joinForm.jsp에서 넘겨받은 정보를 이용하여 회원가입 처리
 * */

public class MemberJoinAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
	
		boolean result = false;

		request.setCharacterEncoding("UTF-8");
		ActionForward forward = new ActionForward();
		

		MemberDao memberdao = new MemberDao();
		MemberBean memberdata = new MemberBean();
		try {
			System.out.println(request.getParameter("mb_id"));
			memberdata.setMEMBER_ID(request.getParameter("mb_id"));
			memberdata.setMEMBER_PW(request.getParameter("mb_password"));
		
			memberdata.setMEMBER_NAME(request.getParameter("mb_name"));
			memberdata.setMEMBER_NICK(request.getParameter("mb_nick"));
			memberdata.setMEMBER_EMAIL(request.getParameter("mb_email"));
			memberdata.setMEMBER_COM(request.getParameter("mb_1"));
			memberdata.setMEMBER_HOMEPAGE(request.getParameter("mb_homepage"));
			memberdata.setMEMBER_TEL(request.getParameter("mb_tel"));
			memberdata.setMEMBER_PHONE(request.getParameter("mb_hp"));
			memberdata.setMEMBER_ADD(request.getParameter("mb_addr1"));
			memberdata.setMEMBER_ADD1(request.getParameter("mb_addr2"));
			memberdata.setMEMBER_MAIL(request.getParameter("mb_mailling"));
			memberdata.setMEMBER_SMS(request.getParameter("mb_sms"));

			if (memberdao.memberJoin(memberdata)) {

				System.out.println("회원등록성공");
				forward.setRedirect(true);
				forward.setPath("./index.member");
				return forward;
			} else {
				System.out.println("회원등록실패");
				forward.setRedirect(true);
				forward.setPath("./register.member");
				return forward;
			}

		} catch (Exception e) {
			// TODO: handle exception
		}

		forward.setRedirect(true);
		forward.setPath("");
		return forward;

	}
}
