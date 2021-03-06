<%@page import="vo.Join1_VO"%>
<%@page import="dao.Join1_DAO"%>
<%@page import="dao.board_QA_Dao"%>
<%@page import="vo.board_QA_VO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 - info</title>
<style type="text/css">
.right_inner {
	background-color: #F6F6F6;
	padding-bottom: 20px;
	box-sizing: border-box;
}

.info {
	text-align: center;
}

#p-info {
	padding-bottom: 20px;
	line-height: 25px;
}

#ch {
	margin-top: 20px;
	background-color: #555555;
	border: 1px solid #555555;
	color: white;
}

#pw {
	padding-left: 10px;
	box-sizing: border-box;
}

#pw:focus {
	outline: none;
}

#pw, #ch {
	height: 40px;
	width: 300px;
}

#donaBtn {
	position: fixed;
	bottom: 50px;
	right: 50px;
	opacity: 0.7;
	width: 180px;
	height: 100px;
}

.tt {
	text-align: center;
	padding-bottom: 20px;
}

#cctxt {
	width: 350px;
	height: 20px;
	padding: 10px;
	margin-top: 30px;
}

#selbt {
	width: 30px;
	height: 30px;
	background-color: white;
	size: 50% 50%;
}

.tx {
	display: inline-block;
}

.imgBt {
	display: inline-block;
	vertical-align: middle;
	margin-left: -45px;
}

/* 리스트 a 태그 */
.bb_div {
	margin-top: 180px;
	text-align: center;
}

.bb {
	text-decoration: none;
	font-size: 20px;
	color: black;
	margin-top: 10px;
}
/* 리스트 a 태그 */
.bb_li {
	border: 1px solid #BDBDBD;
	border-right: hidden;
	width: 180px;
	height: 45px;
	text-align: center;
	padding-top: 20px;
	display: inline;
	float: left;
}

#bb1_li {
	border-right: 1px solid #BDBDBD;
}

.customer {
	background-image: url(../image/pencil.gif);
	background-size: 100% 100%;
	height: 170px;
	padding-top: 200px;
	text-align: center;
}

.profile {
	text-align: center;
}

.boardBack_left img {
	margin: 0 auto;
}

.boardBack {
	margin: -200px 0 0 360px; 
	width: 1200px;
	overflow: auto; 
	z-index: 100;
}

.boardBack_left {
	opacity: 0.9;
	margin: 0;
	width: 250px;
	height: 600px;
	float: right;
	padding-top: 20px;
	background-color: red;
}

.boardBack_right {
    position: relative;
    top: -400px;
    left: 130px;
	background-color: white;
	width: 1000px;
	padding: 40px;
	float: left;
	/* padding: 40px; */

	box-shadow: 0px 5px 10px 0px rgba(0, 0, 0, .15);
}

/* 내용 좌측 div ul */
.in_nav {
	margin-top: 37px;
}

.in_nav li span {
	display: block;
	height: 50px;
	line-height: 50px;
	border-top: 1px solid #e5e5e5;
	border-bottom: 1px solid #e5e5e5;
}

.in_nav li {
	list-style: none;
}

.in_nav li a {
	text-decoration: none;
	color: black;
}

.in_nav li span:last-child {
	border-bottom: none;
}

/* 내용 우측 div */
#inquiryBt {
	border: 1px solid #FFC19E;
	background-color: #FFC19E;
	width: 110px;
	height: 50px;
	float: right;
	margin-top: -15px;
	margin-bottom: 20px;
}

.in_nav_span.five {
	background-color: white;
	border-right: 1px solid white;
	color: red;
	font-weight: 600;
	box-shadow: -5px 5px 10px -5px rgba(0, 0, 0, .15);
}

.bb_right_title {
	border-right: 1px solid #D5D5D5;
	width: 150px;
	height: 150px;
	float: left;
	color: #926d49;
}

.bb_right_title h2 {
	padding-top: 10px
}

/* 1:1문의에서 왼쪽 메뉴들 */
.info_faq {
	float: left;
	width: 21%;
	padding: 10px 10px 10px 40px;
}

h1 {
	margin-top: 20px;
	padding-bottom: 30px;
}

.info_faq h3 {
	padding-bottom: 10px;
}

.info_faq h4 {
	color: #926d49;
	padding-top: 15px;
}

.info_faq img {
	float: left;
	padding-right: 20px;
}

.info_faq a img {
	float: right;
	margin-top: -50px;
	margin-right: -50px;
}

.info_faq p {
	font-size: 13px;
	padding: 15px 0;
}

.right_inner {
	clear: both;
	padding-top: 30px;
}

.info_faq a {
	text-decoration: none;
	color: #3DB7CC;
}

.ri_in_div {
	text-align: center;
}

.ri_in_div input:focus {
	outline: none;
}

#ri_in_sel {
	width: 400px;
	height: 50px;
	padding: 20px;
	box-sizing: border-box;
}

/* 1:1문의에서 왼쪽 메뉴들 */
.in_nav_span {
	font-size: 14px;
	padding-left: 10px;
	box-sizing: border-box;
}

.page {
	text-align: center;
	margin-bottom: 20px;
}

.page a {
	text-decoration: none;
	color: black;
	font-size: 20px;
}

.col1 {
	width: 20%;
}

.col2 {
	width: 70%;
}

.col3 {
	width: 8%;
}

table {
	width: 1000px;
	margin: 0 auto;
	border-left: none;
	border-right: none;
	border-collapse: collapse;
	margin-bottom: 20px;
}

tr {
	border-bottom: 1px solid #BDBDBD;
}

th {
	padding: 2px;
	font-size: 20px;
	text-shadow: 2px, 2px, 2px, #ffffff;
}

tr {
	height: 70px;
}

.q-row {
	cursor: pointer;
}

.a-row {
	background-color: #EAEAEA;
}

.a-wrap {
	padding: 10px 20px;
	float: left;
	height: 100%;
}

.a-contents {
	padding: 10px 0;
}

textarea {
	background-color: #EAEAEA;
	border: 1px solid #EAEAEA;
	resize: none;
	height: 150px;
}

textarea:focus {
	outline: none;
}

.bb_li:hover {
	background-color: #926d49;
	color: white;
}

.on {
	background-color: #926d49;
	color: white;
}

.off {
	background-color: white;
	color: black;
}

.bb_li {
	cursor: pointer;
}

.bb_div a {
	color: black;
}

.modifyInfo {
	height: 30px;
	width: 300px;
}

.modifyInfo:focus {
	outline: none;
}
.foot{
	width: 1903px;
	height: 190px;
	background-color : #EAEAEA;
	height: 190px;
}
</style>
<!-- myPage_info.jsp -->
<!-- <link rel="stylesheet" href="../css/main.css" /> -->



<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="../se2/js/HuskyEZCreator.js"
	charset="utf-8"></script>
<script type="text/javascript">
	
</script>
</head>
<body>
	<jsp:include page="/safety/etc/dona.jsp"></jsp:include>

		<jsp:include page="/safety/etc/sf_nav.jsp"></jsp:include>


		<div class="main">

			<div class="customer"></div>

			<div class="boardBack">
				<div>
				<jsp:include page="/safety/ServiceCenter/backBoard_left.jsp"></jsp:include>
				<div class="boardBack_right">
					<div class="right_inner">
					<jsp:include page="/safety/ServiceCenter/backBoard_right.jsp"></jsp:include>
					
						<form action="/safty_mvc2/myPage.do" method="post">
							<div class="info">
								<p id="p-info">
								<br /><br /><br />
								<br /><br /><br />회원님의 개인정보를 안전하게 보호하기 위하여 <br />비밀번호를 다시 한 번 입력해주세요.
								</p>
								
								<div class="pw_div">
									<input type="password" name="pw" id="pw"
										placeholder="비밀번호를 입력해주세요" style="font-family: 'Godic'" />
									<br />
								<c:if test="${!empty pwErrors}">
									틀린 비밀번호 입니다.
								</c:if>		
								</div>
								<div class="ch_div">
									<input type="submit" value="확인" id="ch" />
								</div>
							</div>
							
						</form>
					</div>
					</div>
				</div>
		</div>

	





	</div>
	<div class="foot">
	<jsp:include page="/safety/etc/project_footer.jsp"></jsp:include>
	</div>
</body>
</html>