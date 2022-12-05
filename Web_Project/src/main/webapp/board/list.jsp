<%@page import="board.BoardVo"%>
<%@page import="board.BoardDao"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	BoardDao dao = new BoardDao();
	List<BoardVo> ls = dao.selectAll();
	pageContext.setAttribute("ls", ls);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board/list.jsp</title>
</head>
<body>
	<h2>게시글 목록</h2>
	<table border="1">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>등록일</th>
			<th>조회수</th>
		</tr>
	<c:forEach var="board" item="${ls}">
		<tr>
			<td>${board.num}</td>
			<td><a href="${pageContext.request.contextPath}/boardDetail.jsp?num=${board.num}">${board.title}</a></td>
			<td>${board.writer}</td>
			<td>${board.regdate}</td>
		</tr>
			<p>${board}</p>
	</c:forEach>
</body>
</html>