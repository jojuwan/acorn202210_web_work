<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//session scope 에 id 라는 키값으로 저장된 값이 있는지 읽어와 본다. (없으면 null)
	String id=(String)session.getAttribute("id");
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/index.jsp</title>
</head>
<body>
	<a href="board/list.jsp">게시판</a>
	<div class="container">
		<%if(id != null){ %>
			<p>
				<a href="${pageContext.request.contextPath }/users/private/info.jsp"><%=id %></a> 님 로그인중...
				<a href="${pageContext.request.contextPath }/users/private/info.jsp">로그아웃</a>				
			</p>
		<%}else{ %>
			<a href="${pageContext.request.contextPath }/users/loginform.jsp">로그인</a>
		<%} %>
		<h1>인덱스 페이지 입니다.</h1>
		<ul>
			<li><a href="${pageContext.request.contextPath }/users/signup_form.jsp">회원가입</a></li>
		</ul>
	</div>
</body>
</html>