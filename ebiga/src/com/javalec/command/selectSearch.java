package com.javalec.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.db.EtcBean;
import com.javalec.db.EtcDAO;

public class selectSearch implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub

		ActionForward forward = new ActionForward();
		ArrayList<EtcBean> searchList = null;
		EtcDAO etcdao = new EtcDAO();

		String ctx = request.getParameter("ctx");
		String storeName = request.getParameter("storename");
		String tel = request.getParameter("phone");
		String address = request.getParameter("Address");
		
		System.out.println("왜 널값임?");
		System.out.println(storeName);
		System.out.println(tel);
		System.out.println(address);
		
		if(storeName != null && tel != null && address != null) {
			System.out.println("값이 들어왔다요");
			etcdao.selectstore(storeName,tel,address);
		} 
		
		if (ctx != null) {
			if (ctx.equals("서울")) {
				searchList = etcdao.getSeoul();
				
				for(int i=0;i<searchList.size();i++) {
					System.out.println(searchList.get(i));
				}
			}else if (ctx.equals("광주")) {
				searchList = etcdao.getGwangju();
				
				for(int i=0;i<searchList.size();i++) {
					System.out.println(searchList.get(i));
				}
			}else if (ctx.equals("제주")) {
				searchList = etcdao.getJeju();
				
				for(int i=0;i<searchList.size();i++) {
					System.out.println(searchList.get(i));
				}
			}else if (ctx.equals("대구")) {
				searchList = etcdao.getDaegu();
				
				for(int i=0;i<searchList.size();i++) {
					System.out.println(searchList.get(i));
				}
			}else if (ctx.equals("대전")) {
				searchList = etcdao.getDaejeon();
				
				for(int i=0;i<searchList.size();i++) {
					System.out.println(searchList.get(i));
				}
			}else if (ctx.equals("부산")) {
				searchList = etcdao.getBusan();
				
				for(int i=0;i<searchList.size();i++) {
					System.out.println(searchList.get(i));
				}
			}else if (ctx.equals("울산")) {
				searchList = etcdao.getUlsan();
				
				for(int i=0;i<searchList.size();i++) {
					System.out.println(searchList.get(i));
				}
			}else if (ctx.equals("인천")) {
				searchList = etcdao.getIncheon();
				
				for(int i=0;i<searchList.size();i++) {
					System.out.println(searchList.get(i));
				}
			}
		} else {
			searchList = etcdao.getselect();
			System.out.println("지역 및 지점 등장");
			if (searchList == null) {
				System.out.println("비였다.");
				return null;
			}
		}
		request.setAttribute("searchList", searchList);
		forward.setRedirect(false);
		forward.setPath("/top/ebiga.co.kr/home/bbs/board_main.jsp");
		
		return forward;
	}

}
