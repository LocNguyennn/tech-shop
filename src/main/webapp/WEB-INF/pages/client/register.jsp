<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<title>Techshop - Đăng ký</title>
<link rel="stylesheet"  type="text/css" href="Frontend/css/login1.css">
</head>

<body>


	<c:set var="contextPath" value="${pageContext.request.contextPath}" />
	<div class="container" id="container">
		<script>
			container.classList.add("right-panel-active");
		</script>
		<div class="form-container sign-up-container">
			<form:form method="POST" action='register' modelAttribute="newUser">
				<h1>Đăng ký</h1>
				<div class="form-group">
					<form:input type="email" path="email" class="form-control"
						placeholder="Email" required="required" autofocus="true" ></form:input>
					<form:errors class="error" path="email"></form:errors>
				</div>

				<div class="form-group">
					<form:input type="password" path="password" class="form-control"
								required= "required" placeholder="Mật khẩu"></form:input>
					<form:errors class="error" path="password"></form:errors>
				</div>

				<div class="form-group">
					<form:input type="password" path="confirmPassword"
						class="form-control" required= "required" placeholder="Nhắc lại mật khẩu"
						></form:input>
					<form:errors class="error" path="confirmPassword"></form:errors>
				</div>

				<div class="form-group">
					<form:input type="text" path="hoTen" class="form-control"
								required= "required" placeholder="Họ và tên" ></form:input>
					<form:errors class="error" path="hoTen"></form:errors>
				</div>

				<div class="form-group">
					<form:input type="number" path="soDienThoai" class="form-control"
								required= "required" placeholder="Số điện thoại" ></form:input>
					<form:errors class="error" path="soDienThoai"></form:errors>
				</div>

				<div class="form-group">
					<form:input type="text" path="diaChi" class="form-control"
								required= "required" placeholder="Địa chỉ" ></form:input>
					<form:errors class="error" path="diaChi"></form:errors>
				</div>
				<button>Đăng ký</button>
			</form:form>
		</div>


		<div class="overlay-container">
			<div class="overlay">
				<div class="overlay-panel overlay-left">
					<h1>Welcome Back!</h1>
					<p>Đã có tài khoản ? Đăng nhập ngay thôi </p>
					<button class="ghost" id="signIn" onclick="window.location='<c:url value='/login'/> '">Đăng nhập</button>
				</div>
				<div class="overlay-panel overlay-right">
					<h1>Xin chào bạn!</h1>
					<p>Nếu chưa có tài khoản hãy điền những thông tin và trải nghiệm shop nhé</p>
					<button class="ghost" id="signUp" >Đăng ký</button>
				</div>
			</div>
		</div>
	</div>

</body>
</html>