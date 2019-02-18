package com.javalec.command;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.db.*;

public class BoardModifyAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		ActionForward forward = new ActionForward();
		boolean result = false;

		int num = Integer.parseInt(request.getParameter("BOARD_NUM"));

		BoardDAO boarddao = new BoardDAO();
		BoardBean boarddata = new BoardBean();

		String RequestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = RequestURI.substring(contextPath.length());

		
		try {
			boarddata.setBOARD_NUM(num);
			boarddata.setBOARD_SUBJECT(request.getParameter("BOARD_SUBJECT"));
			boarddata.setBOARD_CONTENT(request.getParameter("BOARD_CONTENT"));

			result = boarddao.boardModify(boarddata);
			if (result == false) {
				System.out.println("�Խ��� ���� ����");
				return null;
			}
			System.out.println("�Խ��� ���� �Ϸ�");

			forward.setRedirect(true);
			forward.setPath("./BoardDetailAction.bo?num=" + boarddata.getBOARD_NUM());
			return forward;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return null;
	}
}