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
			function addCartItem(){
				var pno = ${product.pno};
				var amount = $("#amount").val();
				document.location.href = "addCartItem?pno=" + pno + "&amount=" + amount;
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
						<div class="card-header">상품 상세</div>
						<div class="card-body"></div>
						<p>상품 번호 : ${product.pno} <p>
						<p>상품 이름 : ${product.pname}<p>
						<p>상품 가격 : ${product.pprice}<p>
						<hr/>
						<div>
							수량 : <input type="number" id="amount" value="1"/>
						</div>
						<button onclick="addCartItem()" class="mt-3 btn btn-info btn-sm">장바구니 넣기</button>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>