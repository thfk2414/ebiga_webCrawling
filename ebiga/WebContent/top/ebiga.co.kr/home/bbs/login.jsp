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
<title>로그인 | 이비가짬뽕</title>
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
</head>
<body>

	<!-- 로그인 시작 { -->
	<div id="mb_login" class="mbskin">
		<h1>로그인</h1>

		<form name="flogin" action="login.member"
			onsubmit="return flogin_submit(this);" method="post">
			<input type="hidden" name="url"
				value="https%3A%2F%2Febiga.co.kr%2Fhome%2Fbbs%2Fboard.jsp%3Fbo_table%3Dvideo">

			<fieldset id="login_fs">
				<legend>회원로그인</legend>
				<label for="login_id" class="login_id">회원아이디<strong
					class="sound_only"> 필수</strong></label> <input type="text" name="mb_id"
					id="login_id" required class="frm_input required" size="20"
					maxLength="20"> <label for="login_pw" class="login_pw">비밀번호<strong
					class="sound_only"> 필수</strong></label> <input type="password"
					name="mb_password" id="login_pw" required
					class="frm_input required" size="20" maxLength="20"> <input
					type="submit" value="로그인" class="btn_submit"> <input
					type="checkbox" name="auto_login" id="login_auto_login"> <label
					for="login_auto_login">자동로그인</label>
			</fieldset>

			<aside id="login_info">
				<h2>회원로그인 안내</h2>
				<p>
					회원아이디 및 비밀번호가 기억 안나실 때는 아이디/비밀번호 찾기를 이용하십시오.<br> 아직 회원이 아니시라면
					회원으로 가입 후 이용해 주십시오.
				</p>
				<div>
					<a href="https://ebiga.co.kr/home/bbs/password_lost.jsp"
						target="_blank" id="login_password_lost" class="btn02">아이디
						비밀번호 찾기</a> <a href="agreement.member" class="btn01">회원 가입</a>
				</div>
			</aside>

			<div class="btn_confirm">
				<a href="index.member">메인으로 돌아가기</a>
			</div>

		</form>

	</div>

	<script>
		$(function() {
			$("#login_auto_login")
					.click(
							function() {
								if (this.checked) {
									this.checked = confirm("자동로그인을 사용하시면 다음부터 회원아이디와 비밀번호를 입력하실 필요가 없습니다.\n\n공공장소에서는 개인정보가 유출될 수 있으니 사용을 자제하여 주십시오.\n\n자동로그인을 사용하시겠습니까?");
								}
							});
		});

		function flogin_submit(f) {
			return true;
		}
	</script>
	<!-- } 로그인 끝 -->

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
