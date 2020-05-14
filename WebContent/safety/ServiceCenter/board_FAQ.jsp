<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자주묻는질문 등록하기</title>
<!-- boardFAQ.jsp -->
<!-- <link rel="stylesheet" href="../css/main.css" /> -->
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
    display:inline-block;
}
.imgBt {
	display:inline-block;
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
	width: 150px;
	height: 600px;
	float: left;
	padding-top: 20px;
	
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
	overflow:auto;
	z-index: 100;
}



	.boardBack_right {
		background-color: white;
		width: 1050px;
		float: left;
		padding: 40px;
		box-sizing: border-box;
		box-shadow: 0px 5px 10px 0px rgba(0,0,0,.15);
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
	
	
	.in_nav li a{
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
	
	.in_nav_span.six{
		background-color: white;
		border-right: 1px solid white;
		color: red;
		box-shadow: -5px 5px 10px -5px rgba(0,0,0,.15);
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
	.info_faq img{
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
		outline:none;
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
.bb_div a{
	color: black;
}

	
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="../se2/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript">
	$(function() {

		$('.nav').mouseover(function() {

			$(this).css("border-bottom", "2px solid red");

		});

		$('.nav').mouseout(function() {

			$(this).css("border-bottom", "none");

		});

		$('.ub').mouseover(function() {

			$(this).css("border", "1px solid red");

		});

		$('.ub').mouseout(function() {

			$(this).css("border", "1px solid #BDBDBD");

		});
		$("#domain").val($("#email_sel option:selected").val());
		$("#email_sel").change(function(){
			$("#domain").val($("#email_sel option:selected").val());
		});

	});

	function submitForm(obj) {
		var flag = confirm("등록하시겠습니까?");

		if(flag) {

			obj.form.submit();

		}


	}



</script>
</head>
<body>
	<jsp:include page="../etc/dona.jsp"></jsp:include>
	
	<div class="m">
		<jsp:include page="../etc/sf_nav.jsp"></jsp:include>


		<div class="main">
			<div class="customer">
			</div>
			<div class="boardBack">
				<div class="boardBack_left">
				</div>

				<div class="boardBack_right">
					<h1>자주묻는 질문</h1>
						<jsp:include page="backBoard_right.jsp"></jsp:include>

						<div class="right_inner">
							<form action="board_FAQ_write.jsp" name="frm">
								<div id="container">
									<table class="inquiry_Table">
										<tr>
											<th><span>문의분야</span></th>
											<td>
												<select id="inquiry_area" name="inquiry_area">
													<option value="전체">전체</option>
													<option value="후원관련">후원관련</option>
													<option value="결제관련">결제관련</option>
													<option value="기부금영수증">기부금영수증</option>
													<option value="기타">기타</option>
												</select>
											</td>
										</tr>
										<tr>
											<th><span>세부분야</span></th>
											<td>
												<select id="inquiry_area" name="subinquiry_area">
													<option value="전체">전체</option>
													<option value="후원신청">후원신청</option>
													<option value="후원금">후원금</option>
													<option value="지원금">지원금</option>
													<option value="후원종료">후원종료</option>
													<option value="편지">편지</option>
													<option value="봉사">봉사</option>
													<option value="기타">기타</option>
												</select>
											</td>
										</tr>
										<tr>
											<th><span>제목</span></th>
											<td><input type="text" name="title" id="title" class="table_input" /></td>
										</tr>
										<tr>
											<th><span>내용</span></th>
											<td class="ta"><textarea name="ct" id="ct" cols="60" rows="20"></textarea></td>
										</tr>
										<!-- <tr>
											<th><span>답변</span></th>
											<td class="ta">
												<div class="table_answer">
													<textarea name="answer" id="ct" cols="60" rows="20"></textarea>
												</div>
											</td>
										</tr> -->
									</table>
									<div class="table_button">
										<input type="button" value="취소" class="table_Bt first" onclick="location.href='question_answer.jsp'" />
										<input type="button" value="등록" onclick="submitForm(this)" class="table_Bt second" />
									</div>
								</div>
							</form>
						</div>
						</div>

					</div>
				</div>
			</div>

			<jsp:include page="../etc/project_footer.jsp"></jsp:include>

</body>
</html>