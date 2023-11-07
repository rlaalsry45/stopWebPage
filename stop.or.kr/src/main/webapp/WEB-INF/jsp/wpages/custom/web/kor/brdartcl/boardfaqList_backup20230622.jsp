<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="elfunc" uri="/WEB-INF/tlds/egov_elfunc.tld"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<style>
	.accordion dd #targetSpan p{ display:inline; }
	
	.accordion_lst { position: reloative; }
	
	.accordion dd #targetSpan { 
		 position: absolute;
  		 top: 100%;
  		 left: 0;
  		 width: 100%;
  		 overflow: hidden;
  		 max-height: 0;
	}
	
	

</style>
<div id="content" class="contentswrap"> 
	총 ${totCnt} 개
	<%-- container-right --%>
	<form:form name="reqForm" commandName="boardfaqVO">
		<section id="content">
			<div id="detail_content">
			    <%-- 실질 컨텐츠 영역 --%>
				
					<%--<a href="javascript:fn_egov_brd_list()"><img src="${pageContext.request.contextPath}/images/template/content/btn_boardsearch.png" alt="검색"/></a>--%>
				</div>	
				<div class="accordion">
					<div class = "table-wrap board">
				
					<dl class="accordion_lst">
					
						<table>	
						
							<c:forEach var="result" items="${resultList}" varStatus="status">
								<tr>
						
								<dt>
									<c:choose>
										<c:when test="${RWAUTH eq 'RWD'}">
											<a href="javascript:fn_egov_brd_mod('${result.cont_idx}')"><span>Q. </span> <c:out value="${result.subject}"/> </a>
										</c:when>
										<c:otherwise>
											<a href="javascript:;"><span>Q. </span> <c:out value="${result.subject}"/> </a>
										</c:otherwise>
									</c:choose>
								</dt>
								
								<dd>
							
									<span id = "targetSpan">A. ${elfunc:removeScrtag(result.brd_cont)}</span>
							
								</dd>
							<tr>
						</c:forEach>
						
						
						
					</table>
					</dl>
					</div>
					<c:if test="${totCnt eq 0}">
						<div class="nobbs"><span><spring:message code="BOARD.NO-DATA" /><%-- 조회 결과가 없습니다. --%></span></div>
					</c:if>
				</div>
				<%-- 게시글 리스트 페이징 --%>
				<c:if test="${totPage gt 1}">
					<div class="board_pager">
						<ui:pagination paginationInfo="${paginationInfo}" type="image"
							jsFunction="fn_egov_link_page" />
					</div>
				</c:if>
				<%-- 게시글 리스트 페이징 //--%>
			</div>
			<div class="btn_area_right">
				<%-- <c:if test="${RWAUTH eq 'RWD' or RWAUTH eq 'RW'}">
					<span class=".btn1"><span class="write"><button id="btnBoardAdd" type="button"><spring:message code="BOARD.WRITE" />글쓰기</button></span></span>
				</c:if> --%>
				<c:if test="${fn:startsWith(param.srch_menu_nix, '794x409U') eq true}">	
					<span class="button basic"><span class="list"><button id="btnBoardAllList" type="button"><spring:message code="BOARD.BOARD-LIST" /><%-- 게시판목록 --%></button></span></span>
				</c:if>
			</div>
			<br />
			<br />
			<form:hidden path="edomweivgp" />
			<form:hidden path="pageIndex" />
			<input type="hidden" id="cont_idx" name="cont_idx" value="0" />
		</section>
	</form:form>