<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<title>Techshop - Đăng nhập</title>
	<link rel="stylesheet" type="text/css" href="Frontend/css/login1.css">
</head>

<body>


	<c:set var="contextPath" value="${pageContext.request.contextPath}" />
	<div class="container" id="container">


		<div class="form-container sign-in-container">


			<form method="POST" action="${contextPath}/login ">
				<c:if test="${param.error != null}">
					<div class="alert alert-danger"  style="text-align: center">
						<p>Tên đăng nhập hoặc mật khẩu không đúng.</p>
					</div>
				</c:if>
				<c:if test="${param.logout != null}">
					<div class="alert alert-success"  style="text-align: center">
						<p>Bạn đã đăng xuất thành công.</p>
					</div>
				</c:if>
				<c:if test="${param.accessDenied != null}">
					<div class="alert alert-danger"  style="text-align: center">
						<p>Bạn không có quyền truy cập vào trang này</p>
					</div>
				</c:if>
				<h1>Đăng nhập</h1><br>
				<input type="text" placeholder="Email" name="email" required="required" style="padding:  10px;"/>

				<input type="password" placeholder="Mật khẩu" name="password" required="required" style="padding:  10px;" />

				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

				<br>
				<input type="checkbox" id="remember" name="remember-me">
				<label for="remember" style="font-family: 'Montserrat', sans-serif; font-size: 14px;">Duy trì đăng nhập</label><br>

				<button>Đăng nhập</button>
			</form>
		</div>

		<div class="overlay-container">
			<div class="overlay">
				<div class="overlay-panel overlay-left">
					<h1>Welcome Back!</h1>
					<p>Đã có tài khoản ? Đăng nhập ngay thôi </p>
					<button class="ghost" id="signIn">Đăng nhập</button>
				</div>
				<div class="overlay-panel overlay-right">
					<h1>Xin chào bạn!</h1>
					<p>Nếu chưa có tài khoản hãy điền những thông tin và trải nghiệm shop nhé</p>
					<button class="ghost" id="signUp" onclick="window.location='<c:url value='/register'/> '">Đăng ký</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
