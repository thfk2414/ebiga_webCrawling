<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- <script>alert("ebiga.co.kr");</script> -->
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,minimum-scale=0,maximum-scale=10,user-scalable=yes">
<meta http-equiv="imagetoolbar" content="no">
<meta http-equiv="X-UA-Compatible" content="IE=10,chrome=1">
<title>이비가짬뽕</title>
<link rel="stylesheet"
	href="https://ebiga.co.kr/home/css/default.css?ver=161020">
<link rel="stylesheet"
	href="https://ebiga.co.kr/home/skin/latest/webzine/style3.css?ver=161020">
<link rel="stylesheet" href="https://ebiga.co.kr/home/css/style.css">
<link rel="stylesheet"
	href="http://fontawesome.io/assets/font-awesome/css/font-awesome.css">
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/css/font-awesome.min.css"
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
				location.href = 'bbs/member_confirm_leave.jsp';
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


	<!-- 팝업레이어 시작 { -->
	<div id="hd_pop">
		<h2>팝업레이어 알림</h2>

	</div>

	<script>
		$(function() {
			$(".hd_pops_reject").click(function() {
				var id = $(this).attr('class').split(' ');
				var ck_name = id[1];
				var exp_time = parseInt(id[2]);
				$("#" + id[1]).css("display", "none");
				set_cookie(ck_name, 1, exp_time, g5_cookie_domain);
			});
			$('.hd_pops_close').click(function() {
				var idb = $(this).attr('class').split(' ');
				$('#' + idb[1]).css('display', 'none');
			});
			$("#hd").css("z-index", 1000);
		});
	</script>
	<!-- } 팝업레이어 끝 -->
	<!-- index 시작 { -->
	<div id="container">

		<div id="m_slider">
			<ul class="content  pc">
				<li><img src="https://ebiga.co.kr/home/image/m_slider01.jpg"
					alt="슬라이드1"></li>
				<li><img src="https://ebiga.co.kr/home/image/m_slider02.jpg"
					alt="슬라이드2"></li>
				<li><img src="https://ebiga.co.kr/home/image/m_slider04.jpg"
					alt="슬라이드4"></li>
				<li><img src="https://ebiga.co.kr/home/image/m_slider03.jpg"
					alt="슬라이드3"></li>
				<li><img src="https://ebiga.co.kr/home/image/m_slider05.jpg"
					alt="슬라이드5"></li>
				<li><img src="https://ebiga.co.kr/home/image/m_slider01.jpg"
					alt="슬라이드1"></li>
			</ul>

			<ul class="content  mobile">
				<li><img
					src="https://ebiga.co.kr/home/image/mobile_slider01.jpg"
					alt="슬라이드1"></li>
				<li><img
					src="https://ebiga.co.kr/home/image/mobile_slider02.jpg"
					alt="슬라이드2"></li>
				<li><img
					src="https://ebiga.co.kr/home/image/mobile_slider04.jpg"
					alt="슬라이드4"></li>
				<li><img
					src="https://ebiga.co.kr/home/image/mobile_slider03.jpg"
					alt="슬라이드3"></li>
				<li><img
					src="https://ebiga.co.kr/home/image/mobile_slider05.jpg"
					alt="슬라이드5"></li>
				<li><img
					src="https://ebiga.co.kr/home/image/mobile_slider01.jpg"
					alt="슬라이드1"></li>
			</ul>

			<ul class="breadcrumb">
				<li class="btn01  btn06 on" data-n="1">●
				<li>
				<li cl ass="btn02" data-n="2">●
				<li>
				<li class="btn03" data-n="3">●
				<li>
				<li class="btn04" data-n="4">●
				<li>
				<li class="btn05" data-n="5">●
				<li>
			</ul>
		</div>
	</div>
	<!-- } #m_slider 끝 -->

	<div id="m_banner">
		<div class="video">
			<iframe width="100%" height="300"
				src="https://www.youtube.com/embed/Oiv1hp82qEo?amp;autoplay=0"
				frameborder="0" allowfullscreen></iframe>
		</div>

		<div class="m_form">
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
									㈜이비가푸드는 창업문의시 아래와 같은 개인정보를 수집하고 있습니다.<br> 개인정보 항목 :
									창업희망지역, 휴대전화번호, 이름, 신청 경로, 투자 예상 금액<br> 수집방법 : 홈페이지,
									전화/팩스, 상담카드 작성, 제휴사로부터 제공<br> 보유목적 : 소비자에게 창업 상담 및 가맹점 개설
									관련 정보제공 등<br> 보유근거 : 정보주체의 동의<br> 보유기간 : 정보를 제공받은
									날로부터 3년<br> -단 귀하가 별도로 개인정보의 정정, 처리정지 또는 삭제를 요구할 경우, 회사는
									내부절차에 다라 귀하의 요구를 즉시 수용할 것입니다.<br> -작성일로부터 3년 [개인정보 수집 동의
									거부의 권리] 귀하께서는 본 개인정보 수집 동의를 거부하실 권리가 있습니다. 다만 개인정보의 수집 동의를 거부하실
									경우 창업상담, 사업설명회 자료 및 참가신청 서비스의 이용이 제한됩니다.<br> <br> <b>[홍보
										및 정보제공 용도로의 이용]</b><br> 위의 개인정보를 회사의 창업 관련 자료 및 정보의 전달 등에
									사용하는 것에 대하여 동의합니다.
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
	</div>
	<!-- } #m_banner 끝 -->

	<div id="m_latest_bg">
		<div id="m_latest">
			<div class="notice">
				<h2 class="title">
					오픈점 소식 <a
						href="https://ebiga.co.kr/home/bbs/board.php?bo_table=notice"
						class="more_btn">+</a>
				</h2>
				<!-- 오픈점 소식 최신글 시작 { -->
				<div class="section_list">

					<ul>
						<li>
							<div class="img">
								<a
									href="https://ebiga.co.kr/home/bbs/board.php?bo_table=notice&amp;wr_id=140"><span
									class="roll sports"></span><img
									src="https://ebiga.co.kr/home/data/file/notice/thumb-1893614546_gtYhqSRN_e2de34e7a2d1b21ad353634020e50f769a7c11c4_170x100.jpg"
									alt="하남본점" width="170" height="100"></a>
							</div>
							<div class="inner">
								<p class="tit">
									<a
										href="https://ebiga.co.kr/home/bbs/board.php?bo_table=notice&amp;wr_id=140">하남본점</a>
								</p>
								<p class="desc">
									<a
										href="https://ebiga.co.kr/home/bbs/board.php?bo_table=notice&amp;wr_id=140">▶
										하남본점 11월 5일 오픈 !! ◀ 경기도 하남시 미사강변한강로 230. 2층 이비가짬뽕 하남본점이
										오픈하였습니다. 근처에 미사리까페촌과 미사리 경정공원 등 가족 및 연인들의 나들이 하기 좋은 곳입니다. 위치는
										하남 …</a>
								</p>

							</div>
						</li>

					</ul>
				</div>
				<!-- } 오픈점 소식 최신글 끝 -->
			</div>
			<div class="media">
				<h2 class="title">
					언론보도 <a
						href="https://ebiga.co.kr/home/bbs/board.php?bo_table=media"
						class="more_btn">+</a>
				</h2>
				<!-- 언론 최신글 시작 { -->
				<div class="section_list">

					<ul>
						<li>
							<div class="img">
								<a
									href="https://ebiga.co.kr/home/bbs/board.php?bo_table=media&amp;wr_id=73"><span
									class="roll sports"></span><img
									src="https://ebiga.co.kr/home/data/file/media/thumb-1893614546_MLVqSpmv_0b5dbacfc62c5e243345e0a362445d0dd3caf6c2_170x100.jpg"
									alt="짬뽕맛집 이비가짬뽕 '겨울나기 김장대봉사' 참여" width="170" height="100"></a>
							</div>
							<div class="inner">
								<p class="tit">
									<a
										href="https://ebiga.co.kr/home/bbs/board.php?bo_table=media&amp;wr_id=73">짬뽕맛집
										이비가짬뽕 '겨울나기 김장대봉사' 참여</a>
								</p>
								<p class="desc">
									<a
										href="https://ebiga.co.kr/home/bbs/board.php?bo_table=media&amp;wr_id=73">대전시에서
										주최한 '겨울나기 김장대봉사'에 짬뽕 전문 브랜드인 이비가짬뽕을 운영하고 있는 ㈜이비가푸드 임직원들과 이비가짬뽕
										가맹점 대표들이 함께 참여했다.㈜이비가푸드는 상생경영의 일환으로 지역사회와 함께하는 다양한 봉사활동에 참여하고…</a>
								</p>

							</div>
						</li>


					</ul>
				</div>
				<!-- } 언론 최신글 끝 -->
			</div>
		</div>
		<!-- } #m_latest 끝 -->
	</div>
	<!-- } #m_latest_bg 끝 -->

	<div id="m_award">
		﻿
		<link rel="stylesheet"
			href="https://ebiga.co.kr/home/skin/latest/gallery/style.css">

		<section class="n_gallery_wrap">

			<ul class="n_thumb">
				<li>
					<!-- <a href="https://ebiga.co.kr/home/bbs/board.php?bo_table=award&amp;wr_id=12"> -->
					<img
					src="https://ebiga.co.kr/home/data/file/award/thumb-1025970348_2gDfoew9_f29a1d534a453b7998ede749919e9281b0eea6eb_115x115.png"
					width="115" height="115" alt="프랜차이즈수준평가" title="" /> <!-- </a> -->
					<!-- <p><a href="https://ebiga.co.kr/home/bbs/board.php?bo_table=award&amp;wr_id=12">프랜차이즈수준평가</a></p> -->
				</li>
				<li>
					<!-- <a href="https://ebiga.co.kr/home/bbs/board.php?bo_table=award&amp;wr_id=11"> -->
					<img
					src="https://ebiga.co.kr/home/data/file/award/thumb-1025970348_zenqMsWj_51025f531b86dc589d57e14a080fb753681d7e23_115x115.png"
					width="115" height="115" alt="우수프랜차이즈" title="" /> <!-- </a> --> <!-- <p><a href="https://ebiga.co.kr/home/bbs/board.php?bo_table=award&amp;wr_id=11">우수프랜차이즈</a></p> -->
				</li>
				<li>
					<!-- <a href="https://ebiga.co.kr/home/bbs/board.php?bo_table=award&amp;wr_id=10"> -->
					<img
					src="https://ebiga.co.kr/home/data/file/award/thumb-1025970348_Ux8BI9Oo_aec3d2e711a4c1dd88f7553a00bf6fafc0ffc97c_115x115.png"
					width="115" height="115" alt="한국프랜차이즈대상2017" title="" /> <!-- </a> -->
					<!-- <p><a href="https://ebiga.co.kr/home/bbs/board.php?bo_table=award&amp;wr_id=10">한국프랜차이즈대상2017</a></p> -->
				</li>
			</ul>
		</section>

	</div>

	</div>
	<!-- } index 끝 -->

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