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
		<c:forEach var="result" items="${resultList}" varStatus="status">
			<c:choose>
				<c:when test="${status.index eq '0' }">
					<a href="${pageContext.request.contextPath}/brdartcl/boardarticleView.do?brd_id=${result.brd_id}&srch_menu_nix=${menu_nix}&cont_idx=${result.cont_idx}">
						<div>
							<strong><c:out value="${elfunc:cutString(result.subject,30,'...')}"/></strong>
							<p><c:out value="${elfunc:cutString(elfunc:removeTag(result.brd_cont),40, '...')}"/></p>
							<span><c:out value="${elfunc:cutString(result.extra1,15, '... ')}"/></span>
							<span><c:out value="${result.wdt}"/></span>
						</div>
					</a>
				</c:when>
				<c:otherwise>
					<c:if test="${status.index eq '1' }">
						<ul>
					</c:if>
					<li><a href="${pageContext.request.contextPath}/brdartcl/boardarticleView.do?brd_id=${result.brd_id}&srch_menu_nix=${menu_nix}&cont_idx=${result.cont_idx}"><c:out value="${elfunc:cutString(result.subject,30, '...')}"/></a></li>
				</c:otherwise>
			</c:choose>
		</c:forEach>
		</ul>
	</c:when>
	<c:otherwise>
		<ul class="nodata"><li>등록된 데이터가 없습니다.</li></ul>
	</c:otherwise>
</c:choose>




