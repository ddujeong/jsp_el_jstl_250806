<%@page import="com.ddu.dto.ProductDto"%>
<%@page import="java.util.List"%>
<%@taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 내 장바구니 </title>
<style>
  body {
    font-family: "Noto Sans KR", "Malgun Gothic", "Apple SD Gothic Neo", sans-serif;
    background: #fff;
    padding: 20px;
  }

  table {
    width: 100%;
    border-collapse: collapse;
    font-size: 14px;
    color: #333;
  }

  thead tr {
    background-color: #f0f0f0;
    border-bottom: 2px solid #ddd;
  }

  thead th {
    padding: 10px 15px;
    text-align: left;
    font-weight: 600;
    color: #555;
  }

  tbody tr {
    border-bottom: 1px solid #e1e1e1;
  }

  tbody tr:hover {
    background-color: #f9f9f9;
  }

  tbody td {
    padding: 10px 15px;
    vertical-align: middle;
  }

  tbody td:nth-child(1) {
    width: 5%;
    text-align: center;
    color: #666;
  }

  tbody td:nth-child(2) {
    width: 65%;
  }

  tbody td:nth-child(3) {
    width: 15%;
    color: #777;
    text-align: center;
  }

  tbody td:nth-child(4) {
    width: 15%;
    color: #777;
    text-align: center;
  }

  /* 제목 링크 스타일 */
  tbody td:nth-child(2) a {
    color: #2a78f4;
    text-decoration: none;
  }
  tbody td:nth-child(2) a:hover {
    text-decoration: underline;
  }
</style>
</head>
<body>

	<%
	List<ProductDto> cart = (List<ProductDto>)session.getAttribute("cart");
	
	request.setAttribute("cart", cart);
	%>
		<h2>장바구니 목록</h2>
		<hr>
		
		<c:choose>
		<c:when test="${empty sessionScope.cart}">
		<!-- ${empty sessionScope.cart}  == ${cart == null}과 같은 말 -->
		<h2>장바구니가 비었습니다.</h2>
		<a href="productList.jsp">담으러 가기</a>
		</c:when>
		<c:otherwise>
	
		<table >
			<thead>
			<tr>
				<th>NO.</th>
				<th>상품 종류</th>
				<th>색깔</th>
				<th>수량</th>
			</tr>
			</thead>
			<c:forEach var="productDto" items="${cart}" varStatus="status">
				<!-- var 는 임시변수 // 
				 ${cart} == ${sessionScope.cart}와 같음 => request.setAttribute("cart", cart); 선언 안해도됨 -->
				<tbody>
				<tr>
					<td>${status.count}</td>
					<!-- status.count => 1부터 1씩 올라감 / status.index => 0부터 1씩 올라감 -->
					<!-- 또는 count 변수 선언 해서 count = count +1 사용 -->
					<td>${productDto.productType }</td>
					<td>${productDto.productColor }</td>
					<td>${productDto.productQuantity }</td>
				</tr>
				</tbody>
			</c:forEach>
		</table>
		<a href="removeCart.jsp">장바구니 비우기</a><br><br>
		<a href="productList.jsp">더 담으러 가기</a>
		</c:otherwise>
		</c:choose>	
		
		
</body>
</html>