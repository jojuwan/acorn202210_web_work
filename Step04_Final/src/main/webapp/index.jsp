<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/index.jsp</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</head>
<body>
	<jsp:include page="/WEB-INF/include/navbar.jsp"/>
	<div class="container">
		<%--
			1. sessionScope.id != null
			2. id != null
			3. id ne null
			4. not empty id
			
			el 에서 1,2,3,4 는 모두 같은 결과이다.
		 --%>
		<c:choose>
			<c:when test="${not empty id}">
				<p>
					<a href="${pageContext.request.contextPath }/users/private/info.jsp">${id }</a> 님 로그인중...
					<a href="${pageContext.request.contextPath }/users/logout.jsp">로그아웃</a>
				</p>
			</c:when>
			<c:otherwise>
				<a href="${pageContext.request.contextPath }/users/loginform.jsp">로그인</a>
			</c:otherwise>
		</c:choose>

		<h1>인덱스 페이지 입니다.</h1>
		<ul>
			<li><a href="${pageContext.request.contextPath }/users/signup_form.jsp">회원가입</a></li>
			<li><a href="${pageContext.request.contextPath }/private/study.jsp">회원전용공간(공부)</a></li>
			<li><a href="${pageContext.request.contextPath }/private/game.jsp">회원전용공간(게임)</a></li>
			<li><a href="file/list.jsp">자료실</a></li>
			<li><a href="cafe/list.jsp">글목록보기</a></li>
			<li><a href="my_app/index.html">React 테스트</a></li>
			<li><a href="users/signup_form4.jsp">React 테스트2</a></li>
		</ul>
	</div>
</body>
</html>