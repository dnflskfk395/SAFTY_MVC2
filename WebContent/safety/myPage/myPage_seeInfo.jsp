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

.boardBack_left {
	opacity: 0.9;
	margin: 0;
	width: 250px;
	height: 600px;
	float: right;
	padding-top: 20px;
	background-color: red;
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

.in_nav_span_two{
	

	border-right: 1px solid white;
	
	color: red;
	font-weight: 400;
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

.table_Bt {
	margin-left: 350px;
	height: 40px;
	width: 300px;
	margin-top: 20px;
	background-color: #555555;
	border: 1px solid #555555;
	color: white;
}
}
</style>

<!-- <link rel="stylesheet" href="/safty_mvc2/safety/css/myPage_info.css" />-->
<!-- <link rel="stylesheet" href="/safty_mvc2/safety/css/footer1.css" />  -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="../se2/js/HuskyEZCreator.js"
	charset="utf-8"></script>
<script type="text/javascript">
	
</script>
</head>
<body>
	<jsp:include page="/safety/etc/dona.jsp"></jsp:include>
	<div class="m">
		<jsp:include page="/safety/etc/sf_nav.jsp"></jsp:include>


		<div class="main">

			<div class="customer"></div>

			<div class="boardBack">
				<div>
					<jsp:include page="/safety/ServiceCenter/backBoard_left.jsp"></jsp:include>
					<div class="boardBack_right">
						<div class="right_inner">
							<jsp:include page="/safety/ServiceCenter/backBoard_right.jsp"></jsp:include>

							<form action="myPage2.do" method="post">
								<input type="hidden" name="bno" value="no_value" />

								<table class="inquiry_Table">

									
									
									<tr>
										<th><span>아이디</span></th>
										<td><span>${authUser.id}</span></td>

									</tr>
									<tr>
										<th><span>성명</span></th>
										<td><span>${authUser.name}</span></td>

									</tr>


									<tr class="onetr">
										<th><span>회원 종류</span></th>
										<td><c:choose>
												<c:when test="${authUser.group == '1'}">
													<span>일반 회원</span>
												</c:when>
												<c:when test="${authUser.group == '2'}">
													<span>기업 회원</span>
												</c:when>
												<c:when test="${authUser.group == '3'}">
													<span>단체 회원</span>
												</c:when>

											</c:choose></td>

									</tr>
									<tr class="onetr">
										<th><span>휴대폰 번호</span></th>
										<td><span>${authUser.tel}</span></td>


									</tr>


									<tr>
										<th><span>이메일</span></th>
										<td><span>${authUser.email}</span></td>
							
									</tr>
								</table>

								<div class="table_button">


								</div>
							</form>
						</div>
					</div>


				</div>
			</div>
		</div>


	</div>
	<jsp:include page="../etc/project_footer.jsp"></jsp:include>

</body>
</html>