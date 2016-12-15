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
<link
	href="<%=cp%>/resources/assets/bootstrap/css/bootstrap-imageupload.min.css"
	rel="stylesheet">
<title>ClassManager</title>

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
	margin: 10px auto;
	width: 980px;
}

img {
	max-width: 100%;
}

#preview ul {
	overflow: hidden;
	padding: 10px;
	
}

#preview li {
	float: left;
	display: block;
	width: 300px;
	height: 200px;
	margin: 10px;
	

}

#preview li img {
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
			<button type="button" class="btn btn-success" data-toggle="modal"
				data-target="#upload">사진등록</button>
			<button type="button" class="btn btn-success" onclick="galleryDel();">사진삭제</button>
			<script type="text/javascript">
				function galleryDel() {
					var idx = prompt("삭제할 사진 번호를 입력하세요!");
					console.log(idx);
					
				}
			</script>
		</div>
		<hr style="margin: 0px; border: 1px dotted;">

		<div id="preview">
			<ul>
				<c:forEach items="${gallery}" var="dto">
					<li>${dto.idx }<img
						src="<%=cp%>/resources/assets/img/${dto.photoName}"
						alt="${dto.title }"></li>
				</c:forEach>
			</ul>
		</div>
		<!-- 사진등록 모달 -->
		<!-- line modal -->
		<form action="galleryInput" enctype="multipart/form-data"
			method="post">
			<div class="modal fade" id="upload" tabindex="-1" role="dialog"
				aria-labelledby="modalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">
								<span aria-hidden="true">×</span><span class="sr-only">Close</span>
							</button>
							<h4 class="modal-title" id="lineModalLabel"
								style="padding-bottom: 0px;">사진 등록하기</h4>
						</div>
						<hr>
						<div class="modal-body">
							<h4>
								<label for="title" style="float: left;">Tilte: </label>
							</h4>
							&nbsp;&nbsp; <input type="text" name="title" id="title"
								placeholder="사진제목을 입력하세요" style="width: 300px;"> <br />
							<br />
							<!-- content goes here -->
							<div class="imageupload panel panel-default">
								<div class="panel-heading clearfix">
									<h3 class="panel-title pull-left">Upload Image</h3>
									<div class="btn-group pull-right"></div>
								</div>
								<div class="file-tab panel-body">
									<label class="btn btn-default btn-file"> <span>Browse</span>
										<!-- The file is stored here. --> <input type="file"
										name="imgFile">
									</label>
									<button type="button" class="btn btn-default">Remove</button>
								</div>
								<div class="url-tab panel-body">
									<div class="input-group">
										<input type="text" class="form-control"
											placeholder="Image URL">
										<div class="input-group-btn">
											<button type="button" class="btn btn-default">Submit</button>
										</div>
									</div>
									<button type="button" class="btn btn-default">Remove</button>
									<!-- The URL is stored here. -->
									<input type="hidden" name="image-url">
								</div>

							</div>
						</div>
						<div class="modal-footer">
							<div class="btn-group btn-group-justified" role="group"
								aria-label="group button">
								<div class="btn-group" role="group">
									<button type="button" class="btn btn-default"
										data-dismiss="modal" role="button">취소</button>
								</div>
								<div class="btn-group" role="group">
									<input type="submit" id="saveImage"
										class="btn btn-default btn-hover-green" data-action="save"
										role="button" value="저장"></input>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>

		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
		<script src="//code.jquery.com/jquery-1.12.2.min.js"></script>

		<script type="text/javascript"
			src="<%=cp%>/resources/assets/bootstrap/js/bootstrap.js"></script>
		<script src="http://code.jquery.com/jquery-3.1.1.slim.min.js"></script>
		<script src="<%=cp%>/resources/script/preview-image.min.js"></script>
		<script src="<%=cp%>/resources/script/bootstrap-imageupload.js"></script>
		<script type="text/javascript">
			$('#preview').preview();
			var $imageupload = $('.imageupload');
			$imageupload.imageupload();
		</script>
	</div>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>