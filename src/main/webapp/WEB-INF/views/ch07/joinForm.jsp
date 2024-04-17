<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
			function handleBtn1() {
				
				var mid= $("#mid").val();
				var mpassword= $("#mpassword").val();
				
				console.log(mid);
				console.log(mpassword);
			
				
				$.ajax({
					url: "postMethodAjax",
					method: "post",
					//data: {mid:mid, mpassword:mpassword},
					data:{mid , mpassword},
					success: function(data) {
						//data: {"result":"success"}
						//data: {"result":"fail", "reason":"wrongMid"}
						//data: {"result":"fail", "reason":"wrongMPassword"}
						//자동으로 JSON -> Javascript Object 변환
						console.log(data);
						
						 if(data.result === "success") {
							$("#ajaxResponseInclude").html("로그인 성공");
						} else {
							if(data.reason === "wrongMid") {
							$("#ajaxResponseInclude").html("아이디가 존재하지 않습니다.");
							} else {
								$("#ajaxResponseInclude").html("비밀번호가 틀립니다.");
							}
						} 

					}
				});
			
			}
		
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
							<div class="card-header">writeBoardForm</div>
							<div class="card-body">
							<form id="joinForm" method="post" action="request2">
								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text">mid</span>
									</div>
									<input id="mid" type="text" name="mid"
										class="form-control" value="${joinForm.mid}">
								</div>

								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text">mname</span>
									</div>
									<input id="mname" type="text" name="mname" class="form-control" value="${joinForm.mname}">
								</div>

								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text">mpassword</span>
									</div>
									<input id="mpassword" type="password" name="mpassword" class="form-control" value="${joinForm.mpassword}">
								</div>

								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text">mjob</span>
									</div>
									<select id="mjob" name="mjob" class="form-control">
									<c:forEach var="job" items="${jobList}">
										<option value="${job}" ${job==joinForm.mjob?'selected':''}>${job}</option>
									</c:forEach>
										
									</select>
								</div>
								
								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text">mcity</span>
									</div>
									<select id="mcity" name="mcity" class="form-control">
										<c:forEach var="city" items="${cityList}">
										<option value="${city}" ${city==joinForm.mcity?'selected':''}>${city}</option>
									</c:forEach>
										
										
									</select>
								</div>

								<div class="mt-3">
									<button class="btn btn-info btn-sm mr-2">가입</button>
								</div>
							</form>
						</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	
	</body>
</html>