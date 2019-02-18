package com.javalec.command;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class MemberLogoutAction implements Action {
   @Override
   public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
      // TODO Auto-generated method stub
      request.setCharacterEncoding("UTF-8");
      ActionForward forward = new ActionForward();

      HttpSession session = request.getSession();
      System.out.println(session.getAttribute("idSession"));
      if(session.getAttribute("idSession") != null) {
      session.removeAttribute("idSession");

      forward.setRedirect(false);
      forward.setPath("index.member");
      return forward;
      }
      return null;

   }
}