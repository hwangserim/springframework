<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
							<div class="card-header">ModelAndViewReturn 타입 리턴</div>
							<div class="card-body">
								<p>chNum: ${chNum}</p>
								<p>login: ${login}</p>
								<p>chNum: ${userName}</p>
	
										
									</div>
	
									<div class="form-group mb-2">
										<label for="mpassword">패스워드</label> 
										<input type="text" class="form-control" id="mpassword" name="mpassword" value="12345"> 
										
									</div>
								
									<button type="submit" class="btn btn-info btn-sm">로그인</button>
								
								</form>
								<hr/>
								
								<button onclick="handleBtn1()" type="button" class="btn btn-success btn-sm">AJAX로 요청</button>
								<div id="ajaxResponseInclude" class="mt-2"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	
	</body>
</html>