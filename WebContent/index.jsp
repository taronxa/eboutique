
<%@ include file="/WEB-INF/views/header.jsp"%>
	<!-- Page Title -->
	<div class="section section-breadcrumbs">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h1>Login</h1>
				</div>
			</div>
		</div>
	</div>

	<div class="section">
		<div class="container">
			<div class="row">
				<div class="col-sm-5">
					<div class="basic-login">
						<form role="form" action='<c:url value="/" />' method="post">
							<div class="form-group">
								<label for="login-username"><i class="icon-user"></i> <b>Identifiant
										(nom)</b></label> <input class="form-control" name="login" id="login"
									type="text" placeholder="">
							</div>
							<div class="form-group">
								<label for="login-password"><i class="icon-lock"></i> <b>Password</b></label>
								<input class="form-control" id="password" name="pwd" type="password"
									placeholder="">
							</div>
							<c:if test="${error==true}">${error}
								<div class="alert alert-danger">Vos identifiants sont
									incorrects</div>
							</c:if>
							<div class="form-group">


								<button type="submit" class="btn pull-right">Login</button>
								<div class="clearfix"></div>
							</div>
						</form>
					</div>
				</div>
				<div class="col-sm-7 social-login">
					<p>Or login with your Facebook or Twitter</p>
					<div class="social-login-buttons">
						<a href="#" class="btn-facebook-login">Login with Facebook</a> <a
							href="#" class="btn-twitter-login">Login with Twitter</a>
					</div>
					<div class="clearfix"></div>
					<div class="not-member">
						<p>
							Not a member? <a href="page-register.html">Register here</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Footer -->
	<%@ include file="/WEB-INF/views/footer.jsp"%>
</body>
</html>