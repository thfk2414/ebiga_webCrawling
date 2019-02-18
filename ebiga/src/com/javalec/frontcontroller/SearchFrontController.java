package com.javalec.frontcontroller;

import java.io.IOException;
import java.lang.ProcessBuilder.Redirect;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.command.Action;
import com.javalec.command.*;


public class SearchFrontController extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
	protected void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String RequestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = RequestURI.substring(contextPath.length());
		ActionForward forward = null;
		Action action = null;

		System.out.println(command);
		System.out.println("서블릿으로 들어온다.");

		if (command.equals("/start.search")) {
			System.out.println("새로운 방식으로 넣었지로올로로로로로로오오오오오오123");
			action = new selectSearch();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace(); // end doProcess
			}

		} else if (command.equals("/top/ebiga.co.kr/home/bbs/seoul.search")) {
			System.out.println("서울 검색하러 옴");
			action = new SeoulSearch();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace(); // end doProcess
			}

		} else if (command.equals("/top/ebiga.co.kr/home/bbs/daegu.search")) {
			System.out.println("대구 검색하러 옴");
			action = new DaeguSearch();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace(); // end doProcess
			}

		} else if (command.equals("/top/ebiga.co.kr/home/bbs/Gwangju.search")) {
			System.out.println("광주 검색하러 옴");
			action = new GwangjuSearch();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace(); // end doProcess
			}

		} else if (command.equals("/top/ebiga.co.kr/home/bbs/daejeon.search")) {
			System.out.println("대전 검색하러 옴");
			action = new DaejeonSearch();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace(); // end doProcess
			}

		} else if (command.equals("/top/ebiga.co.kr/home/bbs/busan.search")) {
			System.out.println("부산 검색하러 옴");
			action = new BusanSearch();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace(); // end doProcess
			}

		} else if (command.equals("/top/ebiga.co.kr/home/bbs/ulsan.search")) {
			System.out.println("울산 검색하러 옴");
			action = new UlsanSearch();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace(); // end doProcess
			}

		} else if (command.equals("/top/ebiga.co.kr/home/bbs/incheon.search")) {
			System.out.println("인천 검색하러 옴");
			action = new IncheonSearch();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace(); // end doProcess
			}

		} else if (command.equals("/top/ebiga.co.kr/home/bbs/jeju.search")) {
			System.out.println("제주 검색하러 옴");
			action = new JejuSearch();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace(); // end doProcess
			}

		} else if (command.equals("/select.search")) {
			System.out.println("지점 및 지역 검색하러 옴");
			action = new selectSearch();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace(); // end doProcess
			}

		}else if(command.equals("/top/ebiga.co.kr/home/bbs/store.search")) {
			System.out.println("통계자료 만들러왔어염 ㅎㅎ ");
			action = new Search();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace(); // end doProcess
			}
		}

		if (forward.isRedirect()) {
			response.sendRedirect(forward.getPath());
		} else {
			System.out.println("final : "+forward.getPath());
			RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
			dispatcher.forward(request, response);
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
	}

}
