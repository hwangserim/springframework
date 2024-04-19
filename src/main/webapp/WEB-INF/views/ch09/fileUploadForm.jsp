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
		//해석이 다 끝나고 나서 실행
		//방법1
	 	$(function() {
      $("#btnAjax").click(() => {
         //multipart/form-data 형식의 객체
         var formData = new FormData();
         formData.append("title", $("#title").val());
         formData.append("desc", $("#desc").val());
         formData.append("attach", $("#attach")[0].files[0]);
         
         console.log("btnAjax 클릭했냐?");
         $.ajax({
            url: "fileUploadAjax",
            method: "post",
            data: formData,
            cache: false,
            processData: false,
            contentType: false,
            success: function(data) {
               if(data.result == "success") {
                  const modal = new bootstrap.Modal('#fileUploadModal');
                  modal.show();
               }
               console.log(data);
            }
         });
      });
   });
		
/* 		//방법2
		$("#btnAjax").on("click", () => {
			console.log("btnAjax 클릭됨");
		}); */
		/* 
		//방법3
		document.querySelector("#btnAjax").addEventListener("click", () => {
				console.log("btnAjax 클릭됨")
			
		}); */
		
	
		 
		
		
	
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
						<div class="card-header">파일 업로드 폼</div>
						<div class="card-body">
							<form method="post" enctype="multipart/form-data"
								action="fileUpload">
								<div class="form-group">
									<label for="title">File Title</label> <input type="text"
										class="form-control" id="title" name="title" placeholder="제목">
								</div>
								<div class="mt-2 form-group">
									<label for="desc">File Description</label> <input type="text"
										class="form-control" id="desc" name="desc" placeholder="설명">
								</div>
								<div class="mt-2 form-group">
									<label for="attach">File Attach</label> <input type="file"
										class="form-control-file" id="attach" name="attach"
										multiple="multiple">
								</div>

								<!-- 방법1 -->
								<button type="submit" class="mt-2 btn btn-info btn-sm">Form
									파일 업로드</button>
								<!-- 방법2 -->
								<button id="btnAjax" type="button"
									class="mt-2 btn btn-info btn-sm">AJAX 파일 업로드</button>
							</form>

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