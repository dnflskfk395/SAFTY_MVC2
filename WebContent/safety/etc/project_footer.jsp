<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- project_footer.jsp -->
<style>
.footer {
	width: 100%;
	height: 190px;
	background-color: #EAEAEA;
	position:absolute;
    bottom: none;
    box-sizing: border-box;
    margin-top: 50px;


}

.Finner {
	box-sizing: border-box;
	padding: 20px 0;
	margin-left: 360px;
}

.footer_top input {
	margin-right: 20px;
}

.footer_top {
	padding-bottom : 20px;
}

.fb {
	border-right: 1px solid #BDBDBD;
	padding-right: 20px;
	padding-left: 20px;
	text-align: center;
	display: inline;
	float: left;
}

	.footer_bottom ul{
	padding-bottom: 10px;
	}

/* fb : footer list a 태그 */
.fb:first-child {
	padding-left: 0;
}

.fb:last-child {
	border-right: none;
}

.fb a {
	text-decoration: none;
	color: black;
}

.fb_mi {
	border-right: 1px solid #BDBDBD;
	padding-right: 20px;
	padding-left: 20px;
	text-align: center;
	display: inline;
	float: left;
	font-size: 12px;
	color: #4C4C4C;
}

.fb_mi:first-child {
	padding-left: 0;
}

.fb_mi:last-child {
	border-right: none;
}

.footer_bottom p {
	font-size: 12px;
	color: #A6A6A6;
}
/* 전체를 감싸는 div */
.m {
	width: 1920px;
	position: relative;
	min-height: 100%;
}

body {
		margin: 0;
	}
</style>
<div class="footer">
		<div class="Finner">
			<div class="footer_top">
				<input type="image" src="/safty_mvc2/safety/image/facebook.png" alt="페이스북" onclick="location.href='http://www.facebook.com'" />
				<input type="image" src="/safty_mvc2/safety/image/instagram.png" alt="인스타그램" onclick="location.href='http://www.instagram.com'" />
				<input type="image" src="/safty_mvc2/safety/image/twitter.png" alt="트위터" onclick="location.href='http://www.twitter.com'" />
				<input type="image" src="/safty_mvc2/safety/image/youtube.png" alt="유튜브" onclick="location.href='http://www.youtube.com'" />
			</div>

			<div class="footer_bottom">
				<ul>
					<li class="fb"><a href="../ServiceCenter/help.jsp">이용약관</a></li>
					<li class="fb"><a href="../ServiceCenter/help.js">개인정보처리방침</a></li>
					<li class="fb"><a href="">E-mail</a></li>
					<li class="fb"><a href="../Introduce/map.jsp">오시는 길</a></li>
					<li class="fb"><a href="../ServiceCenter/question_answer.jsp">FAQ</a></li>
					<li class="fb"><a href="../Introduce/siteMap.jsp">사이트맵</a></li>
				</ul>
				<br />

				<ul>
					<li class="fb_mi">서울특별시 구로구 구로동 시흥대로163길 33 주호타워 2층,3층</li>
					<li class="fb_mi">대표전화 010-9953-5444</li>
					<li class="fb_mi">팩스 010-9953-5444</li>
					<li class="fb_mi">대표자 신한</li>
					<li class="fb_mi">사업자 번호 123-45-67890</li>
				</ul>
				<br />
				<p>Copyright © Save the Children Korea All Rights Reserved.</p>
			</div>
		</div>

	</div>