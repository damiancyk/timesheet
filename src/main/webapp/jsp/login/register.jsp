<%@page language="Java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Register page</title>
<script>
	$(document)
			.ready(
					function() {
						$('#idBtnRegister').click(function() {
							//e.preventDefault();
						});

						//$("#idBtnRegister").attr('disabled', 'disabled');
						$("#idBtnRegister").css("display", "none");

						$("input")
								.bind(
										'blur keyup',
										function() {
											if (($("#idLoginInfo")
													.hasClass("messageGood")) == true
													&& ($("#idEmailInfo")
															.hasClass("messageGood")) == true
													&& ($("#idPasswordInfo")
															.hasClass("messageGood")) == true) {
												$("#idBtnRegister").css(
														"display", "inline");
											} else {
												$("#idBtnRegister").css(
														"display", "none");
											}
										});

						$("#idLoginInput").bind(
								'blur keyup',
								function() {
									var sLogin;
									if (sLogin = $.trim($("#idLoginInput")
											.val()).length > 0) {
										if (isBusyLogin(sLogin)) {
											$("#idLoginInfo").removeClass(
													"messageInfo messageGood")
													.addClass("messageBad");
											$('#idLoginInfo').html(
													"login zajety");
										} else {
											$("#idLoginInfo").removeClass(
													"messageInfo messageBad")
													.addClass("messageGood");
											$('#idLoginInfo').html(
													"login wolny");
										}
									} else {
										$("#idLoginInfo").removeClass(
												"messageGood messageBad")
												.addClass("messageInfo");
										$('#idLoginInfo').html("empty field");
									}
								});

						$("#idEmailInput").bind(
								'blur keyup',
								function() {
									var str = $.trim($("#idEmailInput").val());
									if (str.length > 0) {
										if (validateEmail(str) == true) {
											$("#idEmailInfo").removeClass(
													"messageInfo messageBad")
													.addClass("messageGood");
											$('#idEmailInfo').html(
													"correct email");
										} else {
											$("#idEmailInfo").removeClass(
													"messageGood messageInfo")
													.addClass("messageBad");
											$('#idEmailInfo').html(
													"incorrect email");
										}
									} else {
										$("#idEmailInfo").removeClass(
												"messageGood messageBad")
												.addClass("messageInfo");
										$('#idEmailInfo').html("empty field");
									}
								});

						$("#idPasswordInput").bind(
								'blur keyup',
								function() {
									var str = $.trim($("#idPasswordInput")
											.val());
									if (str.length > 0) {
										if (validatePassword(str, 6) == true) {
											$("#idPasswordInfo").removeClass(
													"messageInfo messageBad")
													.addClass("messageGood");
											$('#idPasswordInfo').html(
													"correct password");
										} else {
											$("#idPasswordInfo").removeClass(
													"messageGood messageInfo")
													.addClass("messageBad");
											$('#idPasswordInfo').html(
													"signs: " + str.length
															+ " (min 6)");
										}
									} else {
										$("#idPasswordInfo").removeClass(
												"messageGood messageBad")
												.addClass("messageInfo");
										$('#idPasswordInfo')
												.html("empty field");
									}
								});
					});
</script>

</head>
<body>
	<h3>You don't have your own account? Register new one.</h3>
	<input class="button" type=button value="back" onCLick="history.back()">
	<br />

	<c:if test="${!empty user}">
		<br />
		<form:form method="post" id="idFormRegister" action="register"
			autocomplete="off" commandName="user">
			<span class="field">register</span>
			<hr>
			<table>
				<tr>
					<td><form:label path="login">
						Login
					</form:label>
					</td>
					<td><form:input class="inputSimple" path="login"
							id="idLoginInput" value="${user.login}" />
					</td>
					<td><div id="idLoginInfo"></div>
					</td>
				</tr>
				<tr>
					<td><form:label path="login">
						Email
					</form:label>
					</td>
					<td><form:input class="inputSimple" path="email"
							id="idEmailInput" value="${user.email}" />
					</td>
					<td><div id="idEmailInfo"></div>
					</td>
				</tr>
				<tr>

					<td><form:label path="password">
						Password
					</form:label>
					</td>
					<td><form:input class="inputSimple" type="password"
							path="password" id="idPasswordInput" value=" ${user.password}" />
					</td>
					<td><div id="idPasswordInfo"></div>
					</td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" class="button"
						id="idBtnRegister" value="register" />
					</td>
				</tr>
				<tr>
					<td colspan='2'><input name="reset" class="button"
						type="reset" value="clear" />
					</td>
				</tr>
			</table>
		</form:form>
	</c:if>
</body>
</html>