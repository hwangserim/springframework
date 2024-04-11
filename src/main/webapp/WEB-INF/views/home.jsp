<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
		<meta charset="UTF-8">
		<title>Insert title here</title>
			<!-- jQuery 외부 라이브러리 설정 -->
      <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  			<script>
  			</script>
	</head>
	<body>
		<div class="d-flex flex-column vh-100">
	
		
		
         <%@ include file="/WEB-INF/views/common/header.jsp"%>
         <div class="flex-grow-1 m-2">
            <div class="d-flex">
            	<div class="col-md-4">
            <jsp:include page="/WEB-INF/views/common/menu.jsp"/>
            	</div>
            	
            	
				<div class="col-md-8">
					<div class="card">
					<div class="card-header">home</div>
					<div class="card-body">
						home
					</div>
					</div>
				</div>
            </div>
         </div>
      </div>
		
	</body>
</html>