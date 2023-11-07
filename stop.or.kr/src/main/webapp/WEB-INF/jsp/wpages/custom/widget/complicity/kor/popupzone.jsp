<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<c:if test="${!empty popupList}">

	<ul>
	<c:forEach var="result" items="${popupList}" varStatus="status">
	
		<li>
			<a href="${result.pop_link}" blank="${result.pop_target}">
				<img src="${pageContext.request.contextPath}/atchfile/imageAtchfile.do?vchkcode=${result.vchkcode}" alt="${result.pop_title}"/>
			</a>
		</li>
		
	</c:forEach>
	</ul>

</c:if>