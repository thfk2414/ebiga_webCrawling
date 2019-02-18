package com.javalec.command;

import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.javalec.db.*;

public class BoardListAction implements Action {
   public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
      ActionForward forward = new ActionForward();
      HttpSession session = request.getSession();
      
      BoardDAO boarddao = new BoardDAO();
      List boa = new ArrayList();
      
      System.out.println("11111111");
      int page = 1;
      int limit = 10;

      if (request.getParameter("page") != null) {
         page = Integer.parseInt(request.getParameter("page"));
      }

      int listcount = boarddao.getListCount();
      boa = boarddao.getBoardList(page, limit);

      int maxpage = (int) ((double) listcount / limit + 0.95);

      int startpage = (((int) ((double) page / 10 + 0.9)) - 1) * 10 + 1;

      int endpage = maxpage;

      if (endpage > startpage + 10 - 1)
         endpage = startpage + 10 - 1;

      request.setAttribute("page", page);
      request.setAttribute("maxpage", maxpage);
      request.setAttribute("startpage", startpage);
      request.setAttribute("endpage", endpage);
      request.setAttribute("listcount", listcount);
      request.setAttribute("boardlist", boa);

   
      forward.setRedirect(false);
      forward.setPath("./top/ebiga.co.kr/home/bbs/notice.jsp");
      return forward;
   }
}