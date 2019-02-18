package com.javalec.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.db.EtcBean;
import com.javalec.db.EtcDAO;

public class SeoulSearch implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		
		
		ArrayList <EtcBean>searchList = null;
		EtcDAO etcdao = new EtcDAO();
		
		searchList=etcdao.getSeoul();
	   	if(searchList==null){
	   		System.out.println("비였다.");
	   		return null;
	   	}
	   	System.out.println("서울 지점 등장");
	   
		request.setAttribute("searchList", searchList);
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("/top/ebiga.co.kr/home/bbs/board_서울.jsp"); //	/ 는 root ./는 현재폴더 ../는 상위폴더
   		return forward;
	}

}
