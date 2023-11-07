<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html lang="ko">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=Edge"/>
<meta name="keywords" content="${SESS_PROP_PRJTNM}" />
<meta name="description" content="PLANI FRM" />
<meta name="copyright" content="Copyright 2013 PLANI, all rights reserved." />
<!-- eGovFrame Common import -->        
<title><c:out value="${SESS_PROP_PRJTNM}"/></title> 
<link href="${pageContext.request.contextPath}/css/template/jquery/jquery-ui-1.9.2.custom.css" rel="stylesheet" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/template/metsys/error.css" />

<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery/core/jquery-1.9.1.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery/core/jquery-migrate-1.2.1.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery/core/jquery-ui-1.9.2.custom.min.js"></script>
</head>
<body>
	<div class="error_txt errorPage">
		<strong><spring:message code="ERROR.MESSAGE-TITLE" /></strong>
		<p class="dot_lstyle"><spring:message code="ERROR.MESSAGE-001" /><br/>
		<c:if test="${fn:indexOf(exception.message, 'CMMN : ') ge 0}">
			<br/><span class="point01" id="error-message">( <c:out value="${fn:replace(exception.message, 'CMMN : ', '')}"/> )</span><br/>
		</c:if> 
		<spring:message code="ERROR.MESSAGE-002" /></p>
		<button type="button" class="btn_line" onclick="history.back(-1);"><spring:message code="ERROR.BACK" /></button>
	</div>
	<br/>
	<!--<c:out value="${exception.message}"/>-->
</body>
</html>
