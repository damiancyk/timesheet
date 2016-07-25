<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Notatka</title>
</head>
<body>
	<h3>Add item</h3>
	<input class="buttonBack" type=button value="back"
		onCLick="history.back()">
	<br />

	<c:if test="${!empty item}">
		<form:form method="post" action="save" commandName="item">
			<table>
				<tr>
					<td><form:label path="name">
						Name
					</form:label></td>
					<td><form:input class="inputSimple" path="name"
							value="${item.name}" /></td>
				</tr>
				<tr>
					<td><form:label path="name">
						Description
					</form:label></td>
					<td><textarea name="description">${item.description}</textarea></td>
				</tr>

				<tr>
					<form:input type="hidden" path="idItem" value="${item.idItem}" />
				</tr>
				<tr>
					<td colspan="2"><input type="submit" class="button"
						value="zapisz" /></td>
				</tr>
			</table>
		</form:form>
	</c:if>
</body>
</html>