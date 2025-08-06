<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fn" uri="jakarta.tags.functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL 연습 1</title>
</head>
<body>
	<%
	String str = "Korea";
	request.setAttribute("kor", str);
	%>
	
	<h1>내가 태어난 국가는 <%= str %> 입니다.</h1>
	<h1>내가 태어난 국가는 ${kor} 입니다.</h1>
	
	<c:set var="score" value="100"/>
	<!--  int score = 100; (변수 선언 c:set) -->
	나의 점수 ${score }
	
</body>
</html>