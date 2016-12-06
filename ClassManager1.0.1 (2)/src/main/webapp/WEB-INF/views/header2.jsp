<%@ page language="java" contentType="text/html"
	pageEncoding="UTF-8"%>
<%
	String cp = request.getContextPath();
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<%=cp%>/resources/assets/bootstrap/css/bootstrap_join.min.css" rel="stylesheet">
<title>header</title>
</head>
<body>
	<nav class="navbar navbar-inverse" style="margin-bottom:0px; border-bottom: 2px solid;">
		<div class="container-fluid" style="height:90px;"> 
			<div class="navbar-header" style="padding-top: 10px">
				<button class="navbar-toggle collapsed" type="button"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-2">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="main"></a>
			</div>

			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-2" style="margin-top:10px;">
				<ul class="nav navbar-nav" style="font-size: 20px">

					<li class="dropdown"><a href="view_grade?grade=${grade}&classnum=${classNum}&stdtNum=${stdtNum}">성적관리</a>
					<li class="dropdown"><a href="board_list">게시판</a>
				</ul>

				<ul class="nav navbar-nav navbar-right" style="font-size: 15px;">
					<li><a href="join_modify2">수정</a></li>
					<li><a href="logout">로그아웃</a></li>
				</ul>

				<p class="navbar-text navbar-right">${sname} 학 생 |${grade} - ${classNum} ${stdtNum}번 </p>

			</div>
		</div>
	</nav>
</body>
</html>