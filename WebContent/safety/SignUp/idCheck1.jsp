<%@page import="dao.Join1_DAO"%>
<%@page import="dao.Join2_DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>중복체크</title>
<style type="text/css">
	.img1{
	margin-top: -30px;
	width: 540px;
	height: 300px;

	}

	#btn1 {
    position : absolute;
    padding: 0 60px;
    height: 55px;
    top: 200px;

	right: 200px;
	 line-height: 55px;
    font-size: 1.04em;
    font-weight: 700;
    color: #fff;
    letter-spacing: -0.04em;
    background: #3E66AE;
    border: 0;
    }
</style>

</head>
<body >
<form action="idCheck1.do">
<c:if test="${errors.duplicated }">

<img src="../image/yes.png" alt="" class="img1"/>
<!-- 아이디가 이미 존재할때 이미지 -->
</c:if>

<c:if test="${!errors.duplicated }">
<img src="../image/no.png" alt="" class="img1"/>
<!-- 아이디가 존재하지 않을 때 이미지 -->
</c:if>
<input  id="btn1" type="button" value="확인"  onclick="window.close() "/>
</form>
</body>
</html>