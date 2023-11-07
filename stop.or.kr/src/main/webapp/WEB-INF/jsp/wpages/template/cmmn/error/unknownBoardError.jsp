<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html lang="ko">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=Edge"/>
<meta name="keywords" content="${SESS_PROP_PRJTNM}" />
<meta name="description" content="PLANI FRM" />
<meta name="copyright" content="Copyright 2013 PLANI, all rights reserved." />
<!-- eGovFrame Common import -->        
<title><c:out value="${SESS_PROP_PRJTNM}"/></title> 
<link href="${pageContext.request.contextPath}/css/template/jquery/jquery-ui-1.9.2.custom.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/template/metsys/webadm.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery/core/jquery-1.9.1.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery/core/jquery-migrate-1.2.1.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery/core/jquery-ui-1.9.2.custom.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/plani/plani_common.js"></script>

<script>

jQuery(document).ready(function(){
	jQuery("#divDlgMsgbox" ).dialog({
		autoOpen : false,
		modal : true,
		title : "User Information",
		minWidth : 350,
		minHeight : 200,
		position : { my: "center", at: "center", of: window },
		close: function( event, ui ) {
			history.go(-1);
		}
	});
	
	jQuery("#divDlgMsgbox").dialog("open");
	jQuery("#txtareaMsg")
		.val(cmmfn_str_trim(jQuery("#txtareaMsg").val()))
		.css("width", "320px")
		.css("height", "150px");
});

</script> 
</head>
<body>

	<div id="divDlgMsgbox">
		<p>
			<textarea id="txtareaMsg" rows="5" cols="40">
				요청하신 작업의 처리도중 다음과 같은 문제가 발생하였습니다.
				
Infomation : 존재하지 않는 게시판 정보입니다.
관리자에게 문의하시기 바랍니다.

<!-- [전화] : 041-934-3507 -->
			</textarea>
		</p>
	</div>
</body>
</html>
