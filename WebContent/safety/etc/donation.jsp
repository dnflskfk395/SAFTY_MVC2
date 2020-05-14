<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>후원하기</title>
<!-- donation.jsp -->
<style>

* {
	font-family: 'NanumSquare', "Apple SD Gothic Neo", Helvetica, sans-serif, Arial;
}

#donaBtn {
      position: fixed;
      bottom: 50px;
      right: 50px;
      opacity: 0.7;
      width: 180px;
      height: 100px;
    }


#logo {
	height: 70px;
	width: 150px;
	margin-left: 10px;
	float: left;
	margin-right: 300px;
}

.customer {
		background-size: 100% 100%;
		height: 170px;
		padding-top: 100px;
		text-align: center;
		font-size: 30px;
	}

.navi_li {
	margin: 20px 0 0 0;
	display: inline;
	float: left;
}

.nav {
	padding: 60px 60px 23px 60px;
	text-decoration: none;
	font-size: 20px;
	color: black;
}

#cctxt {
	width: 490px;
	height: 30px;
	padding: 10px;
}

#selbt {
	margin-top: 7px;
	width: 40px;
	height: 40px;
	background-color: white;
	margin-left: -52px;
	size: 50% 50%;
	position: absolute;
}

.bb {
	text-decoration: none;
	font-size: 20px;
	color: black;
}

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

#hm_ul2 {
	margin-left: 60px;
}

#hm_ul3 {
	margin-left: 60px;
}

#hm_ul4 {
	margin-left: 20px;
	padding-right: 30px;
}

.under_bar div {
	border: 1px solid #BDBDBD;
	padding: 20px;
	margin-top: 50px;
	margin-right: 40px;
	width: 25%;
	height: 60px;
	float: left;
}

.under_bar div img {
	float: left;
	padding-right: 20px;
}

.under_bar div p {
	font-size: 13px;
}

.under_bar div h3 {
	margin: 0;
}

.under_bar div a img {
	float: right;
	margin-top: -50px;
	margin-right: -30px;
}


body {
	margin : 0;
}
.m {
	width: 1920px;

</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

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

	});
</script>
</head>
<body>
	<input type="image" src="/safty_mvc2/safety/image/dona.jpg" alt="후원하기" id="donaBtn" onclick="location.href='donation.jsp'"/>
	<div class="m">
	<div class="main">
		<jsp:include page="sf_nav.jsp"></jsp:include>

		<div class="customer">
			<h2>466802-04-160113 국민은행<br />후원하세요</h2>
		</div>
		<div class="boardBack">
			<br /> <br /> <br /> <br />
			<div class="under_bar">
				<div class="ub">
					<img src="/safty_mvc2/safety/image/chat.png" alt="chat" />
					<h3>후원가이드</h3>
					<p>후원이 처음이세요?</p>
					<a href=""> <img src="/safty_mvc2/safety/image/next1.png" alt=">" />
					</a>
				</div>
				<div class="ub">
					<img src="/safty_mvc2/safety/image/inquiry.png" alt="inquiry" />
					<h3>1:1문의</h3>
					<p>원하는 답변이 없나요?</p>
					<a href="/safty_mvc2/safety/ServiceCenter/inquiry.jsp"> <img src="/safty_mvc2/safety/image/next1.png" alt=">" />
					</a>
				</div>

				<div class="ub">
					<img src="/safty_mvc2/safety/image/call.png" alt="call" />
					<h3>전화문의</h3>
					<p>010-9953-5444</p>
					<!-- <br />(평일 오전9시30분 ~ 오후 6시 30분) -->
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="project_footer.jsp"></jsp:include>
	</div>


</body>
</html>