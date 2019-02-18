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

		<div id="sub_top" class="bg06">
			<h2 class="title">브랜드스토리</h2>
			<span class="line"></span>
			<ul class="path">
				<li>
				<li><a href="index.member"><img
						src="https://ebiga.co.kr/home/image/home_btn.png" alt="홈"></a></li>
				<li>브랜드스토리</li>
				<li>이비가의비밀</li>
			</ul>
		</div>
		<!-- } #sub_top 끝 -->

		<div id="snb">
			<ul>
				<li><a href="sub06.sub">이비가의비밀</a></li>
				<li><a href="sub06_02.sub">짬뽕스토리</a></li>
				<li><a href="sub06_03.sub">재료스토리</a></li>
				<li><a href="sub06_04.sub">BI</a></li>
			</ul>
		</div>
		<!-- } #snb 끝 -->

		<div class="story01_top">
			<h2 class="title">
				“<span>맛</span>과 <span>품질</span>의 비밀”
			</h2>
		</div>

		<div id="sub" class="story01">
			<ul class="list">
				<li>
					<div class="left">
						<img src="./image/story01_img01.jpg" alt="국물">
					</div>
					<div class="right">
						<p>
							<b>특허 받은 <span>‘국물’</span></b> 사골ㆍ토종닭ㆍ각종 한약재를 넣어 제대로 우려낸 육수를 사용하여
							건강에 좋으며 부드럽고 깊은 맛이 납니다.
						</p>
					</div>
				</li>
				<li>
					<div class="left">
						<img src="./image/story01_img02.jpg" alt="면">
					</div>
					<div class="right">
						<p>
							<b>이비가<span>면(麵)</span></b> 알칼리수로 반죽하고 숙성시킨 생면으로 소화가 잘 되고, 찰지면서도
							보드라운 면발입니다.
						</p>
					</div>
				</li>
			</ul>
			<ul class="list">
				<li>
					<div class="left">
						<img src="./image/story01_img03.jpg" alt="즉석조리">
					</div>
					<div class="right">
						<p>
							<b><span>즉석</span>조리</b> 주문즉시 재료를 볶고, 자가제면하기 때문에 맛이 살아있습니다.
						</p>
					</div>
				</li>
				<li>
					<div class="left">
						<img src="./image/story01_img04.jpg" alt="웰빙푸드">
					</div>
					<div class="right">
						<p>
							<b><span>웰빙</span>푸드</b> 자연효모추출물로 맛을 내어 속이 편한 건강한 음식입니다.
						</p>
					</div>
				</li>
			</ul>
			<ul class="list">
				<li>
					<div class="left">
						<img src="./image/story01_img05.jpg" alt="청양고추">
					</div>
					<div class="right">
						<p>
							<b><span>'고춧가루'</span></b> 우리 햇볕을 받고 자란 깨끗하고 건강한 고추를 전용 정미소에서 빻아
							사용하여, 칼칼하면서도 속이 편안합니다.(땡초제외)
						</p>
					</div>
				</li>
				<li>
					<div class="left">
						<img src="./image/story01_img06.jpg" alt="공기밥">
					</div>
					<div class="right">
						<p>
							<b><span>'공기밥'</span></b> 이비가짬뽕은 밥과 함께 먹는 완전한 영양식으로 도정즉시 포장 한
							‘이비가 찰진 쌀’로 지은 밥과 먹으면 가장 맛있습니다.
						</p>
					</div>
				</li>
			</ul>
			<ul class="list">
				<li>
					<div class="left">
						<img src="./image/story01_img07.jpg" alt="김치">
					</div>
					<div class="right">
						<p>
							<b>무색소 <span>'백김치ㆍ무절임'</span></b> HACCP를 통과한 안전한 식품으로 입맛을 깔끔하게 정리
							해 줍니다.
						</p>
					</div>
				</li>
				<li>
					<div class="left">
						<img src="./image/story01_img08.jpg" alt="기술보유">
					</div>
					<div class="right">
						<p>
							<b><span>기술</span>보유</b> 핵심 기술을 본사가 보유하고 있어 고유한 맛과 품질을 유지할 수
							있습니다.
						</p>
					</div>
				</li>
			</ul>
			<ul class="list">
				<li>
					<div class="left">
						<img src="./image/story01_img09.jpg" alt="생산라인">
					</div>
					<div class="right">
						<p>
							<b>직접<span>생산</span></b> 전용 생산라인에서 전문적으로 생산하고, 자체 물류시스템으로 안전하게
							공급합니다.
						</p>
					</div>
				</li>
			</ul>


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
				<li><a href="../index.jsp"><img src="image/f_home.png"
						alt="홈"></a></li>
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
