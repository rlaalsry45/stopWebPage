<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>



<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
	<title><tiles:insertAttribute name="mainTitle"/></title>
	<tiles:insertAttribute name="mainMeta"/>
	<tiles:insertAttribute name="cmmnScript"/>
	<tiles:insertAttribute name="mainScript"/>
</head>

<body>
<!-- Accessibility -->
<a id="uppermost" href="#contents" class="skip-to">Skip</a>
<div id="wrap">
	
	
	<header id="header">
		<tiles:insertAttribute name="mainHeader"/>
	</header>
			
	<main id="main">
		<tiles:insertAttribute name="mainContent"/>
	</main>
	
	<footer id="footer">
		<tiles:insertAttribute name="mainFooter"/>
	</footer>
	
</div>

</body>
</html>














