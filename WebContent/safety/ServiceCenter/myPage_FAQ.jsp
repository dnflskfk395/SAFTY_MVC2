<%@page import="dao.board_QA_Dao"%>
<%@page import="vo.board_QA_VO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	/* 페이징 처리 */

	// 현재 페이지(currentPage) 얻어오기
	String cp = request.getParameter("cp");
	String cp1 = request.getParameter("cp");
	String sel = request.getParameter("ri_in_sel");

	int currentPage = 0;
	int currentPage1 = 0;

	if (cp != null) {
		currentPage = Integer.parseInt(cp);
	} else {
		currentPage = 1;
	}
	if (cp1 != null) {
		currentPage1 = Integer.parseInt(cp);
	} else {
		currentPage1 = 1;
	}

	board_QA_Dao dao = new board_QA_Dao();

	// 총 게시글 수
	int totalCount = dao.getTotalCount();
	int selCount = dao.getSelCount(sel);

	/* System.out.println(sel);
	System.out.println(selCount); */
	// 한 페이지당 레코드 수 : 5
	int recordByPage = 5;

	// 총 페이지 수
	int totalPage = (totalCount / recordByPage == 0)
			? totalCount / recordByPage
			: totalCount / recordByPage + 1; // 삼항연산자
	int selPage = (selCount / recordByPage == 0) ? selCount / recordByPage : selCount / recordByPage + 1; // 검색을 위한 삼항연산자
	/* System.out.println(selPage); */

	// 현재 페이지 - 레코드 시작번호
	int startNo = (currentPage - 1) * recordByPage + 1;
	int startNo1 = (currentPage1 - 1) * recordByPage + 1;

	// 현재 페이지 - 레코드 끝번호
	int endNo = currentPage * recordByPage;
	int endNo1 = currentPage1 * recordByPage;
	//System.out.println(sel);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 - FAQ</title>
<!-- myPage_FAQ.jsp -->
<style type="text/css">
@charset "UTF-8";

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
	height : 600px;
	 
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

.in_nav_span.six {
	background-color: white;
	border-right: 1px solid white;
	color: red;
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
</style>
<!-- <link rel="stylesheet" href="../css/main.css" /> -->
<!-- <link rel="stylesheet" href="/safty_mvc2/safety/css/myPage_FAQ.css" /> -->
<link rel="stylesheet" href="/safty_mvc2/safety/css/footer1.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="../se2/js/HuskyEZCreator.js"
	charset="utf-8"></script>
<script type="text/javascript">
	$(function() {

		$('.q-row').click(function() {

			// 현재 클릭된 Row(<tr>)
			var tr = $(this);
			var tridx = $('tr').index($(this)) + 1; // 열 인덱스 번호
			var obj = document.getElementById("board");
			var tds = obj.getElementsByTagName("tr");

			if ($(tds[tridx]).css("display") == "none") {
				$(tds[tridx]).show();
			} else {
				$(tds[tridx]).hide();
			}

		});

		/* var obj = document.getElementById("board");
		var tds = obj.getElementsByTagName("tr");
		console.log(obj);
		console.log(tds);
		 */

	});

	function selectData(frm) {
		if (frm.cctxt.value == "") {
			alert("검색 단어를 입력하세요!!");
			frm.cctxt.focus();
			return;
		}
		frm.submit();

	}
</script>
</head>
<body>
	<jsp:include page="../etc/dona.jsp"></jsp:include>
	<div class="m">
		<jsp:include page="../etc/sf_nav.jsp"></jsp:include>


		<div class="main">

			<div class="customer"></div>

			<div class="boardBack">
				<div>
				<jsp:include page="backBoard_left.jsp"></jsp:include>

				<div class="boardBack_right">
					<jsp:include page="backBoard_right.jsp"></jsp:include>

					<div class="bb_div">
						<ul id="bb_ul">
							<a href="myPage_FAQ.jsp" class="bb">
								<li class="bb_li">전체</li>
							</a>
							<a href="myPage_FAQ.jsp?cctxt=후원관련" class="bb">
								<li class="bb_li">후원관련</li>
							</a>
							<a href="myPage_FAQ.jsp?cctxt=결제관련" class="bb">
								<li class="bb_li">결제관련</li>
							</a>
							<a href="myPage_FAQ.jsp?cctxt=기타" class="bb">
								<li class="bb_li">기타</li>
							</a>
							<a href="inquiry.jsp" class="bb">
								<li class="bb_li" id="bb1_li">나의 문의</li>
							</a>
						</ul>
					</div>

					<form action="myPage_FAQ.jsp" name="frm">
						<div class="tt">
							<div class="tx">
								<input type="text" name="cctxt" id="cctxt"
									placeholder="궁금한 점이 있다면 무엇이든 검색해보세요." />
							</div>
							<div class="imgBt">
								<input type="image" src="../image/select.png" alt=""
									name="selbt" id="selbt" onclick="selectData(frm)" />
							</div>
						</div>
					</form>

					<jsp:include page="FAQ_table_mypage.jsp"></jsp:include>
				</div>
			</div>
			</div>
		</div>


	</div>
	<jsp:include page="../etc/project_footer.jsp"></jsp:include>

</body>
</html>