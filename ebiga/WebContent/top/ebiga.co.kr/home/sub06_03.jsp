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
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
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
				<a href="index.member"><img src="https://ebiga.co.kr/home/image/logo.jpg" alt="이비가짬뽕"></a>
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
				<li><a href="index.member"><img src="image/home_btn.png"
						alt="홈"></a></li>
				<li>브랜드스토리</li>
				<li>재료스토리</li>
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

		<div class="story03   story03_wrap">
			<div class="basic_content">
				<p class="text">
					<b>"최고의 맛 그리고 명품짬뽕을 지향하는 이비가짬뽕"은</b><br> <span>햇볕이 드는
						대로, 바람이 부는 대로, 비가 내리는 대로</span> 자연의 맛을 머금고 있는 질 좋은 <span>지역농산품</span>을
					고집합니다.<br> 우리 땅과 물에서 자란 신선한 굴과 고추는 지역 농가를 통해 구입하는 등 <span>신선한
						맛, 고객의 건강, 농가경제</span>까지 책임지고 있습니다. <br> 최고의 재료를 고집하는 것은 맛과 품질로
					보답하고, <span>지역사회와 함께 나누겠다는 이비가의 의지</span>이기도 합니다.
				</p>
			</div>
		</div>

		<div id="sub" class="story03">
			<ul class="food">
				<li>
					<div class="left">
						<img src="./image/story03_img01.jpg" alt="고춧가루">
					</div>
					<div class="right">
						<p>
							<b>식욕을 돋우는 국내산 <span>‘고춧가루’</span></b> 우리나라의 깨끗한 자연 속에서 잘 익은 고추는
							과피가 두꺼워 좋은 원초가 됩니다. 제분 시 고춧가루가 많이 나고, 붉은 빛깔과 감칠맛이 좋아 우수성을 인정받고
							있습니다.(땡초제외)
						</p>
					</div>
				</li>
				<li>
					<div class="left">
						<img src="./image/story03_img02.jpg" alt="굴">
					</div>
					<div class="right">
						<p>
							<b>바다의 우유 <span>‘청정바다의 굴’</span></b> 예부터 굴은 영양소의 보고로서, 우수한 영품으로
							호평을 받고 있습니다. 굴의 단백질 함량은 10%정도로 우유의 3%에 비하면 3배정도 많으며, 굴은 우유와 같은
							영양분을 균형있게 함유하고 있기 때문에 영양적인 면에서 닮은 점이 많습니다.
						</p>
					</div>
				</li>
			</ul>
			<ul class="food">
				<li>
					<div class="left">
						<img src="./image/story03_img03.jpg" alt="바지락">
					</div>
					<div class="right">
						<p>
							<b>갯벌의 보석 <span>‘바지락’</span></b> 1801년 신유박해로 흑산도로 유배를 간 정약전 선생은
							자산어보에 바지락을 천합(淺蛤)이란 이름으로 소개하며 “살도 풍부하고 맛이 좋다”라고 기록했습니다. 바지락은 여러
							가지 요리를 위한 식재료로 많이 사용되는데, 육질 100그램에 칼슘 80mg, 계란의 5배나 되는 마그네슘 50mg이
							들어 있습니다.
						</p>
					</div>
				</li>
				<li>
					<div class="left">
						<img src="./image/story03_img04.jpg" alt="양파">
					</div>
					<div class="right">
						<p>
							<b>맛과 영양의 보고 <span>‘양파’</span></b> 양파는 익히면 매운맛이 달아나 자연스러운 단맛이 증가해
							조리시 어떤 재료와도 잘 어울리고, 식욕을 증진시킬 뿐만 아니라 생선 및 육류의 냄새를 없애고 풍미를 더해줍니다.
							여기에 펙틴이라는 물질이 들어있는데, 기름을 분해해 콜레스테롤 수치를 낮게 하며, 혈액에 해로운 물질을 없애 혈액을
							깨끗하게 하는 역할을 합니다.
						</p>
					</div>
				</li>
			</ul>
			<ul class="food">
				<li>
					<div class="left">
						<img src="./image/story03_img05.jpg" alt="배추">
					</div>
					<div class="right">
						<p>
							<b>야채 중 으뜸 <span>‘배추’</span></b> 잎, 줄기, 뿌리를 모두 식용하는 버릴 것이 없는
							채소입니다. 고려 중기의 [향약구급방]에서는 “배추는 달고 온하며 독이 없다.” 라고 전하고 있습니다. 특히 배추의
							비타민C와 칼슘은 국으로 끓여도 영양분 파괴가 적기 때문에 비타민 공급원으로 아주 좋으며, 감기 예방에 더 없이 좋은
							식품입니다.
						</p>
					</div>
				</li>
				<li>
					<div class="left">
						<img src="./image/story03_img06.jpg" alt="사골">
					</div>
					<div class="right">
						<p>
							<b>깊은 한국의 맛 <span>‘사골’</span></b> 사골은 예로부터 부족한 단백질과 지방을 보충하기 위한
							건강보신음식으로 손꼽혀왔습니다. 사골을 자주 먹으면 면역력도 높아질 뿐 아니라 원기가 회복되며 약한 관절을 튼튼하게
							해주는데, 이는 사골에 양질의 단백질이 풍부하게 포함되어 있기 때문입니다.
						</p>
					</div>
				</li>
			</ul>
			<ul class="food">
				<li>
					<div class="left">
						<img src="./image/story03_img07.jpg" alt="토종닭">
					</div>
					<div class="right">
						<p>
							<b>감칠맛의 으뜸 <span>‘토종닭’</span></b> 토종닭은 불포화지방산과 높은 단백질 함량으로 담백한 맛과
							육향의 풍미가 있고, 높은 수분함량 보유로 조리 시 쫄깃한 조직감이 뛰어나며, 다양한 맛 성분의 필수 아미노산을 다량
							함유하여 영양적인 측면에서도 우수합니다.
						</p>
					</div>
				</li>
				<li>
					<div class="left">
						<img src="./image/story03_img08.jpg" alt="한약재">
					</div>
					<div class="right">
						<p>
							<b>몸을 보호하고 맛을 잡아주는 <span>'한약재'</span></b> 황기는 예로부터 닭에 넣고 달여 먹으면
							식은땀을 흘리지 않고 체력이 증강된다고 전해지고 있으며, 기운이 없고 식욕을 잃은 사람에게 많이 활용되고 있다.
							예로부터 ‘제2의 인삼’으로 불리는 가시오가피는 뿌리, 줄기 및 가지의 껍질 등을 장기복용하면 몸을 가볍게 한다하여
							오래전부터 사용해오고 있습니다.
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
