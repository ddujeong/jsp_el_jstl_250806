<%@page import="com.ddu.dto.ProductDto"%>
<%@page import="java.util.List"%>
<%@taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 내 장바구니</title>
</head>
<body>
	<h2>내 장바구니 상품 목록</h2>
	<hr>
	<%
	List<ProductDto> cart = (List<ProductDto>)session.getAttribute("cart");
	
	request.setAttribute("cart", cart);

	
	%>
		<c:if test="${cart == null}">
		<h2>장바구니가 비었습니다.</h2>
		<a href="productList.jsp">담으러 가기</a>
		</c:if>
	
	<h2>장바구니 목록</h2>
		<hr>
		<table border="1" cellspacing = "0" cellpadding = "0">
			<thead>
			<tr>
				<th>NO.</th>
				<th>상품 종류</th>
				<th>색깔</th>
				<th>수량</th>
			</tr>
			</thead>
			<c:set var ="count" value="1"/>
			<c:forEach var="productDto" items="${cart}" varStatus="status">
			
				<tbody>
				<tr>
					<td>${status.count}</td>
					<td>${productDto.productType }</td>
					<td>${productDto.productColor }</td>
					<td>${productDto.productQuantity }</td>
				
				</tr>
				</tbody>
			</c:forEach>		
		</table>
		<a href="removeCart.jsp">장바구니 비우기</a><br><br>
		
</body>
</html>