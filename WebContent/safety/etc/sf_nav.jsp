<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<style>

* {
	margin: 0;
	padding: 0;
	font-family: "나눔스퀘어";
	list-style: none;
	text-decoration: none;
}

.navi_menu_div{
	background-color: white;
	display: block;
	border: 1px solid #cbcbca;
	width: 1920px;
	height: 80px;
	position: fixed;
	z-index: 1000;


}
.navi_logo_div {
	float: left;
}

.navi_menu_icon_div {
	float: left;


}

.list_ul {
	margin-left: 200px;
}

.list_li {
	display: block;
	margin-left: 130px;
	float: left;
	list-style-type: none;
	text-align: center;
	text-decoration: none;
	color: black;
	font-size: 20px;
	margin-top: 18px;
	font-weight: 600;
	height: 52px;
	width: 80px;
}

.list_div {
	float: left;
	display: block;
	margin-top: 10px;
}



.list_hide_div {
	background-color: #f6f6f6;
	box-shadow: black;
	height: 200px;
	width: 1920px;
	margin-top: 0.5px;
    font-size: 14px;
   	top:81px;
    position: fixed;
    z-index: 1000;
}



.support_btn_div {
	float: right;
	width: 10%;
	height: 80px;
	background-color: #4364ae;
	text-align: center;
}

#navi_logo{
	margin-left: 100px;
	height: 70px;
	display: block;
}

#navi_menu_icon {
	margin-left: 310px;
	margin-top: -5px;
	float: left;
	height: 80px;

}

#support_btn {
	margin-top: 25px;
	color: white;
	background-color: #4364ae;
	border: 0;
	font-size: 20px;
	margin-left: -3px;

}

.list_hide1 {
	float: left;
	margin-top: 20px;
	margin-left:536px;
	text-align: center;

	width: 180px;
	height: 100px;
}

.list_hide2 {
	float: left;
	margin-top: 20px;
	text-align: center;
	margin-left:35px;
	width: 180px;
	height: 100px;
}

.list_hide3 {
	float: left;
	margin-top: 20px;
	text-align: center;
	margin-left:20px;
	width: 200px;
	height: 100px;
}

.list_hide4 {
	float: left;
	margin-top: 20px;
	text-align: center;
	margin-left:10px;
	width: 200px;
	height: 100px;
}
.hide_li{
	margin-bottom: 20px;

}
.navi_a{
	font-size: 20px;

	color: black;
}
.navi_hide_a{
	color: black;
}
#loginOK_c{
	margin-top:30px;
	 margin-left:40px; 
	display: block;
	font-size: 16px;
	float:left;
	color: #4063ae;
}
.plusbtn{

	margin-left:10px;
	margin-top:24px;
	float:left;
}
#mypagebtn{
	width: 75px;
	margin-left:2px;
	height: 30px;
	background-color: #4063ae;
	color: white;
	border-style: none;

}
.whgroup{
	color: red;
	font-weight: 1000;
}
#logoutbtn{
	width: 75px;
	height: 30px;
	background-color: #4063ae;
	color: white;
	border-style: none;

}
</style>
<script type="text/javascript">
$(function() {
	$('.list_hide_div').hide();

	$('.list_li').mouseover(function(){
		$(this).css('border-bottom','2px solid #72cbf3');
	});

	$('.list_li').mouseout(function(){
		$(this).css('border-bottom','0px');
	});

	$('.navi_menu_div').mouseover(function(){
		$('.list_hide_div').show();
	});

	$('.list_hide_div').mouseover(function(){
		$('.list_hide_div').show();
	});

	$('.list_hide_div').mouseout(function(){
		$('.list_hide_div').hide();
	});

	$('#logoutbtn').click(function(){

		 location="/safty_mvc2/safety/login/logout.jsp";

	});

	$('#mypagebtn').click(function(){

		location="/safty_mvc2/safety/myPage/myPage_Basic.jsp";
	});

	$('#support_btn').click(function(){

		 location="/safty_mvc2/safety/support/done_main.jsp";
	});



});


</script>
<div class="navi_menu_div">
            <div class="navi_logo_div"><!-- 로고 부분  -->
                <a href="/safty_mvc2/safety/mainpage/main.jsp" class="link"><img src="/safty_mvc2/safety/image/sf_logo.png" alt="safetyLogo" id="navi_logo"/></a>
            </div>

            <div class="list_div"> <!-- 리스트 부분 -->
                <ul class="list_ul">
                    <li class="list_li">
                        <a href="/safty_mvc2/safety/Introduce/safety_introduce.jsp" class="navi_a">소개</a>
                    </li>
                    <li class="list_li">
                        <a href="/safty_mvc2/safety/support/done_main.jsp" class="navi_a">후원
                        </a>
                    </li>
                    <li class="list_li">
                        <a href="/safty_mvc2/safety/activity/supmain.jsp" class="navi_a">활동</a>
                    </li>
                    <li class="list_li">
                        <a href="/safty_mvc2/safety/ServiceCenter/customer_center.jsp" class="navi_a">고객센터</a>
                    </li>
                </ul>
           	 </div><!-- 리스트 end -->

            <div class="navi_menu_icon_div"><!-- 아이콘 이미지 -->

        	
			<c:if test="${empty authUser }">

	       
                <a href="/safty_mvc2/login.do"><img src="/safty_mvc2/safety/image/sf_icon_login.png" alt="" id="navi_menu_icon"/></a>
                </c:if>
                <c:if test="${!empty authUser }">
                <c:choose>
                <c:when test="${authUser.group == '1'}">				
                <a href="/safty_mvc2/safety/myPage/myPage_Basic.jsp" id="loginOK_c" ><span class="whgroup">[일반회원]</span>&ensp;${authUser.name} 님 환영합니다.</a>
                </c:when>
                <c:when test="${authUser.group == '2'}">				
                <a href="/safty_mvc2/safety/myPage/myPage_Basic.jsp" id="loginOK_c" ><span class="whgroup">[기업회원]</span>&ensp;${authUser.name} 님 환영합니다.</a>
                </c:when>
                <c:when test="${authUser.group == '3'}">				
                <a href="/safty_mvc2/safety/myPage/myPage_Basic.jsp" id="loginOK_c" ><span class="whgroup">[단체회원]</span>&ensp;${authUser.name} 님 환영합니다.</a>
                </c:when>
          
                </c:choose>
                <div class="plusbtn"> <!-- 로그인이 되면 바뀔곳 -->
					<input type="button" value="logout" id="logoutbtn"/>
					<input type="button" value="mypage" id="mypagebtn"/>
				</div>
				</c:if>
 				
            </div>

            <div class="support_btn_div"> <!-- 후원하기 버튼 -->
               <input type="button" value="후원하기" id="support_btn"/>
            </div>

</div><!-- menu div end  -->

<!-- ------------------------------------------------------------------------------------------------------------------------------------------------------------ -->

<div class="list_hide_div">
            <div class="list_hide1">
                <ul class="hide_ul1">
                    <!-- 소개 세부 -->
                    <li class="hide_li">
                        <a href="/safty_mvc2/safety//Introduce/safety_history.jsp" class="navi_hide_a">세이프티 스토리</a>
                    </li>
                    <li class="hide_li">
                        <a href="/safty_mvc2/safety/Introduce/safety_ci.jsp" class="navi_hide_a">ci소개</a>
                    </li>
                    <li class="hide_li">
                        <a href="/safty_mvc2/safety/Introduce/siteMap.jsp" class="navi_hide_a">사이트맵</a>
                    </li>
                    <li class="hide_li">
                        <a href="/safty_mvc2/safety/Introduce/map.jsp" class="navi_hide_a">위치정보</a>
                    </li>

                </ul>
            </div>

            <div class="list_hide2">

                <ul class="hide_ul2">
                    <!-- 소개 세부 -->
                    <li class="hide_li">
                        <a href="/safty_mvc2/safety/support/organization_mod.jsp" class="navi_hide_a">단체후원</a>
                    </li>
                    <li class="hide_li">
                        <a href="/safty_mvc2/safety/support/NewFile.jsp" class="navi_hide_a">개인후원</a>
                    </li>
                    <li class="hide_li">
                        <a href="/safty_mvc2/safety/support/corporation_mod.jsp" class="navi_hide_a">법인체후원</a>
                    </li>
                    <li class="hide_li">
                        <a href="/safty_mvc2/safety/support/test4.jsp" class="navi_hide_a">후원금현황</a>
                    </li>

                </ul>
            </div>
            <div class="list_hide3">
                <ul class="hide_ul3">
                    <!-- 소개 세부 -->
                    <li class="hide_li">
                        <a href="/safty_mvc2/safety/activity/campaign.jsp" class="navi_hide_a">캠페인</a>
                    </li>
                    <li class="hide_li">
                        <a href="/safty_mvc2/safety/support/caminfor.jsp" class="navi_hide_a">후원자가이드</a> <!-- 미정  -->
                    </li>
                    <li class="hide_li">
                        <a href="/safty_mvc2/safety/activity/safety_gift.jsp" class="navi_hide_a">후원자선물가게</a><!-- 미정  -->
                    </li>

                </ul>
            </div>
            <div  class="list_hide4">
                <ul class="hide_ul4">
                    <!-- 소개 세부 -->
                    <li class="hide_li">
                        <a href="/safty_mvc2/safety/ServiceCenter/question_answer.jsp" class="navi_hide_a">Q&A</a>
                    </li>
                    <li class="hide_li">
                        <a href="/safty_mvc2/safety/ServiceCenter/help.jsp?fno=personal_infor" class="navi_hide_a">개인정보처리방침</a>
                    </li>
                    <li class="hide_li">
                        <a href="/safty_mvc2/safety/ServiceCenter/help.jsp?fno=access" class="navi_hide_a">이용약관</a>
                    </li>
                    <li class="hide_li">
                    	<a href="/safty_mvc2/safety/ServiceCenter/help.jsp?fno=personal_info_collectUse" class="navi_hide_a">개인정보 수집 및 이용</a>
                    </li>


                </ul>
            </div>
</div>
