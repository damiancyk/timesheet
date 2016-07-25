<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.io.*,java.util.*,javax.servlet.*"%>
<html>
<head>
</head>
<body>

	<c:if test="${!empty itemList}">
		<div class="list">
			<c:forEach items="${itemList}" var="item">
				<div class="element"
					onclick="window.location = '<%= request.getContextPath() %>/item/one/${item.idItem}'">
					<table>
						<tr>
							<td>${item.idItem}</td>
							<td>${item.name}</td>
						</tr>
					</table>
				</div>
			</c:forEach>
		</div>
	</c:if>

</body>
</html>