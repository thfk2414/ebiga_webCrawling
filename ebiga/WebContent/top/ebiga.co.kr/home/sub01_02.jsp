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
<title>이비가짬뽕</title>
<link rel="stylesheet"
	href="https://ebiga.co.kr/home/css/default.css?ver=161020">
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
	var g5_is_member = "1";
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

					<li><a
						href="https://ebiga.co.kr/home/bbs/board.jsp?bo_table=video">이비가Family</a></li>

				</ul>
			</div>

			<h1 id="logo">
				<a href="index.member"><img src="image/logo.jpg" alt="이비가짬뽕"></a>
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
						<li><a href="ebigaIn.bbs">이비가人</a></li>
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

	<!-- 컨텐츠 시작 { -->
	<div id="container">

		<div id="sub_top" class="bg01">
			<h2 class="title">이비가소개</h2>
			<span class="line"></span>
			<ul class="path">
				<li><a href="index.member"><img
						src="https://ebiga.co.kr/home/image/home_btn.png" alt="홈"></a></li>
				<li>이비가소개</li>
				<li>연혁</li>
			</ul>
		</div>
		<!-- } #sub_top 끝 -->

		<div id="snb">
			<ul>
				<li><a href="sub01.sub">인사말</a></li>
				<li><a href="sub01_02.sub">연혁</a></li>
				<li><a href="sub01_03.sub">기업소개</a></li>
				<li><a href="ebigaIn.bbs">이비가人</a></li>
			</ul>
		</div>
		<!-- } #snb 끝 -->


		<div id="sub" class="history">

			<div class="year">
				<ul>
					<li class="btn08"><span class="on"></span>2017년</li>
					<li class="btn01"><span></span>2016년</li>
					<li class="btn02"><span></span>2015년</li>
					<li class="btn03"><span></span>2014년</li>
					<li class="btn04"><span></span>2013년</li>
					<li class="btn05"><span></span>2012년</li>
					<li class="btn06"><span></span>2011년</li>
					<li class="btn07"><span></span>2010년</li>
				</ul>
			</div>
			<!-- year End-->

			<div class="right_content">
				<div class="box  box08">
					<h2>2017년</h2>
					<p>
						<b>12</b> 프랜차이즈 수준평가 1등급 획득·중소기업청 우수프랜차이즈 지정 (2년 연속)<br> <b>12</b>
						2017 제17회 한국프랜차이즈 대상 수상 (2년 연속 수상)<br> <b>11</b> HACCP 인증<br>
						<b>09</b> 기술혁신형 중소기업(이노비즈) 인증<br> <b>05</b> 대전광역시 자원봉사 우수기업
						동판수여식<br> <b>04</b> Korea Top Brand Awards (명품브랜드 대상) 수상<br>
						<b>01</b> 한국소비자 만족지수 1위 프랜차이즈(짬뽕)부문 (2년 연속)수상<br> <b>01</b>
						연합뉴스TV 성공다큐 - 정상에 서다:7전8기, 꿈의 매출을 달성하다. 이비가짬뽕
					</p>
					<div>
						<img src="./image/history_2017.jpg" alt="">
					</div>
				</div>
				<div class="box  box01">
					<h2>2016년</h2>
					<p>
						<b>12</b> 대전시청 "자원봉사 우수기업" 인증<br> <b>12</b> 한국프랜차이즈 대상
						수상(산업통상자원부장관 표창 수상)<br> <b>12</b> 우수프랜차이즈 지정 (중소기업청)<br>
						<b>12</b> 프랜차이즈 수준평가 1등급 획득(소상공인진흥공단)<br> <b>11</b> 오창 생산공장
						확장 이전<br> <b>10</b> 통영 굴수하식수협 감사패 수상<br> <b>10</b> 제 10회
						대전광역시 매출의 탑 수상<br> <b>09</b> 조선일보 특집/기업과 함께 - 차별화된 한국식 웰빙 짬뽕
						소개<br> <b>09</b> KTX매거진-맛집탐방‘아시아삼색 짬뽕 대결’한국 대표 짬뽕 소개<br>
						<b>08</b> 식품경영연구소 기업부설연구소 인정서 (제2016113973호)<br> <b>08</b>
						청양군수 감사패 수상<br> <b>01</b> 2016 소비자가뽑은 한국소비자만족지수 1위
						프랜차이즈(짬뽕)부문<br> <b>01</b> 인천본점 오픈
					</p>
					<div>
						<img src="./image/history_2016.jpg" alt="">
					</div>
				</div>
				<div class="box  box02">
					<h2>2015년</h2>
					<p>
						<b>10</b> 노블레스 오블리주 협약-대전광역시 및 자원봉사연합회<br> <b>08</b> SBS CNBC
						블루베리 시즌2 "요식업계의 칠전팔기 CEO BEST 20" 선정<br> <b>06</b> 제9회 국가
						지속가능경영대상 "보건복지부 장관상" 수상<br> <b>06</b> 136호점 계약<br> <b>06</b>
						100호점 오픈<br> <b>06</b> 청양신문 감사패 수상<br> <b>02</b> 125호점
						계약<br> <b>02</b> 제주1호점 이호동점 오픈<br> <b>02</b> 김해 물류센터 신설
					</p>
					<div>
						<img src="./image/history_2015.jpg" alt="">
					</div>
				</div>
				<div class="box  box03">
					<h2>2014년</h2>
					<p>
						<b>12</b> SBS생활의 달인 &lt;최강달인 10대 맛집 선정&gt;중식업계 1위<br> <b>12</b>
						동아일보 &lt;1만시간의 성공법칙&gt;소개<br> <b>10</b> 『대한민국에 짬뽕공화국을 세우다』출간<br>
						<b>06</b> 식품연구소 설립 (제2014152677), 부서명:식품 연구 개발팀<br> <b>02</b>
						공감언론newsis &lt;이비가짬뽕, 짬뽕 하나로 '하루 1000만원' 꿈의 매출 올린다&gt;<br> <b>02</b>
						news1 &lt;이비가푸드‘짬뽕’으로 하루매출 천만원…전국 최초&gt;<br> <b>01</b> SBS
						생활의 달인 &lt;415회 - 탕수육달인&gt;방송출연 최강달인 등극<br> <b>01</b> 경영 연구소
						설립<br> <b>01</b> 이비가 사옥 입주(이비가빌딩)
					</p>
					<div>
						<img src="./image/history_2014.jpg" alt="">
					</div>
				</div>
				<div class="box  box04">
					<h2>2013년</h2>
					<p>
						<b>12</b> MBN TV-Mmoney(CEO초대석)출연 <br> <b>12</b> MBN 정완진의 The
						CEO <br> <b>11</b> 테마별 추천음식점 - 대전 광역시 식품안전과 소박한 별미집 37選 소개 <br>
						<b>11</b> 스포츠동아라이프 주최 - 2013, 고객감동경영 BRAND대상 우수프랜차이즈 부문 선정 <br>
						<b>11</b> 제1회 대한민국 사랑받는기업 정부포상 “중소기업청장상” 수상 <br> <b>09</b>
						특허등록 (제10-1314917호)“숙취해소용 기능성 면의 제조방법”<br> <b>06</b> 20호점 오픈<br>
						<b>06</b> 이비가푸드 아카데미 운영(가맹점 실습교육장)<br> <b>06</b> KBS1TV TV이웃
						다정다감 출연<br> <b>05</b> 이비가짬뽕 고객 100만명 돌파<br> <b>04</b>
						CMB VJ 핫이슈 &lt;착한음식&gt; 방송출연<br> <b>04</b> TJB 세상발견 유레카
						&lt;한중일 면요리 삼국지> 방송출연<br> <b>03</b> 청양군청 감사패 수상<br> <b>01</b>
						죽기전에 꼭 가봐야할 대전, 충남 맛집 책 소개<br> <b>01</b> MBC 공감 특별한 세상 &lt;이색
						짬뽕 열전&gt; 방송출연<br> <b>01</b> 중소기업융합 대전 충남연합회 대전광역시장상 수상
					</p>
					<div>
						<img src="./image/history_2013.jpg" alt="">
					</div>
				</div>
				<div class="box  box05">
					<h2>2012년</h2>
					<p>
						<b>12</b> 9호점 오픈<br> <b>12</b> 특허등록 (제10-1211202호) "짬뽕국물 조성 및
						그를 이용한 짬뽕국물 제조방법"<br> <b>11</b> 시사투데이 제 4회 대한민국 사회공헌 대상 "올해를
						빛낸 인물 대상" 수상<br> <b>10</b> SBS 생활의 달인 &lt;355회-짬뽕의 달인&gt;
						방송출연<br> <b>10</b> 청양신문 [명품짬뽕 그 맛의 원천은 청양고추] 소개<br> <b>10</b>
						CMB 해피쿡 맛있는 대화 방송출연<br> <b>09</b> 대전포스 [대전짬뽕의 역사를 다시 쓴 이비가
						짬뽕] 소개<br> <b>04</b> 충청투데이 [따블 맛집] 소개<br> <b>04</b> 동아일보
						[한우사골 짬뽕] 소개<br> <b>03</b> 상표등록(제40-0910544호) 및 디자인 등록 (제
						30-0638835호)
					</p>
					<div>
						<img src="./image/history_2012.jpg" alt="">
					</div>
				</div>
				<div class="box  box06">
					<h2>2011년</h2>
					<p>
						<b>12</b> 3호점 오픈<br> <b>09</b> 서비스표 등록 (제41-0217423호)<br>
						<b>04</b> 대전일보 맛집소개<br> <b>02</b> TJB 오행오감 방송출연
					</p>
					<div>
						<img src="./image/history_2011.jpg" alt="">
					</div>
				</div>
				<div class="box  box07">
					<h2>2010년</h2>
					<p>
						<b>09</b> 본점 오픈
					</p>
					<div>
						<img src="./image/history_2010.jpg" alt="">
					</div>
				</div>
			</div>
			<!-- right_content End-->

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
				<span>창업문의</span> <img src="image/m_phone_icon.png" alt="전화번호">
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
				location.href = 'bbs/member_confirm_leave.jsp';
		}
	</script>
	<!-- }회원탈퇴 스크립트 끝 -->


	<!-- 하단 시작 { -->
	<div id="footer">
		<div id="bottom">
			<ul class="sns">
				<li><a href="index.jsp"><img src="image/f_home.png" alt="홈"></a></li>
				<li><a href="https://ko-kr.facebook.com/ebigafood"
					target="_blank"><img src="image/f_facebook.png" alt="페이스북"></a></li>
				<li><a href="https://www.youtube.com/watch?v=rTqbX2j9ebQ&t=8s"
					target="_blank"><img src="image/f_youtube.png" alt="유투브"></a></li>
			</ul>
			<ul class="link">
				<li><a href="bbs/privacy.jsp">개인정보처리방침</a></li>
				<li><a href="#">이용약관</a></li>
				<li><a href="#">이메일무단수집거부</a></li>
				<li><a href="bbs/search.jsp">오시는길</a></li>
				<li><a href="bbs/faq.jsp">창업문의</a></li>
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
