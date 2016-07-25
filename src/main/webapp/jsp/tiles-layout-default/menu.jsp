<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<ul>
	<li><a href="<%=request.getContextPath()%>">START</a></li>
	<li><a href="<%=request.getContextPath()%>/item/list">ITEM
			LIST</a></li>

	<c:choose>

		<c:when test="${pageContext['request'].userPrincipal != null}">
			<li>
				<div class="loginArea">
					<select
						onChange="if(this.value != 'none') document.location = this.value;">
						<option value="#">
							[
							<sec:authentication property="principal.username" />
							]
						</option>
						<option value="<%=request.getContextPath()%>/user/addItem">ADD
							ITEM</option>
						<sec:authorize access="hasRole('ROLE_ADMIN')">
							<option value="<%=request.getContextPath()%>/admin/">ADMIN
								PANEL</option>
						</sec:authorize>
						<option
							value="<%=request.getContextPath()%>/j_spring_security_logout">LOG
							OUT</option>
					</select>
				</div>
				
			</li>
			<li><img src="http://www.gravatar.com/avatar/0cab59af6633c8d8338d04c8430c0268?size=32" /></li>
		</c:when>

		<c:otherwise>
			<!-- 			<li> -->
			<!-- 				<div class="loginArea"> -->
			<!-- 					<input type=button value="log in" -->
			<!-- 						onclick="window.location.href = '<%=request.getContextPath()%>/login'"> -->
			<!-- 				</div> -->
			<!-- 			</li> -->
		</c:otherwise>

	</c:choose>
</ul>
