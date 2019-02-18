package com.javalec.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.db.EtcBean;
import com.javalec.db.EtcDAO;

public class BusanSearch implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		
		ActionForward forward = new ActionForward();
		ArrayList <EtcBean>searchList = null;
		EtcDAO etcdao = new EtcDAO();
		
		searchList=etcdao.getBusan();
	   	if(searchList==null){
	   		System.out.println("비였다.");
	   		return null;
	   	}
	   	System.out.println("부산 지점 등장");
	   	for(int i=0;i<searchList.size();i++) {
	   		System.out.println(searchList.get(i).getTEL());
	   	}
	   	System.out.println(searchList);
	   	
	   	request.setAttribute("searchList", searchList);
	   	forward.setRedirect(false);
   		forward.setPath("/top/ebiga.co.kr/home/bbs/board_부산.jsp");
   		return forward;
	}

}