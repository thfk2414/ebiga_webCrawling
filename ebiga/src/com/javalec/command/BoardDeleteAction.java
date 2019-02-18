package com.javalec.command;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.db.*;

public class BoardDeleteAction implements Action {
   public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

      ActionForward forward = new ActionForward();
      request.setCharacterEncoding("euc-kr");
      boolean result = false;
      int num = Integer.parseInt(request.getParameter("num"));
      BoardDAO boarddao = new BoardDAO();

      result = boarddao.boardDelete(num);

      if (result == false) {
         System.out.println("연결실패");
         return null;
      }

      
      forward.setRedirect(true);
      forward.setPath("./BoardList.bo");
      return forward;
   }
}