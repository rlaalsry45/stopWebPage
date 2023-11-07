<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="cutil" uri="/WEB-INF/tlds/CommonUtil.tld"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%  
response.setHeader("Cache-Control","no-store");  
response.setHeader("Pragma","no-cache");  
response.setDateHeader("Expires",0);  
if (request.getProtocol().equals("HTTP/1.1"))
        response.setHeader("Cache-Control", "no-cache");
%>  
<%/* 언어 설정만 필요한 경우 */%>
<c:set var="languageParam" value="srch_mu_lang=${param.srch_mu_lang}" />
<!--  ## TPCODE : TPAGE0002 : 헤더 ## -->
<h1 class="logo"><a href="${pageContext.request.contextPath}/" title="메인페이지로 이동"><img src="${pageContext.request.contextPath}/images/kor/layout/logo.png" alt="한국여성인권진흥원 로고" /></a></h1>

<nav>
	<ul id="gnb">
		<c:import url="/SiteMenuWidget/menu.do" >
			<c:param name="use" value="Y"/>
		</c:import>	
	</ul>
</nav>

<div class="util">
	<form:form name="search_form" id="search_form"  action="${pageContext.request.contextPath}/contents/mainTotalSearch.do" method="get">
		<div class="search">
			<p class="form">
				<input type="hidden" name="srch_menu_nix" value="3c76Sg13"/>
				<label for="serchtextInput" class="hidden-text">검색어 입력</label>
				<input type="text" name="searchKeyword" placeholder="검색어를 입력해주세요" id="serchtextInput" title="검색어" value="<c:if test='${!empty param.searchType}'><c:out value='${param.searchKeyword}'/></c:if>"/>
				<input type="hidden" name="searchType" value="CONT"/>
				<input type="submit" class="btn" value="검색"/>
			</p>
			<a href="#none" class="control open">검색</a>
		</div>
	</form:form>

	<p class="language">
		<a href="${pageContext.request.contextPath}/" class="active">한국어</a>
		<a href="${pageContext.request.contextPath}/eng">English</a>
	</p>
	<a href="#allmenu" class="all-menu" title="사이트맵 열기 닫기"><i class="open">사이트맵 <span>열기</span></i><i class="close">사이트맵 <span>닫기</span></i></a>
</div>
<article class="layerpopup" id="allmenu">
	<ul class="allmenu">
		<c:import url="/SiteMenuWidget/menu.do" >
			<c:param name="use" value="Y"/>
			<c:param name="type" value="site_allmenu"/>
		</c:import>	
	</ul>
</article>