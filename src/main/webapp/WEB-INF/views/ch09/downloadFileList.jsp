<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- jQuery 외부 라이브러리 설정 -->
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script>
	
</script>
</head>

<body>
	<div class="d-flex flex-column vh-100">
		<%@ include file="/WEB-INF/views/common/header.jsp"%>
		<div class="flex-grow-1 m-2">
			<div class="d-flex">
				<div class="col-md-4">
					<%@ include file="/WEB-INF/views/common/menu.jsp"%>
				</div>


				<div class="col-md-8">
					<div class="card">
						<div class="card-header">파일 다운로드</div>
						<div class="card-body">
							<ul>
								<c:forEach var="fileName" items="${fileNames}">
									<li class="mb-2">				
									<a href="downloadFile?fileName=${fileName}">${fileName}</a>
									<img src="downloadFile?fileName=${fileName}" width="50" height="50"/>
									</li>
								</c:forEach>
								
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- The Modal -->
	<div class="modal" id="fileUploadModal">
		<div class="modal-dialog modal-dialog-centered modal-sm">
			<div class="modal-content">

				<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title">알림</h4>
					<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
				</div>

				<!-- Modal body -->
				<div class="modal-body">
					파일 업로드 성공
				</div>

				<!-- Modal footer -->
				<div class="modal-footer">
					<button type="button" class="btn btn-danger btn-sm" data-bs-dismiss="modal">Close</button>
				</div>

			</div>
		</div>
	</div>
</body>
</html>