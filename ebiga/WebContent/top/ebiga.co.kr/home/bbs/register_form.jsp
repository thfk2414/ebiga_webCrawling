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
<title>회원 가입 | 이비가짬뽕</title>
<link rel="stylesheet"
	href="https://ebiga.co.kr/home/css/default.css?ver=161020">
<link rel="stylesheet"
	href="https://ebiga.co.kr/home/skin/member/basic/style.css?ver=161020">
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
<script src="https://spi.maps.daum.net/imap/map_js_init/postcode.v2.js"></script>
</head>
<body>

	<!-- 회원탈퇴 스크립트 시작 { -->
	<script type="text/javascript">
		function member_leave() { // 회원 탈퇴 tto
			if (confirm('회원에서 탈퇴 하시겠습니까?'))
				location.href = 'member_confirm_leave.jsp';
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
			<div id="nav_bg"></div>
		</div>

		<!-- } 상단 끝 -->
		<!-- 회원정보 입력/수정 시작 { -->
		<div id="sub" class="mbskin  bbs">

			<script src="https://ebiga.co.kr/home/js/jquery.register_form.js"></script>

			<form id="fregisterform" name="fregisterform"
				action="register.member"
				onsubmit="return fregisterform_submit(this);" method="post"
				autocomplete="off">

				<input type="hidden" name="agree" value="1"> <input
					type="hidden" name="agree2" value="1"> <input type="hidden"
					name="cert_type" value=""> <input type="hidden"
					name="cert_no" value=""> <input type="hidden" name="mb_sex"
					value="">
				<div class="tbl_frm01 tbl_wrap">
					<table>
						<caption>사이트 이용정보 입력</caption>
						<tbody>
							<tr>
								<th scope="row"><label for="reg_mb_id">아이디<strong
										class="sound_only">필수</strong></label></th>
								<td><span class="frm_info">영문자, 숫자, _ 만 입력 가능. 최소
										3자이상 입력하세요.</span> <input type="text" name="mb_id" value=""
									id="reg_mb_id" required class="frm_input required "
									minlength="3" maxlength="20"> <span id="msg_mb_id"></span>
								</td>
							</tr>
							<tr>
								<th scope="row"><label for="reg_mb_password">비밀번호<strong
										class="sound_only">필수</strong></label></th>
								<td><input type="password" name="mb_password"
									id="reg_mb_password" required class="frm_input required"
									minlength="3" maxlength="20"></td>
							</tr>
							<tr>
								<th scope="row"><label for="reg_mb_password_re">비밀번호
										확인<strong class="sound_only">필수</strong>
								</label></th>
								<td><input type="password" name="mb_password_re"
									id="reg_mb_password_re" required class="frm_input required"
									minlength="3" maxlength="20"></td>
							</tr>
						</tbody>
					</table>
				</div>

				<div class="tbl_frm01 tbl_wrap">
					<table>
						<caption>개인정보 입력</caption>
						<tbody>
							<tr>
								<th scope="row"><label for="reg_mb_name">이름<strong
										class="sound_only">필수</strong></label></th>
								<td><input type="text" id="reg_mb_name" name="mb_name"
									value="" required class="frm_input required " size="10">
								</td>
							</tr>
							<tr>
								<th scope="row"><label for="reg_mb_nick">닉네임<strong
										class="sound_only">필수</strong></label></th>
								<td><span class="frm_info"> 공백없이 한글,영문,숫자만 입력 가능
										(한글2자, 영문4자 이상)<br> 닉네임을 바꾸시면 앞으로 60일 이내에는 변경 할 수 없습니다.
								</span> <input type="hidden" name="mb_nick_default" value=""> <input
									type="text" name="mb_nick" value="" id="reg_mb_nick" required
									class="frm_input required nospace" size="10" maxlength="20">
									<span id="msg_mb_nick"></span></td>
							</tr>

							<tr>
								<th scope="row"><label for="reg_mb_email">E-mail<strong
										class="sound_only">필수</strong></label></th>
								<td><input type="hidden" name="old_email" value="">
									<input type="text" name="mb_email" value="" id="reg_mb_email"
									required class="frm_input email required" size="70"
									maxlength="100"></td>
							</tr>

							<tr>
								<th scope="row"><label for="mb_1">회사명</label></th>
								<td><input type="text" name="mb_1" value="" id="mb_1"
									class="frm_input"></td>
							</tr>

							<tr>
								<th scope="row"><label for="reg_mb_homepage">홈페이지</label></th>
								<td><input type="text" name="mb_homepage" value=""
									id="reg_mb_homepage" class="frm_input " size="70"
									maxlength="255"></td>
							</tr>

							<tr>
								<th scope="row"><label for="reg_mb_tel">전화번호</label></th>
								<td><input type="text" name="mb_tel" value=""
									id="reg_mb_tel" class="frm_input " maxlength="20"></td>
							</tr>

							<tr>
								<th scope="row"><label for="reg_mb_hp">휴대폰번호<strong
										class="sound_only">필수</strong></label></th>
								<td><input type="text" name="mb_hp" value="" id="reg_mb_hp"
									required class="frm_input required" maxlength="20"></td>
							</tr>

							<tr>
								<th scope="row">주소</th>
								<td><label for="reg_mb_zip" class="sound_only">우편번호</label>
									<input type="text" name="mb_zip" value="" id="reg_mb_zip"
									class="frm_input " size="5" maxlength="6">
									<button type="button" class="btn_frmline"
										onclick="win_zip('fregisterform', 'mb_zip', 'mb_addr1', 'mb_addr2', 'mb_addr3', 'mb_addr_jibeon');">주소
										검색</button> <br> <input type="text" name="mb_addr1" value=""
									id="reg_mb_addr1" class="frm_input frm_address " size="50">
									<label for="reg_mb_addr1">기본주소</label><br> <input
									type="text" name="mb_addr2" value="" id="reg_mb_addr2"
									class="frm_input frm_address" size="50"> <label
									for="reg_mb_addr2">상세주소</label> <br> <input type="text"
									name="mb_addr3" value="" id="reg_mb_addr3"
									class="frm_input frm_address" size="50" readonly="readonly">
									<label for="reg_mb_addr3">참고항목</label> <input type="hidden"
									name="mb_addr_jibeon" value=""></td>
							</tr>
						</tbody>
					</table>
				</div>

				<div class="tbl_frm01 tbl_wrap">
					<table>
						<caption>기타 개인설정</caption>
						<tbody>



							<tr>
								<th scope="row"><label for="reg_mb_mailling">메일링서비스</label></th>
								<td><input type="checkbox" name="mb_mailling" value="1"
									id="reg_mb_mailling" checked> 정보 메일을 받겠습니다.</td>
							</tr>

							<tr>
								<th scope="row"><label for="reg_mb_sms">SMS 수신여부</label></th>
								<td><input type="checkbox" name="mb_sms" value="1"
									id="reg_mb_sms" checked> 휴대폰 문자메세지를 받겠습니다.</td>
							</tr>

							<!-- <tr>
							<th scope="row"><label for="reg_mb_open">정보공개</label></th>
							<td><span class="frm_info"> 정보공개를 바꾸시면 앞으로 0일 이내에는
									변경이 안됩니다. </span> <input type="hidden" name="mb_open_default" value="">
								<input type="checkbox" name="mb_open" value="1" checked
								id="reg_mb_open"> 다른분들이 나의 정보를 볼 수 있도록 합니다.</td>
						</tr>


						<tr>
							<th scope="row">자동등록방지</th>
							<td><script>
								var g5_captcha_url = "https://ebiga.co.kr/home/plugin/kcaptcha";
							</script>
								<script
									src="https://ebiga.co.kr/home/plugin/kcaptcha/kcaptcha.js"></script>
								<fieldset id="captcha" class="captcha">
									<legend>
										<label for="captcha_key">자동등록방지</label>
									</legend>
									<img src="javascript:void(0);" alt="" id="captcha_img">
									<button type="button" id="captcha_mp3">
										<span></span>숫자음성듣기
									</button>
									<button type="button" id="captcha_reload">
										<span></span>새로고침
									</button>
									<input type="text" name="captcha_key" id="captcha_key" required
										class="captcha_box required" size="6" maxlength="6"> <span
										id="captcha_info">자동등록방지 숫자를 순서대로 입력하세요.</span>
								</fieldset></td>
						</tr> -->
						</tbody>
					</table>
				</div>

				<div class="btn_confirm">
					<input type="submit" value="회원가입" id="btn_submit"
						class="btn_submit" accesskey="s"> <a href="../index.jsp"
						class="btn_cancel">취소</a>
				</div>
			</form>

			<script>
				$(function() {
					$("#reg_zip_find").css("display", "inline-block");

				});

				// submit 최종 폼체크
				function fregisterform_submit(f) {
					// 회원아이디 검사
					if (f.w.value == "") {
						var msg = reg_mb_id_check();
						if (msg) {
							alert(msg);
							f.mb_id.select();
							return false;
						}
					}

					if (f.w.value == "") {
						if (f.mb_password.value.length < 3) {
							alert("비밀번호를 3글자 이상 입력하십시오.");
							f.mb_password.focus();
							return false;
						}
					}

					if (f.mb_password.value != f.mb_password_re.value) {
						alert("비밀번호가 같지 않습니다.");
						f.mb_password_re.focus();
						return false;
					}

					if (f.mb_password.value.length > 0) {
						if (f.mb_password_re.value.length < 3) {
							alert("비밀번호를 3글자 이상 입력하십시오.");
							f.mb_password_re.focus();
							return false;
						}
					}

					// 이름 검사
					if (f.w.value == "") {
						if (f.mb_name.value.length < 1) {
							alert("이름을 입력하십시오.");
							f.mb_name.focus();
							return false;
						}

						/*
						var pattern = /([^가-힣\x20])/i;
						if (pattern.test(f.mb_name.value)) {
						    alert("이름은 한글로 입력하십시오.");
						    f.mb_name.select();
						    return false;
						}
						 */
					}

					// 닉네임 검사
					if ((f.w.value == "")
							|| (f.w.value == "u" && f.mb_nick.defaultValue != f.mb_nick.value)) {
						var msg = reg_mb_nick_check();
						if (msg) {
							alert(msg);
							f.reg_mb_nick.select();
							return false;
						}
					}

					// E-mail 검사
					if ((f.w.value == "")
							|| (f.w.value == "u" && f.mb_email.defaultValue != f.mb_email.value)) {
						var msg = reg_mb_email_check();
						if (msg) {
							alert(msg);
							f.reg_mb_email.select();
							return false;
						}
					}

					// 휴대폰번호 체크
					var msg = reg_mb_hp_check();
					if (msg) {
						alert(msg);
						f.reg_mb_hp.select();
						return false;
					}

					if (typeof f.mb_icon != "undefined") {
						if (f.mb_icon.value) {
							if (!f.mb_icon.value.toLowerCase()
									.match(/.(gif)$/i)) {
								alert("회원아이콘이 gif 파일이 아닙니다.");
								f.mb_icon.focus();
								return false;
							}
						}
					}

					if (typeof (f.mb_recommend) != "undefined"
							&& f.mb_recommend.value) {
						if (f.mb_id.value == f.mb_recommend.value) {
							alert("본인을 추천할 수 없습니다.");
							f.mb_recommend.focus();
							return false;
						}

						var msg = reg_mb_recommend_check();
						if (msg) {
							alert(msg);
							f.mb_recommend.select();
							return false;
						}
					}

					if (!chk_captcha())
						return false;

					document.getElementById("btn_submit").disabled = "disabled";

					return true;
				}
			</script>

		</div>
		<!-- } 회원정보 입력/수정 끝 -->
		<!-- 회원탈퇴 스크립트 시작 { -->
		<script type="text/javascript">
			function member_leave() { // 회원 탈퇴 tto
				if (confirm('회원에서 탈퇴 하시겠습니까?'))
					location.href = 'member_confirm_leave.jsp';
			}
		</script>
		<!-- }회원탈퇴 스크립트 끝 -->


		<!-- 하단 시작 { -->
		<div id="footer">
			<div id="bottom">
				<ul class="sns">
					<li><a href="../index.jsp"><img src="../image/f_home.png"
							alt="홈"></a></li>
					<li><a href="https://ko-kr.facebook.com/ebigafood"
						target="_blank"><img src="../image/f_facebook.png" alt="페이스북"></a></li>
					<li><a href="https://www.youtube.com/watch?v=rTqbX2j9ebQ&t=8s"
						target="_blank"><img src="../image/f_youtube.png" alt="유투브"></a></li>
				</ul>
				<ul class="link">
					<li><a href="privacy.jsp">개인정보처리방침</a></li>
					<li><a href="#">이용약관</a></li>
					<li><a href="#">이메일무단수집거부</a></li>
					<li><a href="search.jsp">오시는길</a></li>
					<li><a href="faq.jsp">창업문의</a></li>
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
