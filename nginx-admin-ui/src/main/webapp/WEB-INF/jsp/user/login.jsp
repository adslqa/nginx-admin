<%@include file="../app/taglibs.jsp"%>
<html:view title="{title}">
	<html:container>

		<html:block>
			<html:div>
				<html:img url="/image/logo.png" width="150" height="150"
					shape="circle" alt="logo" cssClass="center-block"></html:img>
			</html:div>
			<html:div cssClass="text-center">
				<html:h1>
					<html:small>
						<fmt:message key="title"></fmt:message> - ${ version }
					</html:small>
				</html:h1>
			</html:div>
		</html:block> 

		<html:block>
			<html:form action="/user/authenticate" label="{authentication}">
				<html:formGroup>
					<html:alert state="warning"
						rendered="${ !empty(passwordRecoveryForLogin)}">
						<fmt:message key="password.recovered">
							<fmt:param value="${ passwordRecoveryForLogin }"></fmt:param>
						</fmt:message>
					</html:alert>
				</html:formGroup>
				
				<html:formGroup>
					<html:alert state="danger"
						rendered="${ !empty(invalid) && invalid }"
						label="{authenticate.invalid}">
					</html:alert>
				</html:formGroup>
				<html:formGroup label="{login}" required="true">
					<html:input name="login" type="email" required="true"
						placeholder="{login.placeholder}"></html:input>
				</html:formGroup>
				<html:formGroup label="{password}" required="true">
					<html:input name="password" type="password" required="true"
						placeholder="{password.placeholder}"></html:input>
				</html:formGroup>
				<html:toolbar>
					<html:button type="submit" label="{authenticate}" state="primary"></html:button>
				</html:toolbar>
			</html:form>
		</html:block>


		<html:block align="center">
			<html:link url="/user/resetPassword" label="{forgot.password}"></html:link>
		</html:block>

	</html:container>

</html:view>