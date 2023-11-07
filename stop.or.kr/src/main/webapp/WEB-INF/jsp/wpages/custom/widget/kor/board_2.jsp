<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="elfunc" uri="/WEB-INF/tlds/egov_elfunc.tld"%>


<c:choose>
	<c:when test="${!empty resultList}">
		<ul>
		<c:forEach var="result" items="${resultList}" varStatus="status">
					<li><a style = "color: #565656; display: block; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;" href="${pageContext.request.contextPath}/brdthm/boardthmView.do?brd_id=${result.brd_id}&srch_menu_nix=${menu_nix}&cont_idx=${result.cont_idx}"><c:out value="${elfunc:cutString(result.subject,28, '...')}"/></a>
						<span class="date"><c:out value="${result.wdt}"/></span>
					</li>
		</c:forEach>
		</ul>
	</c:when>
	<c:otherwise>
		<ul class="nodata"><li>등록된 데이터가 없습니다.</li></ul>
	</c:otherwise>
</c:choose>




