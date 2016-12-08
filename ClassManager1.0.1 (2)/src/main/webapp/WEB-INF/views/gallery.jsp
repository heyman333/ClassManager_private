<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	String cp = request.getContextPath();
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="<%=cp%>/resources/assets/bootstrap/css/preview-image.min.css">
<link
	href="<%=cp%>/resources/assets/bootstrap/css/bootstrap_join.min.css"
	rel="stylesheet">

<script src="http://code.jquery.com/jquery-3.1.1.slim.min.js"></script>
<script src="<%=cp%>/resources/script/preview-image.min.js"></script>

<title>Insert title here</title>

<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

ul {
	list-style: none;
}

#preview {
	margin: 20px auto;
}

img {
	max-width: 100%;
}

#preview ul {
	overflow: hidden;
}

#preview li {
	float: left;
	width: 23%;
	margin: 1%;
}

#preview li img{
  border: 3px solid #303844;

}

</style>

</head>
<body>
	<c:if test="${isStudent eq true }">
		<jsp:include page="header2.jsp"></jsp:include>
	</c:if>
	<c:if test="${isStudent eq false }">
		<jsp:include page="header.jsp"></jsp:include>
	</c:if>
	<div id="body">
	<div id="pciture" align="right" style="margin: 20px;">
		<a href="#" class="btn btn-success">사진등록</a>
		<a href="#" class="btn btn-success">사진삭제</a>
	</div>
	<hr style="margin: 0px; border: 1px dotted ;">
		<div id="preview">
			<ul>
				<li>1<img
					src="<%=cp %>/resources/assets/img/pexels-photo-185764.jpeg"
					alt="picture"></li>
				<li>2<img src="<%=cp %>/resources/assets/img/bg10.jpeg"
					alt="picture 2"></li>
				<li>3<img src="<%=cp %>/resources/assets/img/bg11.jpeg"
					alt="picture 3"></li>
				<li>4<img src="<%=cp %>/resources/assets/img/class.jpg"
					alt="picture 4"></li>

			</ul>
		</div>
		<script type="text/javascript">
				$('#preview').preview();
			</script>

	</div>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>