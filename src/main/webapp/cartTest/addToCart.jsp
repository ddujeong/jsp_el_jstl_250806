<%@page import="java.util.List"%>
<%@page import="com.ddu.dto.ProductDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	String color = request.getParameter("color");
	String quantity = request.getParameter("quantity");
	//int quantity = Integer.parseInt(request.getParameter("quantity"));
	// Dto에 int로 선언했을 경우 바꿔주는 법

	List<ProductDto> cart = (List<ProductDto>)session.getAttribute("cart");
		
		if(cart == null){
			cart = new ArrayList<>();	
		}
		cart.add(new ProductDto(product,color,quantity));
		
		request.setAttribute("product", new ProductDto(product,color,quantity) );
		session.setAttribute("cart", cart);
	%>
	<h2>장바구니에 <%= product %>이(가) <%= quantity %>개 추가 되었습니다.</h2>
	<%-- <h2>장바구니에 ${product.product }이(가) ${product.quantity }개 추가 되었습니다.</h2> --%>
	<a href="productList.jsp">상품 더 담기</a><br><br>
	<a href="viewCart.jsp">장바구니 보기</a>
</body>
</html>