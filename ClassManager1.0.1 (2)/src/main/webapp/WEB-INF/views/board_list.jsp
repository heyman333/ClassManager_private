<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	String cp = request.getContextPath();
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link
	href="<%=cp%>/resources/assets/bootstrap/css/bootstrap_join.min.css"
	rel="stylesheet">
<style>
.page-navigation a {
	margin-left: 200px;
	align: center;
	margin: 0 2px;
	display: inline-block;
	padding: 3px 10px;
	color: #ffffff;
	background-color: #70b7ec;
	border-radius: 5px;
	text-decoration: none;
	font-weight: bold;
}

.page-navigation a[data-selected] {
	background-color: #3d9be0;
}

.page-navigation {
	text-align: center;
}
</style>
<title>Insert title here</title>
</head>
<c:if test="${isStudent eq true }">
	<jsp:include page="header2.jsp"></jsp:include>
</c:if>
<c:if test="${isStudent eq false }">
	<jsp:include page="header.jsp"></jsp:include>
</c:if>
<body>
	<div id="body">
		<div id="content">
			<div style="text-align: center">
				<h1>게시판</h1>
				<br />
			</div>

			<!-- 1114_ form으로 묶어주고 action으로 페이지 넘겨줌 -->
			<form id="listForm" action="write_view" method="POST">
				<div class="container">
					<div class="col-lg-12">
						<table id="myTable" class="table table-striped table-hover"
							border="1">
							<thead>
								<tr>
									<th width="50">번호</th>
									<th width="80">말머리</th>
									<th width="400">제목</th>
									<th width="100">글쓴이</th>
									<th width="120">날짜</th>
									<th width="90">조회수</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${board_list}" var="dto">

									<c:if test="${dto.teacherno != 0 }">
										<tr style="background: #dee2e8;">
											<td><strong>${dto.idx}</strong></td>
											<td><strong>${dto.category}</strong></td>
											<td><strong><a
													href="content_view?bIdx=${dto.idx}" style="color: black;">${dto.title}</a></strong></td>
											<td><strong>${dto.writer}</strong></td>
											<td><strong>${dto.created_at}</strong></td>
											<td><strong>${dto.hit}</strong></td>
										</tr>
									</c:if>
									<c:if test="${dto.teacherno eq 0 }">
										<tr>
											<td>${dto.idx}</td>
											<td>${dto.category}</td>
											<td><a href="content_view?bIdx=${dto.idx}"
												style="color: black;">${dto.title}</a></td>
											<td>${dto.writer}</td>
											<td>${dto.created_at}</td>
											<td>${dto.hit}</td>
										</tr>
									</c:if>
								</c:forEach>
							</tbody>
						</table>

						<!-- 1114 글쓰기 버튼 추가 -->
						<div align="center">
							<div class="col-sm-12 controls" align="right">
								<input id="btn-write" type="submit" class="btn btn-primary"
									value="글쓰기" />
							</div>
						</div>
					</div>
				</div>
			</form>
			<script
				src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
			<script
				src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
			<script
				src="//ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js"></script>

			<script src="//code.jquery.com/jquery-3.1.0.slim.min.js"></script>
			<script src="<%=cp%>/resources/script/jquery_paginate.js"></script>

			<script type="text/javascript">
				// Paginate it
				$('#myTable').paginate({
					limit : 10,
					onSelect : function(obj, page) {
						console.log('Page ' + page + ' selected!');
					}
				});
			</script>
		</div>
	</div>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>