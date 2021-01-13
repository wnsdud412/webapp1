<%--
[page 지시자]
language : .jsp 파일에서 사용되는 프로그래밍 언어(생략가능)
pageEncoding="UTF-8" .jsp 파일로 저장할 때 사용되는 문자셋
contentType= .jsp가 실행후 만들어지는 결과물의 종류
	MIME 타입을 지정
		text/html:문자 내용으로 html 태그로 구성된건
		application/json:문자내용으로 json표기로 구성된것
		image/jpeg: 이미지 내용으로 jpeg으로 인코딩 된것
		image/png: 이미지 내용으로 png으로 인코딩 된것
	문자셋 지정
		브라우저로 전달될때 사용되는 문자셋(문자 내용은 반드시 기술을 해야함)
 --%>

<%-- import속성 --%>
<%@ page import="java.util.*, java.text.*" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/main.css">
	</head>
	
	<body>
		<div class="wrap">
			<%-- 공통 헤더 --%>
			<jsp:include page="/WEB-INF/views/include/header.jsp"/><!-- 실행르 하는것 -->
			<%-- <% include file="WEB_INF/views/include/header.jsp" %> --%><%-- 붙혀넣기를 하는것 --%>
			
			<%-- 내용 --%>
			<div class="mainCenter">
				<%-- 공통메뉴 --%>
				<jsp:include page="/WEB-INF/views/include/menu.jsp"/>
				
				<div class="content">
					<h5>스크립트릿/표현식</h5>
					<div class="sector">			
						<div>
							<%-- Scriptlet(스크립트릿) --%>
							<%for(int i=1; i<=6; i++) {%>
							<h<%=i%>>Hello JSP</h<%=i%>>
							<%-- 이게바로 jsp 주석 --%>
							<!-- 렌더링 주석 = 보이지 말라 -->
							<%} %>
						</div>
					</div>
					<div class="sector">
						<h5>스크립트릿/표현식</h5>
						<div>
							<%Date now = new Date();
							SimpleDateFormat sdf = new SimpleDateFormat("yyy.MM.dd");
							String strNow = sdf.format(now);
							 %>
		 
							 <%-- Expressions(표현식) --%>
							 오늘 날짜: <%=strNow%>
						</div>
					</div>
				</div>	
			</div>

</body>
</html>