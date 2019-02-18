package com.javalec.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.db.EtcBean;
import com.javalec.db.EtcDAO;

public class Search implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub

		ActionForward forward = new ActionForward();
		ArrayList<EtcBean> searchList = null;
		EtcDAO etcdao = new EtcDAO();

		String ctx = request.getParameter("ctx");

		if (ctx != null) {
			
			searchList = etcdao.search(ctx);
		
		}
			System.out.println("차트그릴거임");
			System.out.println(searchList);

			request.setAttribute("searchList", searchList);
			forward.setRedirect(false);
			forward.setPath("/top/ebiga.co.kr/home/bbs/SalesGraph.jsp");
		return forward;
	}
}
