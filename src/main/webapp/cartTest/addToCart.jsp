<%@page import="java.util.List"%>
<%@page import="com.ddu.dto.ProductDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="list" class="com.ddu.dto.ProductDto"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 추가</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	String product = request.getParameter("product");
	String quantity = request.getParameter("quantity");
	String color = request.getParameter("color");
	
		List<ProductDto> cart = (List<ProductDto>)session.getAttribute("cart");
		
		if(cart == null){
			cart = new ArrayList<>();	
		}
		cart.add(new ProductDto(product,color,quantity));
		
		session.setAttribute("cart", cart);
		
		request.setAttribute("product", product);
		request.setAttribute("quantity",quantity);
	%>
	<h2>장바구니에 <%= product %>이(가) <%= quantity %>개 추가 되었습니다.</h2>
	<a href="productList.jsp">상품 더 담기</a><br><br>
	<a href="viewCart.jsp">장바구니 보기</a>
</body>
</html>