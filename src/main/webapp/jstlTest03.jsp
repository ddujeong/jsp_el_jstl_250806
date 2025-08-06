<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL 테스트 3</title>
</head>
<body>	
	<!-- java for 문 -->
	<%
		for(int i =0; i<10; i++){
			out.println(i + "<br>");
		}
	%>
	<hr>
	
	<%
		for(int i =0; i<10; i= i +2){
			out.println(i + "<br>");
		}
	%>
	<hr>
	
	<%
		for(int i =1; i<= 5; i++){
	%>
		<h2>안녕하세요!</h2>
	<% 	
		}
	%>
	<hr>
	
	<%
		String[] strs = {"이순신", "김유신", "강감찬"};
		
		request.setAttribute("strs", strs);
	
		for(String str : strs){
			out.println(str + "<br>");
		}
	%>
	<hr>
	
	<!-- JSTL for 문 -->
	<c:forEach var="i" begin="0" end="9" >
		${ i }<br>
	</c:forEach>
	<hr>
	
	<c:forEach var="i" begin="0" end="9" step="2" >
		${ i }<br>
	</c:forEach>
	<hr>
	
	<c:forEach var="i" begin="1" end="5" >
		<h2>안녕하세요!</h2>
	</c:forEach>
	<hr>
	
	<ul>
		<c:forEach var="str" items="${strs}"  >
			<li><h2>${str }</h2></li>
		</c:forEach>
	</ul>
	
</body>
</html>