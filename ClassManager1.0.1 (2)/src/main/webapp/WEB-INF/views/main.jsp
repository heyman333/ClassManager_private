<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<% String cp = request.getContextPath(); %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>

<link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css"
	rel="stylesheet" />
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>

</head>
<c:if test="${isStudent eq true }">
<jsp:include page="header2.jsp"></jsp:include>
</c:if>
<c:if test="${isStudent eq false }">
<jsp:include page="header.jsp"></jsp:include>
</c:if>
<body >
	<div id="body" >
		<div id="content">
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!--페이지-->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
				</ol>
				<!--페이지-->

				<div class="carousel-inner">
					<!--슬라이드1-->
					<div class="item active">
						<img src="<%=cp %>/resources/assets/img/bg11.jpeg"
							style="width: 100%; height: 600px;" alt="First slide">
						<div class="container">
							<div class="carousel-caption">
								<h1>성적관리</h1>
								<p>그래프로 성적의 변화를 학인하세요</p>
							</div>
						</div>
					</div>
					<!--슬라이드1-->

					<!--슬라이드2-->
					<div class="item">
						<img src="<%=cp %>/resources/assets/img/pexels-photo-185764.jpeg"
							style="width: 100%; height: 600px;" data-src="" alt="Second slide">
						<div class="container">
							<div class="carousel-caption">
								<h1>커뮤니티</h1>
								<p>학급게시판을 통해 언제나 함께</p>
							</div>
						</div>
					</div>
					<!--슬라이드2-->

					<!--슬라이드3-->
					<div class="item">
						<img src="<%=cp %>/resources/assets/img/apple-iphone-books-desk.jpg" 
						style="width: 100%; height: 600px;" data-src="" alt="Second slide">
						<div class="container">
							<div class="carousel-caption">
								<h1>선생님을 위한 시스템</h1>
								<p>당신의 반을 완벽하게 만드세요</p>
							</div>
						</div>
					</div>
					<!--슬라이드3-->
				</div>

				<!--이전, 다음 버튼-->
				<a class="left carousel-control" href="#myCarousel"
					data-slide="prev"><span
					class="glyphicon glyphicon-chevron-left"></span></a> <a
					class="right carousel-control" href="#myCarousel" data-slide="next"><span
					class="glyphicon glyphicon-chevron-right"></span></a>
			</div>
		</div>
	</div>
</body>

<div id="foot">
	<jsp:include page="footer.jsp"></jsp:include>
</div>

</html>