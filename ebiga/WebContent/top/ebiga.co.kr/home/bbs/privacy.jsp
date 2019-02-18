<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,minimum-scale=0,maximum-scale=10,user-scalable=yes">
<meta http-equiv="imagetoolbar" content="no">
<meta http-equiv="X-UA-Compatible" content="IE=10,chrome=1">
<title>개인정보 처리방침 | 이비가짬뽕</title>
<link rel="stylesheet"
	href="https://ebiga.co.kr/home/css/default.css?ver=161020">
<link rel="stylesheet"
	href="https://ebiga.co.kr/home/skin/content/basic/style.css?ver=161020">
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
	var g5_bo_table = "";
	var g5_sca = "";
	var g5_editor = "";
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
				location.href = 'https://ebiga.co.kr/home/bbs/member_confirm.jsp?url=member_leave.jsp';
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
					src="https://ebiga.co.kr/home/image/logo.jpg" alt="이비가짬뽕"></a></a>
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

				<li><a href="search.bbs">매장안내</a>
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
					</ul></li>
			</ul>
		</div>
		<div id="nav_bg"></div>
	</div>

	<!-- } 상단 끝 -->
	<!-- 컨텐츠 시작 { -->
	<div id="container">

		<div id="sub_top" class="bg05">
			<h2 class="title">개인정보처리방침</h2>
			<span class="line"></span>
			<ul class="path">
				<li><a href="index.member"><img
						src="https://ebiga.co.kr/home/image/home_btn.png" alt="홈"></a></li>
				<li>개인정보처리방침</li>
			</ul>
		</div>
		<!-- } #sub_top 끝 -->

		<div id="sub" class="bbs">


			<article id="ctt" class="ctt_privacy">
				<header>
					<h1>개인정보 처리방침</h1>
				</header>

				<div id="ctt_con">
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">&lt;(</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">주</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">)</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">이비가푸드</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">&gt;('<a
							href="http://www.ebiga.co.kr/">http://www.ebiga.co.kr/</a>'
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">이하
						</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">'</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">이비가짬뽕</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">')</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">은
							개인정보보호법에 따라 이용자의 개인정보 보호 및 권익을 보호하고 개인정보와 관련한 이용자의 고충을 원활하게 처리할 수
							있도록 다음과 같은 처리방침을 두고 있습니다</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">'</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">이비가짬뽕</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">'</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">은
							회사의 개인정보처리방침을 개정하는 경우 웹사이트 공지사항</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">(</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">또는
							개별공지</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">)
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">을
							통하여 공지할 것입니다</span>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<!--[if !supportEmptyParas]-->
						&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span
							style="font-family: 바탕; letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">○
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">본
							방침은 </span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">2018</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">년
						</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">9</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">월
						</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">17</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">일부터
							시행됩니다</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<!--[if !supportEmptyParas]-->
						&nbsp;
						<!--[endif]-->
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">1.
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">개인정보의
							처리 목적</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">'</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">이비가짬뽕</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">'</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">은
							개인정보를 다음과 같은 목적을 위해 처리합니다</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">처리한
							개인정보는 다음의 목적이외의 용도로는 사용되지 않으며 이용 목적이 변경될 시에는 사전 동의를 구할 예정입니다</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">가</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">홈페이지
							회원가입 및 관리 회원 가입의사 확인</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">회원제
							서비스 제공에 따른 본인 식별</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">·</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">인증</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">회원자격
							유지</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">·</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">관리</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">제한적
							본인확인제 시행에 따른 본인확인</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">서비스
							부정이용 방지</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">만</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">14</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">세
							미만 아동 개인정보 수집 시 법정대리인 동의 여부 확인</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">각종
							고지</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">·</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">통지</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">고충처리</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">분쟁
							조정을 위한 기록 보존 등을 목적으로 개인정보를 처리합니다</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.</span>&nbsp;&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">나</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">재화
							또는 서비스 제공서비스 제공</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">청구서
							발송</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">콘텐츠
							제공</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">맞춤
							서비스 제공</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">본인인증</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">연령인증
							등을 목적으로 개인정보를 처리합니다</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.</span>&nbsp;&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">다</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">마케팅
							및 광고에의 활용 신규 서비스</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">(</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">제품</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">)
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">개발
							및 맞춤 서비스 제공</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">이벤트
							및 광고성 정보 제공 및 참여기회 제공 </span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">인구통계학적
							특성에 따른 서비스 제공 및 광고 게재 </span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">서비스의
							유효성 확인</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">접속빈도
							파악 또는 회원의 서비스 이용에 대한 통계 등을 목적으로 개인정보를 처리합니다</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.</span>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<!--[if !supportEmptyParas]-->
						&nbsp;&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">2.
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">수집하는
							개인정보 파일 현황</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">1.
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">개인정보
							파일명 </span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">:
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">회원가입</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">개인정보
							항목 </span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">:
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">자택주소</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">비밀번호</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">자택전화번호</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">로그인</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">ID,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">휴대전화번호</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">이름</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">이메일</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">닉네임</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">회사명</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">홈페이지</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">접속
						</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">IP
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">정보</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">쿠키</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">서비스
							이용 기록</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">접속
							로그</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">수집방법
						</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">:
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">홈페이지</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">(</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">회원가입</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">)</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">보유목적
						</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">:
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">소비자에게
							컨텐츠 제공</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">이벤트
							참여</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">채용
							지원 혜택 제공 등</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">보유근거
						</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">:
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">홈페이지
							가입을 통한 정보주체의 동의</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">보유기간
						</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">:
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">탈퇴
							시까지</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">개인정보
							파일명 </span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">:
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">소비자
							참여</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">개인정보
							항목 </span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">:
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">휴대전화번호</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">이름</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">이메일</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">연령대</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">자택주소</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">수집방법
						</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">:
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">홈페이지</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">페이스북</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">(</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">이비가짬뽕
							페이지</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">)</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">보유목적
						</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">:
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">소비자에게
							컨텐츠 제공</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">이벤트
							참여 혜택 제공 등</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">보유근거
						</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">:
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">홈페이지
							참여를 통한 정보주체의 동의</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">보유기간
						</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">:
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">경품
							제공 및 행사 설문의 통계</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">분석
							종료 후 </span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">7</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">일</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<!--[if !supportEmptyParas]-->
						&nbsp;
						<!--[endif]-->
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">3.
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">개인정보
							파일명 </span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">:
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">창업문의</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">개인정보
							항목 </span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">:
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">창업희망지역</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">휴대전화번호</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">이름</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">신청
							경로</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">투자
							예상 금액</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">수집방법
						</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">:
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">홈페이지</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">전화</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">/</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">팩스</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">상담카드
							작성</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">제휴사로부터
							제공</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">보유목적
						</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">:
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">소비자에게
							창업 상담 및 가맹점 개설 관련 정보제공 등</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">보유근거
						</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">:
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">정보주체의
							동의</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">보유기간
						</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">:
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">정보를
							제공받은 날로부터 </span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">3</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">년</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<!--[if !supportEmptyParas]-->
						&nbsp;
						<!--[endif]-->
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">4.
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">개인정보
							파일명 </span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">:
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">이벤트</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">개인정보
							항목 </span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">:
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">자택주소</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">로그인</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">ID,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">휴대전화번호</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">이름</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">이메일</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">수집방법
						</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">:
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">홈페이지</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">페이스북</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">(</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">이비가짬뽕
							페이지</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">),
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">전화</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">/</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">팩스</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">경품행사</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">보유목적
						</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">:
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">소비자에게
							이벤트 참여</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">경품
							수령 혜택 제공 등</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">보유근거
						</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">:
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">정보주체의
							동의</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">보유기간
						</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">:
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">경품
							제공 및 이벤트 통계</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">분석
							종료 후 </span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">7</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">일까지</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<!--[if !supportEmptyParas]-->
						&nbsp;
						<!--[endif]-->
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">3.
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">개인정보의
							처리 및 보유 기간</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">가</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.
							‘</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">이비가짬뽕</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">’</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">은
							법령에 따른 개인정보 보유</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">·</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">이용기간
							또는 정보주체로부터 개인정보를 수집 시에 동의 받은 개인정보 보유</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">이용기간
							내에서 개인정보를 처리</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">보유합니다</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">나</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">각각의
							개인정보 처리 및 보유 기간은 다음과 같습니다</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.
						</span>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">&lt;</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">상품
							또는 서비스 제공 및 홈페이지 회원가입 및 관리 및 마케팅 및 광고에의 활용</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">&gt;</span>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">&lt;</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">상품
							또는 서비스 제공</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">&gt;</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">과
							관련한 개인정보는 수집</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">이용에
							관한 동의일로부터</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">&lt;3</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">년</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">&gt;</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">까지
							위 이용목적을 위하여 보유</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">이용됩니다</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.</span>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<!--[if !supportEmptyParas]-->
						&nbsp;
						<!--[endif]-->
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">보유목적
						</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">:
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">소비자에게
							혜택 제공</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">보유근거
						</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">:
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">정보주체의
							동의</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">관련법령
						</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">:</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">1)
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">소비자의
							불만 또는 분쟁처리에 관한 기록 </span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">:
							3</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">년</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">2)
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">신용정보의
							수집</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">/</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">처리
							및 이용 등에 관한 기록 </span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">:
							3</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">년</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">3)
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">대금결제
							및 재화 등의 공급에 관한 기록 </span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">:
							5</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">년</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">4)
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">계약
							또는 청약철회 등에 관한 기록 </span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">:
							5</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">년</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">5)
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">표시</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">/</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">광고에
							관한 기록 </span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">:
							6</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">개월</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">회사는
							귀중한 회원의 개인정보를 안전하게 처리하며</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">유출의
							방지를 위하여 다음과 같은 방법을 통하여 개인정보를 파기합니다</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.
						</span>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<!--[if !supportEmptyParas]-->
						&nbsp;
						<!--[endif]-->
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">o
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">종이에
							출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통하여 파기합니다</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">o
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">전자적
							파일 형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<!--[if !supportEmptyParas]-->
						&nbsp;
						<!--[endif]-->
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">4.
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">개인정보의
							제</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">3</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">자
							제공에 관한 사항</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">회사는
							개인정보를 제</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">3</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">자에게
							제공하지 않습니다</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.</span>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">(</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">부득이하게
							제공 시에는 사전 동의를 구한 후 제공</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">)</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<!--[if !supportEmptyParas]-->
						&nbsp;
						<!--[endif]-->
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">5.
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">정보주체의
							권리</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">의무
							및 그 행사방법 </span>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">이용자는
							개인정보주체로서 다음과 같은 권리를 행사할 수 있습니다</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">가</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">개인정보
							열람요구</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">나</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">오류
							등이 있을 경우 정정 요구</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">다</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">삭제요구</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">라</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">처리정지
							요구</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">&nbsp;</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">이용자는
							언제든지 등록되어 있는 자신의 개인정보를 조회하거나 수정할 수 있으며 가입해지를 요청할 수도 있습니다</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">이용자들의
							개인정보 조회</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">수정을
							위해서는 </span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">‘</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">개인정보변경</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">’(</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">또는
						</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">‘</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">회원정보수정</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">’
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">등</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">),
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">가입해지</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">(</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">동의철회</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">)</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">를
							위해서는 </span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">“</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">회원탈퇴</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">”</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">를
							클릭하여 본인확인 절차를 거치신 후 직접 열람</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">정정
							또는 탈퇴가 가능합니다</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">혹은
							개인정보관리책임자에게 서면</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">전화
							또는 이메일로 연락하시면 지체없이 조치하겠습니다</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.</span>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<!--[if !supportEmptyParas]-->
						&nbsp;
						<!--[endif]-->
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">귀하가
							개인정보의 오류에 대한 정정을 요청하신 경우에는 정정을 완료하기 전까지 당해 개인정보를 이용 또는 제공하지 않습니다</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">또한
							잘못된 개인정보를 제</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">3</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">자에게
							이미 제공한 경우에는 정정 처리결과를 제</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">3</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">자에게
							지체 없이 통지하여 정정이 이루어지도록 하겠습니다</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.</span>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<!--[if !supportEmptyParas]-->
						&nbsp;
						<!--[endif]-->
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">‘</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">이비가짬뽕</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">’</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">은
							이용자의 요청에 의해 해지 또는 삭제된 개인정보를 </span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">“</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">회사가
							수집하는 개인정보의 보유 및 이용기간</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">”</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">에
							명시된 바에 따라 처리하고 그 외의 용도로 열람 또는 이용할 수 없도록 처리하고 있습니다</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.</span>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span
							style="font-family: 바탕; letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">※
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">다만</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">법에
							의해 보관이 의무화된 개인정보는 요청이 있더라도 보관기간 내에 수정</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">·</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">삭제할
							수 없습니다</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">&nbsp;</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">6.
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">이용자
							및 법정대리인의 권리와 행사 방법</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">이용자는
							언제든지 </span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">‘</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">회원탈퇴</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">’
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">등을
							통해 개인정보의 수집 및 이용 동의를 철회할 수 있습니다</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.</span>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">만
						</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">14</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">세
							미만 아동의 경우</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">법정대리인이
							아동의 개인정보를 조회하거나 수정할 권리</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">수집
							및 이용 동의를 철회할 권리를 가집니다</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.</span>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">이용자가
							개인정보의 오류에 대한 정정을 요청한 경우</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">정정을
							완료하기 전까지 해당 개인정보를 이용 또는 제공하지 않습니다</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">또한
							잘못된 개인정보를 제</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">3</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">자에게
							이미 제공한 경우에는 정정 처리결과를 제</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">3</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">자에게
							지체 없이 통지하여 정정이 이루어지도록 하겠습니다</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.</span>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<!--[if !supportEmptyParas]-->
						&nbsp;
						<!--[endif]-->
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">7.
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">쿠키
							설치</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">운영</span>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">쿠키
							설치</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">운영하고
							있고 이용자는 이를 거부할 수 있습니다</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">‘</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">이비가짬뽕</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">’</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">은
							귀하의 정보를 수시로 저장하고 찾아내는 </span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">‘</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">쿠키</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">(cookie)’
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">등을
							운용합니다</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">쿠키란
							웹사이트를 운영하는데 이용되는 서버가 귀하의 브라우저에 보내는 아주 작은 텍스트 파일로서 귀하의 컴퓨터 하드디스크에
							저장됩니다</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.
							‘</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">이비가짬뽕</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">’</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">은
							다음과 같은 목적을 위해 쿠키를 사용합니다</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.</span>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<!--[if !supportEmptyParas]-->
						&nbsp;
						<!--[endif]-->
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<!--[if !supportEmptyParas]-->
						&nbsp;<span
							style="font-family: 바탕; letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">▶</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">쿠키
							등 사용 목적</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">-</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">회원과
							비회원의 접속 빈도나 방문 시간 등을 분석</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">이용자의
							취향과 관심분야를 파악 및 자취 추적</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">각종
							이벤트 참여 정도 및 방문 회수 파악 등을 통한 타겟 마케팅 및 개인 맞춤 서비스 제공</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">-</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">귀하는
							쿠키 설치에 대한 선택권을 가지고 있습니다</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">따라서</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">귀하는
							웹브라우저에서 옵션을 설정함으로써 모든 쿠키를 허용하거나</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">쿠키가
							저장될 때마다 확인을 거치거나</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">아니면
							모든 쿠키의 저장을 거부할 수도 있습니다</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.</span>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<!--[if !supportEmptyParas]-->
						&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span
							style="font-family: 바탕; letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">▶</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">쿠키
							설정 거부 방법</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">-</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">예</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">:
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">쿠키
							설정을 거부하는 방법으로는 회원님이 사용하시는 웹 브라우저의 옵션을 선택함으로써 모든 쿠키를 허용하거나 쿠키를 저장할
							때마다 확인을 거치거나</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">모든
							쿠키의 저장을 거부할 수 있습니다</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">-</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">설정방법
							예</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">(</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">인터넷
							익스플로어의 경우</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">)
							: </span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">웹
							브라우저 상단의 도구 </span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">&gt;
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">인터넷
							옵션 </span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">&gt;
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">개인정보</span>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<!--[if !supportEmptyParas]-->
						&nbsp;<span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">-</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">단</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">귀하께서
							쿠키 설치를 거부하였을 경우 서비스 제공에 어려움이 있을 수 있습니다</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<!--[if !supportEmptyParas]-->
						&nbsp;
						<!--[endif]-->
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">8.
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">개인정보의
							파기</span>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">
						</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">'</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">이비가짬뽕</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">'</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">은
							원칙적으로 개인정보 처리목적이 달성된 경우에는 지체 없이 해당 개인정보를 파기합니다</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">파기의
							절차</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">기한
							및 방법은 다음과 같습니다</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">-</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">파기절차</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">이용자가
							입력한 정보는 목적 달성 후 별도의 </span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">DB</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">에
							옮겨져</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">(</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">종이의
							경우 별도의 서류</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">)
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">내부
							방침 및 기타 관련 법령에 따라 일정기간 저장된 후 혹은 즉시 파기됩니다</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">이
							때</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
							DB</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">로
							옮겨진 개인정보는 법률에 의한 경우가 아니고서는 다른 목적으로 이용되지 않습니다</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.</span>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<!--[if !supportEmptyParas]-->
						&nbsp;<span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">-</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">파기기한</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">이용자의
							개인정보는 개인정보의 보유기간이 경과된 경우에는 보유기간의 종료일로부터 </span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">5</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">일
							이내에</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">개인정보의
							처리 목적 달성</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">해당
							서비스의 폐지</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">사업의
							종료 등 그 개인정보가 불필요하게 되었을 때에는 개인정보의 처리가 불필요한 것으로 인정되는 날로부터 </span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">7</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">일
							이내에 그 개인정보를 파기합니다</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">-</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">파기방법</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">전자적
							파일 형태의 정보는 기록을 재생할 수 없는 기술적 방법을 사용합니다</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">종이에
							출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통하여 파기합니다</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.</span>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<!--[if !supportEmptyParas]-->
						&nbsp; &nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">9.
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">개인정보의
							안전성 확보 조치 </span>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">
						</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">'</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">이비가짬뽕</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">'</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">은
							개인정보보호법 제</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">29</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">조에
							따라 다음과 같이 안전성 확보에 필요한 기술적</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">/</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">관리적
							및 물리적 조치를 하고 있습니다</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">가</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">개인정보
							취급 직원의 최소화 및 교육 개인정보를 취급하는 직원을 지정하고 담당자에 한정시켜 최소화하여 개인정보를 관리하는
							대책을 시행하고 있습니다</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">나</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">내부관리계획의
							수립 및 시행 개인정보의 안전한 처리를 위하여 내부관리계획을 수립하고 시행하고 있습니다</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">다</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">개인정보의
							암호화 이용자의 개인정보는 비밀번호는 암호화 되어 저장 및 관리되고 있어</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">본인만이
							알 수 있으며 중요한 데이터는 파일 및 전송 데이터를 암호화 하거나 파일 잠금 기능을 사용하는 등의 별도 보안기능을
							사용하고 있습니다</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">라</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">해킹
							등에 대비한 기술적 대책 </span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">'</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">이비가짬뽕</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">'</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">은
							해킹이나 컴퓨터 바이러스 등에 의한 개인정보 유출 및 훼손을 막기 위하여 보안프로그램을 설치하고 주기적인 갱신</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">·</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">점검을
							하며 외부로부터 접근이 통제된 구역에 시스템을 설치하고 기술적</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">/</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">물리적으로
							감시 및 차단하고 있습니다</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">마</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">개인정보에
							대한 접근 제한 개인정보를 처리하는 데이터베이스시스템에 대한 접근권한의 부여</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">변경</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">말소를
							통하여 개인정보에 대한 접근통제를 위하여 필요한 조치를 하고 있으며 침입차단시스템을 이용하여 외부로부터의 무단 접근을
							통제하고 있습니다</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">바</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">접속기록의
							보관 및 위변조 방지 개인정보처리시스템에 접속한 기록을 최소 </span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">6</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">개월
							이상 보관</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">관리하고
							있으며</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">접속
							기록이 위변조 및 도난</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">분실되지
							않도록 보안기능 사용하고 있습니다</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">사</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">비인가자에
							대한 출입 통제 개인정보를 보관하고 있는 물리적 보관 장소를 별도로 두고 이에 대해 출입통제 절차를 수립</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">운영하고
							있습니다</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<!--[if !supportEmptyParas]-->
						&nbsp;
						<!--[endif]-->
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">10.
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">개인정보
							보호책임자 작성</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">가</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.
							‘</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">이비가짬뽕</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">’</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">은
							개인정보 처리에 관한 업무를 총괄해서 책임지고</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">개인정보
							처리와 관련한 정보주체의 불만처리 및 피해구제 등을 위하여 아래와 같이 개인정보 보호책임자를 지정하고 있습니다</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.</span>&nbsp;&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span
							style="font-family: 바탕; letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">▶
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">개인정보
							보호책임자</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span
							style="font-family: 바탕; letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">•
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">성명</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">/</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">직책
						</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">:
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">권순홍
						</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">/
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">기획실
							사원</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span
							style="font-family: 바탕; letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">•
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">연락처
						</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">:
							042-716-3329, pppo0415@naver.com</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span
							style="font-family: 바탕; letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">※
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">콜센터를
							통하여 개인정보 보호 담당부서로 연결하시면 됩니다</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">나</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">정보주체는
						</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">‘</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">이비가짬뽕</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">’</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">의
							서비스</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">(</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">또는
							사업</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">)</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">를
							이용하면서 발생한 모든 개인정보 보호 관련 문의</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">불만처리</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">피해구제
							등에 관한 사항을 개인정보 보호책임자 및 담당부서로 문의하실 수 있습니다</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.
							‘</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">이비가짬뽕</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">’</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">은
							정보주체의 문의에 대해 지체 없이 답변 및 처리해드릴 것입니다</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.</span>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<!--[if !supportEmptyParas]-->
						&nbsp;&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">11.
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">개인정보
							열람청구 </span>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">정보주체는
							개인정보보호법 제</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">35</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">조에
							따른 개인정보의 열람 청구를 아래의 부서에 할 수 있습니다</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.
							‘</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">이비가짬뽕</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">’</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">은
							정보주체의 개인정보 열람청구가 신속하게 처리되도록 노력하겠습니다</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.</span>&nbsp;&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span
							style="font-family: 바탕; letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">▶
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">개인정보
							열람청구 접수</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">·</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">처리
							부서</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span
							style="font-family: 바탕; letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">•
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">부서명
						</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">:
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">기획실</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span
							style="font-family: 바탕; letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">•
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">담당자
						</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">:
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">권순홍</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span
							style="font-family: 바탕; letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">•
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">연락처
						</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">:
							042-716-3329, pppo0415@naver.com</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">&lt;</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">정보주체께서는
							제</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">1</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">항의
							열람청구 접수</span><span
							style="font-family: 바탕; letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">․</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">처리부서
							이외에</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">행정안전부의
						</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">‘</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">개인정보보호
							종합지원 포털</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">’
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">웹사이트</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">(<a
							href="http://www.privacy.go.kr">www.privacy.go.kr</a>)
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">를
							통하여서도 개인정보 열람청구를 하실 수 있습니다</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.&gt;</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span
							style="font-family: 바탕; letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">▶
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">행정안전부
							개인정보보호 종합지원 포털 </span><span
							style="font-family: 바탕; letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">→
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">개인정보
							민원 </span><span
							style="font-family: 바탕; letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">→
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">개인정보
							열람 등 요구 </span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">(</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">본인확인을
							위하여 아이핀</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">(I-PIN)</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">이
							있어야 함</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">)</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<!--[if !supportEmptyParas]-->
						&nbsp;
						<!--[endif]-->
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">12.
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">개인정보에
							관한 민원서비스</span>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">아래의
							기관은 </span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">‘</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">이비가짬뽕</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">’</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">과는
							별개의 기관으로서</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
							‘</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">이비가짬뽕</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">’</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">의
							자체적인 개인정보 불만처리</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">피해구제
							결과에 만족하지 못하시거나 보다 자세한 도움이 필요하시면 문의하여 주시기 바랍니다</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span
							style="font-family: 바탕; letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">▶
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">개인정보
							침해신고센터 </span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">(</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">한국인터넷진흥원
							운영</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">)</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">소관업무
						</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">:
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">개인정보
							침해사실 신고</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">상담
							신청</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">홈페이지
						</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">:
							privacy.kisa.or.kr</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">전화
						</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">:
							(</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">국번없이</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">)
							118</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">주소
						</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">:
							(138-950) </span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">서울시
							송파구 중대로 한국인터넷진흥원 개인정보침해신고센터</span>&nbsp;&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span
							style="font-family: 바탕; letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">▶
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">대검찰청
							사이버범죄수사단 </span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">:
							02-3480-3573 (<a href="http://www.spo.go.kr">www.spo.go.kr</a>)
						</span>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span
							style="font-family: 바탕; letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">▶
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">경찰청
							사이버범죄수사단 </span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">:
							1566-0112 (<a href="http://www.netan.go.kr">www.netan.go.kr</a>)
						</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<!--[if !supportEmptyParas]-->
						&nbsp;
						<!--[endif]-->
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">13.
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">개인정보
							처리방침 변경</span>&nbsp;
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">가</span><span
							lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">이
							개인정보처리방침은 시행일로부터 적용되며</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">법령
							및 방침에 따른 변경내용의 추가</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">,
						</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">삭제
							및 정정이 있는 경우에는 변경사항의 시행 </span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">7</span><span
							style="font-family: 바탕; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">일
							전부터 공지사항을 통하여 고지할 것입니다</span><span lang="EN-US"
							style="letter-spacing: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">.</span>
					</p>
					<p class="0"
						style="background: #ffffff; mso-pagination: none; text-autospace: none; mso-padding-alt: 0pt 0pt 0pt 0pt;">
						<o:p></o:p>
					</p>
				</div>

			</article>
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
			<form name="contactform" method="post" action="formmail_send.jsp">
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
								서비스의 이용이 제한됩니다.<br> <br> <b>[홍보 및 정보제공 용도로의 이용]</b><br>
								위의 개인정보를 회사의 창업 관련 자료 및 정보의 전달 등에 사용하는 것에 대하여 동의합니다.
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
				location.href = 'https://ebiga.co.kr/home/bbs/member_confirm.jsp?url=member_leave.jsp';
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
					href="https://ebiga.co.kr/home/bbs/content.jsp?co_id=privacy">개인정보처리방침</a></li>
				<li><a href="#">이용약관</a></li>
				<li><a href="#">이메일무단수집거부</a></li>
				<li><a
					href="https://ebiga.co.kr/home/bbs/board.jsp?bo_table=store">오시는길</a></li>
				<li><a
					href="https://ebiga.co.kr/home/bbs/board.jsp?bo_table=faq">창업문의</a></li>
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
