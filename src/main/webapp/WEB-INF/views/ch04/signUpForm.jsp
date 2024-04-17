<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

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
							<div class="card-header">로그인 양식</div>
							<div class="card-body">
	
								<form class="m-2" method="post" action="signup">
									<div class="form-group mb-2">
										<label for="mid">아이디</label> 
										<input type="text" class="form-control" id="mid" name="mid" value="${ch04SignUpForm.mid}">
										<!-- 에러 메시지를 출력해 -->
										<div class="text-danger" style="font-size:0.7rem"><form:errors path="ch04SignUpForm.mid"/></div>
									</div>
	
									<div class="form-group mb-2">
										<label for="mpassword">패스워드</label> 
										<input type="password" class="form-control" id="mpassword" name="mpassword" value="${ch04SignUpForm.mpassword}"> 
										<div class="text-danger" style="font-size:0.7rem"><form:errors path="ch04SignUpForm.mpassword"/></div>
										
									</div>
									
									<div class="form-group mb-2">
										<label for="mname">이름</label> 
										<input type="text" class="form-control" id="mname" name="mname" value="${ch04SignUpForm.mname}"> 
										<div class="text-danger" style="font-size:0.7rem"><form:errors path="ch04SignUpForm.mname"/></div>
										
									</div>
									
									<div class="form-group mb-2">
										<label for="memail">이메일</label> 
										<input type="text" class="form-control" id="memail" name="memail" value="${ch04SignUpForm.memail}"> 
										<div class="text-danger" style="font-size:0.7rem"><form:errors path="ch04SignUpForm.memail"/></div>
										
									</div>
									
									<div class="form-group mb-2">
										<label for="mphonenum">전화번호</label> 
										<input type="text" class="form-control" id="mphonenum" name="mphonenum" value="${ch04SignUpForm.mphonenum}"> 
										<div class="text-danger" style="font-size:0.7rem"><form:errors path="ch04SignUpForm.mphonenum"/></div>
										
									</div>
								
									<button type="submit" class="btn btn-info btn-sm">회원가입</button>
								
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	
	</body>
</html>