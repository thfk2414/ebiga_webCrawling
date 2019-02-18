package com.javalec.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.db.EtcBean;
import com.javalec.db.EtcDAO;

public class DaeguSearch implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		
		ActionForward forward = new ActionForward();
		ArrayList <EtcBean>searchList = null;
		EtcDAO etcdao = new EtcDAO();
		
		searchList=etcdao.getDaegu();
	   	if(searchList==null){
	   		System.out.println("비였다.");
	   		return null;
	   	}
	   	System.out.println("대구 지점 등장");
	   	for(int i=0;i<searchList.size();i++) {
	   		System.out.println(searchList.get(i).getTEL());
	   	}
	   	System.out.println(searchList);
	   	
	   	request.setAttribute("searchList", searchList);
	   	forward.setRedirect(false);
   		forward.setPath("/top/ebiga.co.kr/home/bbs/board_대구.jsp");
   		return forward;
	}

}