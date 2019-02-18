<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="com.javalec.command.*"%>
%>
<%@page import="java.util.*"%>
<%@page import="javax.sql.*"%>
<%@page import="javax.naming.*"%>
<%@page import="java.sql.*"%>
<%@page import="com.javalec.db.*"%>
<%
	ArrayList<EtcBean> searchlist = (ArrayList) request.getAttribute("searchList");
%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,minimum-scale=0,maximum-scale=10,user-scalable=yes">
<meta http-equiv="imagetoolbar" content="no">
<meta http-equiv="X-UA-Compatible" content="IE=10,chrome=1">
<title>매장안내 1 페이지 | 이비가짬뽕</title>
<link rel="stylesheet"
	href="https://ebiga.co.kr/home/css/default.css?ver=161020">
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
	var g5_bo_table = "store";
	var g5_sca = "울산";
	var g5_editor = "smarteditor2";
	var g5_cookie_domain = "";
</script>
<script src="https://ebiga.co.kr/home/js/jquery-1.8.3.min.js"></script>
<script src="https://ebiga.co.kr/home/js/jquery.menu.js?ver=161020"></script>
<script src="https://ebiga.co.kr/home/js/common.js?ver=161020"></script>
<script src="https://ebiga.co.kr/home/js/wrest.js?ver=161020"></script>
<script src="https://ebiga.co.kr/home/js/script.js"></script>
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
					class="fa fa-user" aria-hidden="true"></i></a>
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

				<li><a href="select.search">매장안내</a>
					<ul class="sub_menu">
						<li><a href="select.search">매장안내</a></li>

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

		<div id="sub_top" class="bg03">
			<h2 class="title">매장안내</h2>
			<span class="line"></span>
			<ul class="path">
				<li><a href="index.member"><img
						src="https://ebiga.co.kr/home/image/home_btn.png" alt="홈"></a></li>
				<li>매장안내</li>
				<li>매장안내</li>
			</ul>
		</div>
		<!-- } #sub_top 끝 -->

		<div id="snb">
			<ul>
				<li><a href="select.search" class="on">매장안내</a></li>
			</ul>
		</div>
		<!-- } #snb 끝 -->

		<div id="sub" class="bbs">
			<script
				src="https://ebiga.co.kr/home/skin/board/branch/js/raphael_min.js"></script>
			<script
				src="https://ebiga.co.kr/home/skin/board/branch/js/raphael_path_s.korea.js"></script>
			<link rel="stylesheet"
				href="https://ebiga.co.kr/home/skin/board/branch/style.css">










			<!-- 게시판 목록 시작 { -->
			<div id="bo_list" style="width: 100%">

				<div id="canvas">
					<div id="south"></div>
					<div id="seoul">
						<h2>서울특별시</h2>
					</div>
					<div id="gygg">
						<h2>경기도</h2>
					</div>
					<div id="incheon">
						<h2>인천광역시</h2>
					</div>
					<div id="gangwon">
						<h2>강원도</h2>
					</div>
					<div id="chungbuk">
						<h2>충청북도</h2>
					</div>
					<div id="chungnam">
						<h2>충청남도</h2>
					</div>
					<div id="daejeon">
						<h2>대전광역시</h2>
					</div>
					<div id="sejong">
						<h2>세종특별자치시</h2>
					</div>
					<div id="gwangju">
						<h2>광주광역시</h2>
					</div>
					<div id="jeonbuk">
						<h2>전라북도</h2>
					</div>
					<div id="jeonnam">
						<h2>전라남도</h2>
					</div>
					<div id="gyeongbuk">
						<h2>경상북도</h2>
					</div>
					<div id="gyeongnam">
						<h2>경상남도</h2>
					</div>
					<div id="daegu">
						<h2>대구광역시</h2>
					</div>
					<div id="busan">
						<h2>부산광역시</h2>
					</div>
					<div id="ulsan">
						<h2>울산광역시</h2>
					</div>
					<div id="jeju">
						<h2>제주특별자치도</h2>
					</div>
				</div>

				<div id="map_right_wrapper">

					<p class="list_search_title">
						<i class="fa fa-map-marker" aria-hidden="true"></i> 시도별 지점안내
					</p>
					<!-- 게시판 카테고리 시작 { -->
					<form name="fcategory" id="fcategory" method="get">
						<nav id="bo_cate">
							<h2>매장안내 카테고리</h2>
							<ul id="bo_cate_ul">
								<li><a href="./seoul.search">서울</a></li>
								<li><a href="./incheon.search">인천</a></li>
								<li><a href="./daejeon.search">대전</a></li>
								<li><a href="./Gwangju.search">광주</a></li>
								<li><a href="./daegu.search">대구</a></li>
								<li><a href="./busan.search">부산</a></li>
								<li><a href="./ulsan.search">울산</a></li>
								<li><a href="./jeju.search">제주</a></li>
							</ul>
						</nav>
					</form>
					<!-- } 게시판 카테고리 끝 -->

					<!-- 게시판 검색 시작 { -->
					<fieldset id="bo_sch">
						<p class="list_search_title">
							<i class="fa fa-map-marker" aria-hidden="true"></i> 매장찾기
						</p>
						<legend>게시물 검색</legend>

						<form name="fsearch" method="get">
							<input type="hidden" name="bo_table" value="store"> <input
								type="hidden" name="sca" value="울산" id="sca"> <input
								type="hidden" name="sop" value="and"> <label for="sfl"
								class="sound_only">검색대상</label> <select name="sfl" id="sfl">
								<option value="wr_subject">지점명</option>
								<option value="wr_2">주소</option>
							</select> <label for="stx" class="sound_only">검색어<strong
								class="sound_only"> 필수</strong></label> <input type="text" name="stx"
								value="" required class="frm_input required" size="15"
								maxlength="15"> <input type="submit" value="검색"
								class="btn_submit">
						</form>
					</fieldset>
					<!-- } 게시판 검색 끝 -->
				</div>

				<div style="clear: both;"></div>
				<!-- 게시판 페이지 정보 및 버튼 시작 { -->
				<div class="bo_fx">
					<!-- div id="bo_list_total">
            <span>Total 건</span>
             페이지
        </div -->

				</div>
				<!-- } 게시판 페이지 정보 및 버튼 끝 -->

				<form name="fboardlist" id="fboardlist"
					action="./board_list_update.php"
					onsubmit="return fboardlist_submit(this);" method="post">
					<input type="hidden" name="bo_table" value="store"> <input
						type="hidden" name="sfl" value=""> <input type="hidden"
						name="stx" value=""> <input type="hidden" name="spt"
						value="-151"> <input type="hidden" name="page" value="1">
					<input type="hidden" name="sw" value="">



					<table class="basic_tbl" id="pc_list">
						<caption>매장안내 목록</caption>
						<thead>
							<tr>
								<th scope="col">지점명</th>
								<th scope="col">연락처</th>
								<th scope="col">주소</th>
							</tr>
						</thead>
						<tbody>
							<%
								for (int i = 0; i < searchlist.size(); i++) {
									EtcBean search = (EtcBean) searchlist.get(i);
							%>
							<tr class="">

								<td class="branch_subject"><%=search.getBRANCHNAME()%></td>
								<td class="branch_name"><%=search.getTEL()%></td>
								<td class="branch_addr"><%=search.getADDRESS()%></td>
							</tr>
							<%
								}
							%>
						</tbody>
					</table>




					<ul id="mobile_list">
						<li>
							<div class="subject">울산 태화점</div>
							<div class="address">울산광역시 남구 봉월로 167</div>
							<div class="phone">
								<i class="fa fa-phone-square" aria-hidden="true"></i><a
									href="tel:052-261-3232">052-261-3232</a>
							</div> <a
							href="https://ebiga.co.kr/home/bbs/board.php?bo_table=store&amp;wr_id=153&amp;sca=%EC%9A%B8%EC%82%B0"
							class="detail">MAP</a>
						</li>
						<li>
							<div class="subject">울산 언양점</div>
							<div class="address">울산 울주군 삼남면 반구대로 611</div>
							<div class="phone">
								<i class="fa fa-phone-square" aria-hidden="true"></i><a
									href="tel:052-262-8579">052-262-8579</a>
							</div> <a
							href="https://ebiga.co.kr/home/bbs/board.php?bo_table=store&amp;wr_id=122&amp;sca=%EC%9A%B8%EC%82%B0"
							class="detail">MAP</a>
						</li>
						<li>
							<div class="subject">울산 효문범</div>
							<div class="address">울산 북구 연암동 61</div>
							<div class="phone">
								<i class="fa fa-phone-square" aria-hidden="true"></i><a
									href="tel:052-288-5264">052-288-5264</a>
							</div> <a
							href="https://ebiga.co.kr/home/bbs/board.php?bo_table=store&amp;wr_id=118&amp;sca=%EC%9A%B8%EC%82%B0"
							class="detail">MAP</a>
						</li>
						<li>
							<div class="subject">울산 범서점</div>
							<div class="address">울산 울주군 범서읍 울밀로 2832</div>
							<div class="phone">
								<i class="fa fa-phone-square" aria-hidden="true"></i><a
									href="tel:052-211-0234">052-211-0234</a>
							</div> <a
							href="https://ebiga.co.kr/home/bbs/board.php?bo_table=store&amp;wr_id=116&amp;sca=%EC%9A%B8%EC%82%B0"
							class="detail">MAP</a>
						</li>
						<li>
							<div class="subject">울산 서동점</div>
							<div class="address">울산 중구 달빛로 23. 2층</div>
							<div class="phone">
								<i class="fa fa-phone-square" aria-hidden="true"></i><a
									href="tel:052-294-4445">052-294-4445</a>
							</div> <a
							href="https://ebiga.co.kr/home/bbs/board.php?bo_table=store&amp;wr_id=111&amp;sca=%EC%9A%B8%EC%82%B0"
							class="detail">MAP</a>
						</li>
						<li>
							<div class="subject">울산 호계점</div>
							<div class="address">울산 북구 산업로 1464</div>
							<div class="phone">
								<i class="fa fa-phone-square" aria-hidden="true"></i><a
									href="tel:052-298-0807">052-298-0807</a>
							</div> <a
							href="https://ebiga.co.kr/home/bbs/board.php?bo_table=store&amp;wr_id=103&amp;sca=%EC%9A%B8%EC%82%B0"
							class="detail">MAP</a>
						</li>
						<li>
							<div class="subject">울산 방어진점</div>
							<div class="address">울산 동구 등대로 22</div>
							<div class="phone">
								<i class="fa fa-phone-square" aria-hidden="true"></i><a
									href="tel:052-232-3318">052-232-3318</a>
							</div> <a
							href="https://ebiga.co.kr/home/bbs/board.php?bo_table=store&amp;wr_id=101&amp;sca=%EC%9A%B8%EC%82%B0"
							class="detail">MAP</a>
						</li>
						<li>
							<div class="subject">울산 신정점</div>
							<div class="address">울산 남구 두왕로 218 (신정동)</div>
							<div class="phone">
								<i class="fa fa-phone-square" aria-hidden="true"></i><a
									href="tel:052-256-5229">052-256-5229</a>
							</div> <a
							href="https://ebiga.co.kr/home/bbs/board.php?bo_table=store&amp;wr_id=81&amp;sca=%EC%9A%B8%EC%82%B0"
							class="detail">MAP</a>
						</li>
						<li>
							<div class="subject">울산 혁신점</div>
							<div class="address">울산 중구 태화동 산46-15</div>
							<div class="phone">
								<i class="fa fa-phone-square" aria-hidden="true"></i><a
									href="tel:052-248-3321">052-248-3321</a>
							</div> <a
							href="https://ebiga.co.kr/home/bbs/board.php?bo_table=store&amp;wr_id=47&amp;sca=%EC%9A%B8%EC%82%B0"
							class="detail">MAP</a>
						</li>
					</ul>




					<div class="bo_fx">

						<ul class="btn_bo_user">
							<li><a href="./board.php?bo_table=store" class="btn_b01">목록</a></li>
						</ul>
					</div>
				</form>
			</div>




			<!-- 페이지 -->

			<!-- } 게시판 목록 끝 -->
		</div>
		<!-- } #sub 끝 -->


	</div>
	<!-- } 컨텐츠 끝 -->

	<div id="f_form">
		<style>
table {
	width: 100%;
	border-collapse: collapse;
	font-size: 13px;
}

.form_box .btn_submit {
	background: #b4b4b4;
	padding: 5px 10px;
	color: #fff;
	width: auto;
}

.form_box .title {
	font-size: 20px;
	color: #373737;
	letter-spacing: -1px;
}

.form_box .title b {
	color: #e50110;
	font-size: 18px;
	font-weight: 800;
}

.form_box .title b a {
	color: #e50110;
}

form .info {
	font-size: 12px;
	color: #888
}

form .row:after {
	content: "";
	display: block;
	clear: both;
}

form .row label {
	float: left;
	width: 30%;
	padding: 2px 0;
	text-align: left;
	font-size: 13px;
}

form .row p {
	float: left;
	width: 70%;
	padding: 2px 0;
}

form .row p input, form .row p textarea {
	border: 1px solid #c9c9c9;
	width: 100%;
	padding: 2px 0;
}

form .send {
	text-align: right;
}

form .agree {
	text-align: right;
	padding: 5px 0;
}

form .agree .btn {
	padding: 5px 10px;
	background: #333;
	color: #fff;
	cursor: pointer;
	margin-left: 5px;
}

form .agree .agree_content {
	display: none;
	position: fixed;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	background: rgba(0, 0, 0, 0.85);
	z-index: 99;
}

form .agree .agree_content p {
	position: absolute;
	left: 50%;
	top: 50%;
	max-width: 400px;
	max-height: 300px;
	margin-left: -180px;
	margin-top: -150px;
	overflow-y: scroll;
	background: #fff;
	padding: 20px;
	border: 1px solid #ddd;
	text-align: left;
	font-size: 13px;
	line-height: 22px;
}
</style>

		<script type="text/javascript">
			$(function() {
				$('form .agree .btn').click(function() {
					$('form .agree .agree_content').show();
					$('form .agree .agree_content').click(function() {
						$('form .agree .agree_content').hide();
					})
				})
			})
		</script>

		<div class="form_box">
			<h2 class="title">
				<span>창업문의</span> <img
					src="https://ebiga.co.kr/home/image/m_phone_icon.png" alt="전화번호">
				<b><a href="tel:1588-3964">1588-3964</a></b>
			</h2>
			<form name="contactform" method="post" action="formmail_send.php">
				<div class="left">
					<div class="row">
						<label for="first_name">이름</label>
						<p>
							<input name="first_name" type="text" class="ipt" maxlength="50"
								required>
						</p>
					</div>
					<div class="row">
						<label for="telephone">연락처</label>
						<p>
							<input name="telephone" type="text" class="ipt" maxlength="30"
								required>
						</p>
					</div>
					<div class="row">
						<label for="email">희망개설지역</label>
						<p>
							<input name="email" type="text" class="ipt" maxlength="80"
								required>
						</p>
					</div>
				</div>
				<div class="left">
					<div class="row">
						<label for="comments">기타문의내용</label>
						<p>
							<textarea name="comments" rows="4" required></textarea>
						</p>
					</div>
					<div class="row agree">
						<input type="radio" name="chk_info" value="CSS" checked="checked">개인정보
						수집 및 이용에 동의 (필수) <span class="btn">약관보기</span>
						<div class="agree_content">
							<p class="text">
								<b>[개인정보 수집 목적]</b><br> ㈜이비가푸드(이하 “회사”라 합니다.)는 다음과 같은 이유로
								필요한 최소한의 개인정보를 수집·이용합니다.<br> -창업문의, 전화상담, 대면상담, 자료 제공.
								㈜이비가푸드는 창업문의시 아래와 같은 개인정보를 수집하고 있습니다.<br> 개인정보 항목 : 창업희망지역,
								휴대전화번호, 이름, 신청 경로, 투자 예상 금액<br> 수집방법 : 홈페이지, 전화/팩스, 상담카드
								작성, 제휴사로부터 제공<br> 보유목적 : 소비자에게 창업 상담 및 가맹점 개설 관련 정보제공 등<br>
								보유근거 : 정보주체의 동의<br> 보유기간 : 정보를 제공받은 날로부터 3년<br> -단 귀하가
								별도로 개인정보의 정정, 처리정지 또는 삭제를 요구할 경우, 회사는 내부절차에 다라 귀하의 요구를 즉시 수용할
								것입니다.<br> -작성일로부터 3년 [개인정보 수집 동의 거부의 권리] 귀하께서는 본 개인정보 수집
								동의를 거부하실 권리가 있습니다. 다만 개인정보의 수집 동의를 거부하실 경우 창업상담, 사업설명회 자료 및 참가신청
								서비스의 이용이 제한됩니다.<br>
								<br> <b>[홍보 및 정보제공 용도로의 이용]</b><br> 위의 개인정보를 회사의 창업 관련
								자료 및 정보의 전달 등에 사용하는 것에 대하여 동의합니다.
							</p>
						</div>
					</div>
					<div class="row  send">
						<span class="info">※ 해당문의는 ebigafood@naver.com 으로 전송됩니다.</span> <input
							type="submit" value="보내기" class="btn_submit">
					</div>
				</div>
			</form>
		</div>
	</div>

	<!-- 회원탈퇴 스크립트 시작 { -->
	<script type="text/javascript">
		function member_leave() { // 회원 탈퇴 tto
			if (confirm('회원에서 탈퇴 하시겠습니까?'))
				location.href = 'https://ebiga.co.kr/home/bbs/member_confirm.php?url=member_leave.php';
		}
	</script>
	<!-- }회원탈퇴 스크립트 끝 -->


	<!-- 하단 시작 { -->
	<div id="footer">
		<div id="bottom">
			<ul class="sns">
				<li><a href="https://ebiga.co.kr/home"><img
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

<!-- 사용스킨 : branch -->
