<%@page import="java.util.ArrayList"%>
<%@page import="com.ddu.dto.BoardDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="jakarta.tags.core" %>
<jsp:useBean id="list" class="com.ddu.dto.BoardDto"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시판</title>
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
	<!-- 게시판 글 목록 -->
	<% 
		// 게시판 더미(dummy) 데이터 만들기
		
		List<BoardDto> boarList = new ArrayList<>();
		// 게시글(BoardDto)를 여러개 담을 ArrayList 준비(선언)
		
		boarList.add(new BoardDto(1,"안녕하세요. 첫 글입니다.", "이순신", "20250801"));
		boarList.add(new BoardDto(2,"반갑습니다", "김유신", "20250803"));
		boarList.add(new BoardDto(3,"오늘은 비가 오네요", "강감찬", "20250804"));
		boarList.add(new BoardDto(4,"모두들 안녕하세요.", "홍길동", "20250805"));
		boarList.add(new BoardDto(5,"무더운 여름 잘 보내고 계신가요.", "이순신", "20250806"));
		
		request.setAttribute("boardList", boarList);

	%>
		<h2>자유게시판 목록</h2>
		<hr>
		<table >
			<thead>
			<tr>
				<th>NO.</th>
				<th>제목</th>
				<th>글쓴이</th>
				<th>날짜</th>
			</tr>
			</thead>
			<c:forEach var="boardDto" items="${boardList }">
				<tbody>
				<tr>
					<td>${boardDto.bnum }</td>
					<td> <a href="#">${boardDto.btitle }</a></td>
					<td>${boardDto.bwriter }</td>
					<td>${boardDto.bdate }</td>
				
				</tr>
				</tbody>
			</c:forEach>		
		</table>
</body>
</html>