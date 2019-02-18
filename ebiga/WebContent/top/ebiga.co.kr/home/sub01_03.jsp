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
					src="http://ebiga.co.kr/home/image/logo.jpg" alt="이비가짬뽕"></a>
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
				<li><a href="index.member"><img src="image/home_btn.png"
						alt="홈"></a></li>
				<li>이비가소개</li>
				<li>기업소개</li>
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

		<div id="sub" class="sub01_03">
			<div class="ceo">
				<div class="right">
					<p class="mobile">
						<img src="./image/ceo02_img02.jpg" alt="사장"><br> <span
							class="name">(주)이비가푸드 사장 권순창</span>
					</p>
					<h2 class="title">
						“발 없는 <span>맛</span>이 천리를 갔습니다.<br>오로지 맛으로 <span>대한민국
							대표 짬뽕</span>이 되었습니다”
					</h2>
					<p class="text">
						좁은 골목 모퉁이에서 파는 짬뽕이 대한민국 대표 짬뽕 브랜드가 되는데 까지 그리 긴 시간이 걸리지 않았습니다. <br>
						오늘 드신 분이 다음 날 또 오시고, 가족과 함께 오시고, 멀리 친구와 함께 다시 찾아주시니 짬뽕을 먹고자 줄 선
						분들의 끝이 보이지를 않았습니다. 수줍게 선을 보인지 한 달 만에 창업 문의가 이어졌고 전국 140개 가맹점과 함께
						하는 대한민국 대표 짬뽕이 되었습니다. <br> 그저 맛있는 음식을 제대로 만들어 보고자 했던 진심이 전국으로
						퍼져나갔다고 생각합니다.<br> <br> <b>우리의 음식문화를 만들어 가는 <span
							class="red">‘명품 외식프랜차이즈 기업’</span>이 되겠습니다.
						</b><br> <br> 진심이 담긴 음식은 음식 사업의 기본입니다. 이비가짬뽕 한 그릇마다 <span
							class="red">‘사랑ㆍ정성ㆍ혼’</span>을 담아 열정적으로 도전하며, 긍정적으로 협력하여 우리의 음식문화를
						만들어 가는 ‘명품 외식프랜차이즈 기업’으로 나아가고 있습니다.<br> 모든 임직원, 가맹점 대표님과 가족님들
						그리고 고객님 한 분 한 분이 자랑스러운 이비가人입니다. 이비가짬뽕이 써 가는 새로운 짬뽕 역사 100년은 모든
						이비가人이 함께하는 든든한 여정이 될 것이라고 확신합니다.<br> <span class="red">최고의
							맛과 품질</span>로 승부하겠습니다. 모든 이비가人과 함께 행복을 나누겠습니다.<br> 지속적인 연구개발로 경쟁력을
						높여가는 기업이 되도록 최선을다하겠습니다.<br> 감사합니다.<br> <br> <span
							class="name">(주)이비가푸드 사장 권순창</span>
					</p>
				</div>
				<div class="left">
					<img src="./image/ceo02_img.png" alt="사장">
				</div>
			</div>
			<!-- } ceo 끝 -->

			<div class="box01">
				<i class="fa fa-bell" aria-hidden="true"></i>
				<h2 class="subject">
					"이비가의 <span>핵심가치</span>"
				</h2>
				<br> <br> <img src="./image/sub01_03_mission.jpg" alt=""
					class="pc"> <img src="./image/sub01_03_mission02.jpg" alt=""
					class="mobile">
			</div>

			<div class="box05">
				<i class="fa fa-hand-paper-o" aria-hidden="true"></i>
				<h2 class="subject">
					"이비가의 <span>약속</span>"
				</h2>
				<ul>
					<li><img src="./image/sub01_03_icon05.png" alt=""> <b>최고지향</b>
						최고의 맛과 품질로 승부하겠습니다.</li>
					<li><img src="./image/sub01_03_icon06.png" alt=""> <b>협력상생</b>
						모든 고객과 함께 행복을 나누겠습니다.</li>
					<li><img src="./image/sub01_03_icon07.png" alt=""> <b>역량강화</b>
						지속적인 연구개발로 경쟁력을 높이겠습니다.</li>
				</ul>
			</div>

			<div class="box03">
				<i class="fa fa-trophy" aria-hidden="true"></i>
				<h2 class="subject">
					"사회<span>책임경영</span>"
				</h2>

				<img src="./image/sub01_03_img02.png" alt="책임경영"><br> <br>

				<p>
					- 대전시청 “자원봉사 우수기업” 인증<br> - 제9회 대한민국 국가 지속가능경영대상 ‘보건복지부 장관상’
					수상<br> - 제1회 대한민국 사랑받는 기업 정부 포상 지역사회 공헌 부문 ‘중소기업청장상’수상
				</p>
			</div>

			<ul class="box04">
				<li><img src="./image/sub01_03_img01.jpg" alt="통영굴 감사패"><br>
					<br></li>

				<li>
					<p>
						인천서구청 쌀 2,000kg 지원<br> 청양고춧가루 대량 구매<br> 청양군 장학금 전달<br>
						대전 서구청 기능성 운동화 전달<br> 제1회 골프 꿈나무 후원 (스포츠서울)<br> 통영 굴 직배송
						사용
					</p>
					<p class="more_text">
						대전 행복한집 : 설맞이 떡국떡 나누기<br> 제8회 겨울나기 김장대봉사<br> 현충원 비석닦기 봉사<br>
						공동생활가정 나눔잔치<br> 대전소년원 짜장면봉사<br> 논산정심원 : 장애 어르신 200명 짜장면
						봉사<br> 대전 행복한집 : 무료급식소 어르신 70명 짬뽕 지원<br> 제7회 겨울나기 김장대봉사
					</p> <br> <span class="more_btn">+ 더보기</span> <span
					class="closed_btn">x 닫기</span>
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
