<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="elfunc" uri="/WEB-INF/tlds/egov_elfunc.tld"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<style>
	.accordion dd .targetSpan p { display:block; }
	.accordion dd .targetSpan { display: none; } 
	
	.accordion dd .targetSpan.active { display: block;} 
</style>

<script>
	
	function checkThisTD(tdIndex){
	
		answerClass = $("#anSwer"+tdIndex).attr("class");
		
		const isActive = answerClass.indexOf("active");
		
		if(isActive == -1){
			
			$("#anSwer"+tdIndex).addClass("active");
			
		}else{
			
			$("#anSwer"+tdIndex).removeClass("active");
			
		}

	}
	
	function faqSearch(){
		
		var searchKeyWord = $('#faqCont').val();

		location.href =  '/brdfaq/boardfaqList.do?brd_id=BDIDX_2052vSKNl9W13r2V1FhfEm&srch_menu_nix=jKvk3h4P&faqCont='+encodeURI(searchKeyWord);	
	}
	
	
</script>

<div id="content" class="contentswrap"> 

	<div class="board-search org-search">
		<input title="검색 입력" id="faqCont" name = "faqCont" type="text">
		<a class="btn" id="faqCont" href="#" onclick = "faqSearch()">검색</a>
	</div>

	<ul class="tabmenu">			
				<li><a href="/brdfaq/boardfaqList.do?brd_id=BDIDX_2052vSKNl9W13r2V1FhfEm&srch_menu_nix=jKvk3h4P&selecttype=VIEW" target="_self">정책정보</a></li>				
				<li><a href="/brdfaq/boardfaqListA.do?brd_id=BDIDX_2052vSKNl9W13r2V1FhfEm&srch_menu_nix=jKvk3h4P" target="_self">홍보자료</a></li>
				<li><a href="/brdfaq/boardfaqListB.do?brd_id=BDIDX_2052vSKNl9W13r2V1FhfEm&srch_menu_nix=jKvk3h4P&" target="_self">교육정보</a></li>
				<li><a href="/brdfaq/boardfaqListC.do?brd_id=BDIDX_2052vSKNl9W13r2V1FhfEm&srch_menu_nix=jKvk3h4P&" target="_self">피해상담</a></li>
				<li class="active"><a href="/brdfaq/boardfaqListD.do?brd_id=BDIDX_2052vSKNl9W13r2V1FhfEm&srch_menu_nix=jKvk3h4P&" target="_self">홈페이지 장애</a></li>
	</ul>

	총 ${totCnt} 건
	<%-- container-right --%>
	<form:form name="reqForm" commandName="boardfaqVO">
		<section id="content">
			<div id="detail_content">
			    <%-- 실질 컨텐츠 영역 --%>
				
					<%--<a href="javascript:fn_egov_brd_list()"><img src="${pageContext.request.contextPath}/images/template/content/btn_boardsearch.png" alt="검색"/></a>--%>
				</div>	
				<div class="accordion">
				<c:if test="${totCnt ne 0}">
					<div class = "table-wrap board">
				
					
				
					<dl class="accordion_lst">
					
						<table>	
						
							<c:forEach var="result" items="${resultList}" varStatus="status">
								<tr>
									<td style = "text-align:left;">
										
										<ul class = "bookmark1">
										<li>
										<a style = "border-bottom:0px;" id = "aTag${status.index}" onclick="checkThisTD(${status.index})">
										<dt class = "startSpan" id = "question${status.index}" style = "font-size:18px;">
											<c:choose>
												<c:when test="${RWAUTH eq 'RWD'}">
													<c:out value="${result.subject}"/> 
												</c:when>
												<c:otherwise>
													<c:out value="${result.subject}"/> 
												</c:otherwise>
											</c:choose>
										</dt>
										
										<dd>
									
											<span class = "targetSpan" id = "anSwer${status.index}" style = "font-size:15px;">${elfunc:removeScrtag(result.brd_cont)}</span>
									
										</dd>
										
										</a>
										</li>
										</ul>
										
									</td>
							<tr>
							
						</c:forEach>
						
						
						
					</table>
					
					</dl>
					
					
					</div>
					</c:if>
					<c:if test="${totCnt eq 0}">
					<div class = "table-wrap board">
						<table>
							<tr>
								<td>
									<div class="nobbs"><span><spring:message code="BOARD.NO-DATA" /><%-- 조회 결과가 없습니다. --%></span></div>		
								</td>
							</tr>
						
						</table>
					
					
						</div>	
					</c:if>
				
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