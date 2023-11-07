<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/WEB-INF/jsp/layout/custom/web/kor/cmm/metacmmn.jsp"/>
<!-- eGovFrame Common import -->        

<c:if test="${SESS_BRD_INFO.brd_gb eq 'D'}">
	<link href="${pageContext.request.contextPath}/css/template/jquery/fullcalendar.css" rel="stylesheet"/>
	<link href="${pageContext.request.contextPath}/css/template/jquery/fullcalendar.print.css" rel="stylesheet"/>
	<link href="${pageContext.request.contextPath}/css/template/jquery/jquery.ui.timepicker.css" rel="stylesheet"/>
</c:if>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/custom/web/kor/basic.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/custom/web/kor/content.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/utils/datepicker/css/datepicker.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/template/metsys/bbs.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/template/metsys/button.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/utils/datepicker/css/datepicker.css" />

<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery/core/html5.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery/core/jquery-1.9.1.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery/core/jquery-migrate-1.2.1.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery/core/jquery-ui-1.9.2.custom.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/custom/web/kor/common.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/plani/_cmmn/plani_common.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/plani/_cmmn/plani_gen.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/plani/_cmmn/plani_auth.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/plani/_cmmn/plani_brd_content.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/utils/datepicker/js/datepicker.js"></script>

<c:if test="${SESS_BRD_INFO.brd_gb eq 'D'}">
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery/plugin/fullcalendar.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery/plugin/jquery.ui.timepicker.js"></script>
</c:if>

