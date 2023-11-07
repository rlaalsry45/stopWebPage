<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="elfunc" uri="/WEB-INF/tlds/egov_elfunc.tld"%>
<%@ taglib prefix="cutil" uri="/WEB-INF/tlds/CommonUtil.tld"%>


<script>
var replaceId  = /[<>()]/gi;

$(document).ready(function(){
    
    $("#searchKeyword").on("focusout", function() {
        var x = $(this).val();
        if (x.length > 0) {
            if (x.match(replaceId)) {
               x = x.replace(replaceId, "");
            }
            $(this).val(x);
            
        }
    }).on("keyup", function() {
        $(this).val($(this).val().replace(replaceId, ""));

    });

});
</script>


<form:form name="reqForm" commandName="webtooncategoryVO" action="${cutil:getUrl('', '', false)}" method="get">
	<form:hidden path="srch_menu_nix" />
	<div class="articles_search">		
		<p class="articles">전체 <span class="txt_bold">${totCnt}건</span>, 현재 페이지 <span class="total">${curPage}</span> / ${totPage } pages</p>		
		<div class="basic_searchForm">
			<form:input path="searchKeyword" title="검색어 입력"/>
			<input type="submit" value="검색" class="input_smallBlack" />
			<!-- <a href="javascript:fn_egov_mem_search()" id="btnSearchRefresh" class="input_smallBlack">검색</a>  -->
		</div>
	</div>
	<form:hidden path="pageIndex"/>
	<form:hidden path="srch_mu_site"/>
	<form:hidden path="srch_mu_lang"/>
<%-- 	<form:hidden path="cn_seq" /> --%>
</form:form>

<!-- content -->
<div id="divMainArticle">

	<%-- <form:form name="reqForm" method="post" commandName="webtooncategoryVO"> --%>
	
		<h3>웹툰카테고리목록 관리 </h3><br/>
			<table class="tstyle_list">
				<thead>
					<tr>
                       <th scope="col" width="5%">No.</th>
                       <th scope="col" >제목</th>
                       <th scope="col" width="13%">등록일</th>
                       <th scope="col" width="15%">삭제</th>
                   </tr>
               </thead>
			<tbody id="list_content">
				<c:forEach var="result" items="${resultList}" varStatus="status">
					<c:set var="viewParams" value="seq=${result.cn_seq}&pageIndex=${pageIndex}" />	
					<tr>
						<td><c:out value="${totCnt - (result.rn - 1)}"/></td>
						<td><a href="${cutil:getUrl('/metsys/webtooncategory/webtooncategoryForm.do', viewParams, true)}"><c:out value="${result.cn_title}"/></a></td>
						<td><c:out value="${result.wdt}"/></td>
						<td><a href="${cutil:getUrl('/metsys/webtooncategory/deletewebtooncategory.do', viewParams, true)}" class="deletewebtoon">삭제</a></td>
					</tr>
				</c:forEach>
				
				<c:if test="${paginationInfo.totalRecordCount eq 0}">
				<tr>
					<td colspan="4"> 조회 결과가 없습니다 </td>
				</tr>
				</c:if>
				
               </tbody>
		</table>
           
		<c:if test="${paginationInfo.totalPageCount gt 1}">
       		<div class="board_pager">
				<ui:pagination paginationInfo = "${paginationInfo}" type = "image"
					jsFunction = "fn_egov_link_page" />
			</div>
		</c:if>
	
		
		<c:set var="urlPageIndex" value="pageIndex=${pageIndex}" />
		<div class="btn_area_right"><a href="${cutil:getUrl('/metsys/webtooncategory/webtooncategoryForm.do', urlPageIndex, false)}" class="btn_line">추가</a></div>
		
	<%-- 	<form:hidden path="cn_seq" />
		<form:hidden path="edomweivgp" />
		<form:hidden path="pageIndex"/>
		<form:hidden path="srch_mu_site"/>
		<form:hidden path="srch_mu_lang"/> --%>
		
	<%-- </form:form> --%>
</div>
<!-- //container -->
