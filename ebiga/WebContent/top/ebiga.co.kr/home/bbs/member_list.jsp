<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="javax.sql.*"%>
<%@page import="javax.naming.*"%>
<%@page import="java.sql.*"%>
<%@page import="com.javalec.db.*"%>
<%@page import="com.javalec.command.*"%>

<%
	List memberlist = (List) request.getAttribute("memberlist");
	System.out.println(memberlist + "member_list까지 정보 불러옴 안불러옴?");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member_list.jsp</title>
</head>

<div id="header">
	<div class="content">
		<div id="top_bar">
			<ul>
				<%
					String id = (String) session.getAttribute("idSession");
					if (id != null) {
						System.out.println(session.getAttribute("idSession"));
				%>
				<li><a href="logout.member">로그아웃</a></li>
				<%
					if (id.equals("admin")) {
							System.out.println("들어왔다.");
				%>
				<li><a href="member_list.member">회원목록</a></li>
				<%
					}
					} else {
				%>
				<li><a href="login_form.member">로그인</a></li>
				<li><a href="agreement.member">회원가입</a></li>
				<%
					}
					System.out.println("서현이가 너무 좋아~~~-승연~~~~");
				%>

				<li><a
					href="https://ebiga.co.kr/home/bbs/board.jsp?bo_table=video">이비가Family</a></li>
			</ul>
		</div>
		<h1 id="logo">
			<a href="index.member"><img
				src="https://ebiga.co.kr/home/image/logo.jpg" alt="이비가짬뽕"></a>
		</h1>
	</div>
	<div id="nav_bg"></div>
</div>

<div align=center>

	<table border=1 width=300>
		<tr align=center>
			<td colspan=2>회원 목록</td>
		</tr>
		<%
			for (int i = 0; i < memberlist.size(); i++) {
				MemberBean member = (MemberBean) memberlist.get(i);
		%>

		<tr align=center>

			<td><a
				href="member_info.member?Member_ID=<%=member.getMEMBER_ID()%>">
					<%=member.getMEMBER_ID()%>
			</a></td>
			<td><a
				href="member_delete.member?Member_ID=<%=member.getMEMBER_ID()%>">삭제</a></td>
		</tr>
		<%
			}
		%>

		<tr align=center>
			<td colspan=2><a href="adminMain.member">메인페이지</a></td>
		</tr>
	</table>
</div>





</body>
</html>