<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
			<link
			href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
			rel="stylesheet">
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<!-- jQuery 외부 라이브러리 설정 -->
		<script>
			
		<script/>
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
							<div class="card-header">TestAuthInterceptor1</div>
							<div class="card-body">
							로그인 없이도 볼 수 있는 내용
						
						</div>
					</div>
				</div>
			</div>
		</div>
	
	</body>
</html>