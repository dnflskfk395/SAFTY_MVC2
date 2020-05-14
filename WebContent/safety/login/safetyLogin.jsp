<%@page import="javafx.scene.control.Alert"%>
<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>세이프티 로그인</title>
<style>
*{   /* 전체 css 초기화 */
	margin: 0;
	padding: 0;
	font-family: "나눔스퀘어";
	font-size: 16px;
}
.safetyLogin_full{
width: 1920px;
height: 1000px;
background-color: #f5f5f5;
float:left;

}
.inner{  /* 전체 div  */
	background-color:white;
	margin-top: 200px;
	margin-left: 700px;
	width: 600px;
	height: 600px;
	border : 1px solid #cbcbca;

	background-color: white;
}
#id{ /* 아이디 필드  */
	margin-left:85px;
	margin-bottom:10px;
	margin-top:50px;
	width: 420px;
	height: 50px;
	border: 1px solid #cbcbca;
}
#pw{/* 패스월드  필드  */
	margin-left:85px;
	margin-bottom:10px;
	width: 420px;
	height: 50px;
	border: 1px solid #cbcbca; /* 회색 */
	font-family: "나눔고딕";
	letter-spacing:
}
.login_btn{ /* 로그인 버튼  & 회원가입 버튼*/
	width: 430px;
	height: 70px;
	margin-top: 10px;
	margin-left:85px;
	border-radius: 5px 5px 5px 5px;
	border-style: none;
	border:1px solid #4364ae;
	outline-color : none;
	background-color : white;

	font-weight:bold;
	color:#4364ae;  /* 고유 색*/
	text-align: center;
}
.login_btn:hover{/* 마우스 오버 */
  background-color: #4364ae;
  color: white;
}
.SignUp_btn{ /* 로그인 버튼  & 회원가입 버튼*/
	width: 430px;
	height: 70px;
	margin-top: 5px;
	margin-left:85px;
	border-radius: 5px 5px 5px 5px;
	border-style: none;
	border:1px solid #4364ae;
	font-size: 16px;
	background-color : white;
	font-family: "나눔스퀘어";
	font-weight:bold;
	color:#4364ae;
	text-align: center;
}
.SignUp_btn:hover{/* 마우스 오버 */
  background-color: #4364ae;
  color: white;
}
#login_title{ /* 타이틀  */
	text-align: center;
	margin-top: 70px;
	size: 30px;
	font-size: 30px;
	font-weight: 900;
	letter-spacing: -2px;
}
#ckbox_div{/* 채크박스  */
	float: left;
}
#ckbox{ /* 채크박스  */
	margin-top : 14px;
	margin-left: 85px;
	width: 20px;
	height: 20px;
}
#ckbox_lb{ /* 체크박스 이름  */
	vertical-align: middle;
	margin-top: -10px;
	display: inline-block;
}


.find_div{/* 아이디 찾기 &비밀번호 찾기   div */
	float: right;
	margin-right: 85px;
	margin-top: 20px;
}
.find_a{
	float: left;
	color: black;
	text-decoration: none;
}
.empty{

	color: red;
	font-family : 3px solid red;
	font-weight: 13px;	
	margin-left: 210px;

}
#logoutone{
	width: 200px;
	height: 100px;
	margin-top: 100px;
	margin-left:200px;
	border-radius: 5px 5px 5px 5px;
	border-style: none;
	font-size: 30px;
	border:1px solid #4364ae;
	outline-color : none;
	background-color : white;

	font-weight:bold;
	color:#4364ae;
	text-align: center;

}
#logoutone:hover {
		background-color: #4364ae;
		color : white;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">

$(function() {
	/* document.frm.id.focus(); */
/* 	$('.login_btn').click(function() {
		if (document.frm.id.value == "") { alert("아이디를 입력해 주세요."); document.frm.id.focus(); return; }
		if (document.frm.pw.value == "") { alert("비밀번호를 입력해 주세요."); document.frm.pw.focus(); return; }

		document.frm.action="./login.do"
		document.frm.method="post";
		document.frm.submit();
	 	$('.login_btn').submit();
		console.log("전송"); 
	});*/
	
/* 	$('.SignUp_btn').click(function() {
		location="/safety/SignUp/join1.jsp";

	}); */
	/* $('#ckbox').click(function() {
		if (document.frm.ckbox.value == true) {
			String userID = URLEncoder.encode(id, "UTF-8");  // 엔코딩 한글 깨지지말 라고 하는것

			Cookie c = new Cookie("save ID", userID); //두개다 가지고 있어야 한다.
			c.setMaxAge(60*60*24); //시간
			c.setPath("/");

			response.addCookie(c); // 사용자 브라우저에 넣어주고 쿠치추가
			document.frm.id.value == c;
		}
	}); */
	$('#logoutone').click(function(){

		 location="/safty_mvc2/safety/login/logout.jsp";

	});
	$('#SignUp_btn').click(function(){

		location="/safty_mvc2/safety/SignUp/join1.jsp";

	});
});


</script>




</head>
<body>



<div class="safetyLogin_full">

<jsp:include page="../../safety/etc/sf_nav.jsp" />
	<div class="inner"> <!-- 로그인   -->
	 <c:if test="${empty authUser}">
	 <div>  <!-- title -->
   	  <h1 id="login_title">세이프티 로그인</h1>
	 </div>
	 
	  <div>
		<form action="./login.do"  method="post"  accept-charset="utf-8">
			<input type="text" name="id" id="id" placeholder="아이디" autofocus="autofocus" style="padding-left: 10px;" required  > <br />
			<input type="password" name="pw"id="pw" placeholder="패스워드"  style="padding-left: 10px;" required>
			<br />
			<div class="empty">
			<c:if test="${!empty errors }">
			존재하지 않는 회원입니다.
			</c:if>
			</div>	
			<input type="submit" value="로그인" class="login_btn"  >
			<input type="button" value="회원가입"class="SignUp_btn" id="SignUp_btn"><br />
			
			<div id="ckbox_div"> <!-- 아이디 저장 -->

			 	<input type="checkbox" id="ckbox" name="ckb" value="true">
 			 	<label id ="ckbox_lb" for="ckb">아이디 저장</label><br>
			</div>

			<div class="find_div"><!-- 아이디 비번 찾기 div-->
  				<a href="safetyFind_ID.jsp" class="find_a">아이디 찾기&ensp;|</a>
			 	<a href="safetyFind_PW.jsp" class="find_a">&ensp; 비밀번호 찾기</a>
			</div>

		</form>
	  </div>
		</c:if>
		<c:if test="${!empty authUser}">
		<div>  <!-- title -->
   	  <h1 id="login_title">다른 아이디로 로그인 하실려면 <br />로그아웃 해주세요</h1>
	 </div>
	 <div>
	 	<input type="button" value="logout" id="logoutone"  />
	 </div>
		</c:if>
	</div>


<jsp:include page="../etc/project_footer.jsp" />
</div>

</body>
</html>
