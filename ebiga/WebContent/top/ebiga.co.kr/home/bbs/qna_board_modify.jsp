<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.javalec.db.*"%>
<%@ page import="com.javalec.command.*"%>
<%
	BoardBean board = (BoardBean) request.getAttribute("boarddata");
%>

<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,minimum-scale=0,maximum-scale=10,user-scalable=yes">
<meta http-equiv="imagetoolbar" content="no">
<meta http-equiv="X-UA-Compatible" content="IE=10,chrome=1">
<title>2018 추석 휴무 안내 > 공지사항-등록 | 이비가짬뽕</title>
<link rel="stylesheet"
	href="https://ebiga.co.kr/home/css/default.css?ver=161020">
<link rel="stylesheet"
	href="https://ebiga.co.kr/home/skin/board/basic/style.css?ver=161020">
<link rel="stylesheet" href="https://ebiga.co.kr/home/css/style.css">
<link rel="stylesheet"
	href="http://fontawesome.io/assets/font-awesome/css/font-awesome.css">
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">

<!--[if lte IE 8]>
<script src="https://ebiga.co.kr/home/js/html5.js"></script>
<![endif]-->
<script>
	// 자바스크립트에서 사용하는 전역변수 선언
	var g5_url = "https://ebiga.co.kr/home";
	var g5_bbs_url = "https://ebiga.co.kr/home/bbs";
	var g5_is_member = "";
	var g5_is_admin = "";
	var g5_is_mobile = "";
	var g5_bo_table = "notice02";
	var g5_sca = "";
	var g5_editor = "";
	var g5_cookie_domain = "";
</script>
<script src="https://ebiga.co.kr/home/js/jquery-1.8.3.min.js"></script>
<script src="https://ebiga.co.kr/home/js/jquery.menu.js?ver=161020"></script>
<script src="https://ebiga.co.kr/home/js/common.js?ver=161020"></script>
<script src="https://ebiga.co.kr/home/js/wrest.js?ver=161020"></script>
<script src="https://ebiga.co.kr/home/js/script.js"></script>
<script language="javascript">
	function modifyboard() {
		modifyform.submit();
	}
</script>
</head>
<body>

	<!-- 회원탈퇴 스크립트 시작 { -->
	<script type="text/javascript">
		function member_leave() { // 회원 탈퇴 tto
			if (confirm('회원에서 탈퇴 하시겠습니까?'))
				location.href = 'https://ebiga.co.kr/home/bbs/member_confirm.php?url=member_leave.php';
		}
	</script>
	<!-- }회원탈퇴 스크립트 끝 -->

	<!-- 상단 시작 { -->
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
					%>

					<li><a
						href="https://ebiga.co.kr/home/bbs/board.jsp?bo_table=video">이비가Family</a></li>

				</ul>
			</div>
			<h1 id="logo">
				<a href="index.member"><img
					src="https://ebiga.co.kr/home/image/logo.jpg" alt="이비가짬뽕"></a>
			</h1>
			<div id="m_family">
				<a href="https://ebiga.co.kr/home/bbs/board.jsp?bo_table=video"><i
					class="fa fa-user" aria-hidden="true"></i></a> <a href="logout.member"
					class="logout"><i class="fa fa-user-times" aria-hidden="true"></i></a>
			</div>
			<div id="nav_btn">
				<i class="fa fa-bars" aria-hidden="true"></i>
			</div>
			<ul id="nav">
				<li><a href="sub01.sub">이비가소개</a>
					<ul class="sub_menu">
						<li><a href="sub01.sub">인사말</a></li>
						<li><a href="sub01_02.sub">연혁</a></li>
						<li><a href="sub01_03.sub">기업소개</a></li>
						<li><a href="ebigaIn.bss">이비가人</a></li>
					</ul></li>
				<li><a href="sub06.sub">브랜드스토리</a>
					<ul class="sub_menu">
						<li><a href="sub06.sub">이비가의비밀</a></li>
						<li><a href="sub06_02.sub">짬뽕스토리</a></li>
						<li><a href="sub06_03.sub">재료스토리</a></li>
						<li><a href="sub06_04.sub">BI</a></li>
					</ul></li>

				<li><a href="search.sub">매장안내</a>
					<ul class="sub_menu">
						<li><a href="search.bbs">매장안내</a></li>
						<li><a href="best.bbs">우수가맹점</a></li>
					</ul></li>

				<li><a href="open.bbs">이비가소식</a>
					<ul class="sub_menu">
						<li><a href="open.bbs">오픈점 소식</a></li>
						<li><a href="BoardList.bo">공지사항</a></li>
						<li><a href="event.bbs">이벤트</a></li>
						<li><a href="tv.bbs">TV</a></li>
						<li><a href="media.bbs">언론</a></li>
						<li><a href="community.bbs">고객의소리</a></li>
					</ul></li>
				<li><a href="BoardWrite.bo">게시판관리</a>
					<ul class="sub_menu">
						<li><a href="BoardWrite.bo">공지사항</a></li>
						<li><a href="community.bbs">고객의소리</a></li>
						<li><a href="select.search">지점 추가</a></li>
					</ul></li>
			</ul>
		</div>
		<div id="nav_bg"></div>
	</div>

	<!-- } 상단 끝 -->
	<!-- 컨텐츠 시작 { -->
	<div id="container">

		<div id="sub_top" class="bg05">
			<h2 class="title">게시판 관리</h2>
			<span class="line"></span>
			<ul class="path">
				<li><a href="index.member"><img
						src="https://ebiga.co.kr/home/image/home_btn.png" alt="홈"></a></li>
				<li>게시판 관리</li>
				<li>공지사항</li>
			</ul>
		</div>
	</div>
	<br>

	<style>
#view_all {
	margin-left: 495px;
	margin-right: 495px;
}

#writebox {
	margin-bottom: 2px;
	padding: 20px;
	background-color: rgba(220, 220, 220, 0.4);
	margin-top: 2px
}

#writetb {
	background-color: white;
}
</style>

	<div align="center">

		<%
			if (id == null) {
				System.out.println(session.getAttribute("idSession"));
		%>
		<div id="titleunder" class="titleunder">공지사항</div>

		<div>
			<%
				out.println("관리자만 사용가능합니다.");
			%>
			<br>
			<%
				} else if (id.equals("admin")) {

					System.out.println(session.getAttribute("idSession") + "관리자 모드 공지사항 등록하기");
			%>
		</div>
		<br>

	</div>



	<form action="BoardModifyAction.bo" method="post" name="modifyform">
		<input type="hidden" name="BOARD_NUM" value=<%=board.getBOARD_NUM()%>>
		<div id="view_all" class="view_all">
			<div id="writebox" class="writebox">
				<table align="center" width="700px" cellpadding="0" cellspacing="0"
					id="writetb" class="writetb">

					<tr>
						<td align="center" height="50px"><b>제 목</b></td>
						<td><input type="text" name="BOARD_SUBJECT"
							style="width: 500px; height: 50px;"
							value="<%=board.getBOARD_SUBJECT()%>"></td>
					</tr>

					<tr>
						<td align="center" height="500px"><b>내용</b></td>
						<td style="width: 500px;"><textarea name="BOARD_CONTENT"
								rows="20" style="width: 500px; height: 500px;">		<%=board.getBOARD_CONTENT()%></textarea></td>
					</tr>
					<%
						if (!(board.getBOARD_FILE() == null)) {
					%>

					<tr>
						<td>
							<div align="center">
								<b>파일첨부</b>
							</div>
						</td>&nbsp;
						<td style="width: 500px; height: 50px;">&nbsp;&nbsp;<%=board.getBOARD_FILE()%>
						</td>
					</tr>
					<%
						}
					%>



				</table>
			</div>
			<br>
			<div align="right">
				<a href="javascript:modifyboard()" class="btn_b01"
					style="background-color: rgba(220, 220, 220, 0.3);">수정</a>&nbsp;&nbsp;
				<a href="javascript:history.go(-1)" class="btn_b01"
					style="background-color: rgba(220, 220, 220, 0.3);">뒤로</a>

			</div>
		</div>
	</form>

	<%
		}
	%>
	<br>

	<!-- 하단 시작 { -->
	<div id="footer">
		<div id="bottom">
			<ul class="sns">
				<li><a href="index.member"><img
						src="https://ebiga.co.kr/home/image/f_home.png" alt="홈"></a></li>
				<li><a href="https://ko-kr.facebook.com/ebigafood"
					target="_blank"><img
						src="https://ebiga.co.kr/home/image/f_facebook.png" alt="페이스북"></a></li>
				<li><a href="https://www.youtube.com/watch?v=rTqbX2j9ebQ&t=8s"
					target="_blank"><img
						src="https://ebiga.co.kr/home/image/f_youtube.png" alt="유투브"></a></li>
			</ul>
			<ul class="link">
				<li><a
					href="https://ebiga.co.kr/home/bbs/content.php?co_id=privacy">개인정보처리방침</a></li>
				<li><a href="#">이용약관</a></li>
				<li><a href="#">이메일무단수집거부</a></li>
				<li><a
					href="https://ebiga.co.kr/home/bbs/board.php?bo_table=store">오시는길</a></li>
				<li><a
					href="https://ebiga.co.kr/home/bbs/board.php?bo_table=faq">창업문의</a></li>
			</ul>
			<p class="address">
				(주)이비가푸드 대전광역시 서구 계룡로 199 이비가빌딩 5층<br> 대표. 권순창 l 사업자등록번호.
				314-86-23662 l 고객센터. <a href="tel:042-716-0088">042.716.0088</a><br>
				<br> Copyright(C) 2017 EBIGA ALL RIGHTS RESERVED.
			</p>

			<a href="#header" class="scroll_top"><i
				class="fa fa-arrow-circle-up" aria-hidden="true"></i></a>
		</div>

	</div>
	<!-- } 하단 끝 -->



	<!-- ie6,7에서 사이드뷰가 게시판 목록에서 아래 사이드뷰에 가려지는 현상 수정 -->
	<!--[if lte IE 7]>
<script>
$(function() {
    var $sv_use = $(".sv_use");
    var count = $sv_use.length;

    $sv_use.each(function() {
        $(this).css("z-index", count);
        $(this).css("position", "relative");
        count = count - 1;
    });
});
</script>
<![endif]-->
</body>
</html>

<!-- 사용스킨 : basic -->
