
<%@page import="java.util.logging.Level"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="org.apache.logging.log4j.LogManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="org.springframework.web.context.WebApplicationContext"%>
<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="egovframework.plani.template.atchfile.service.AtchfileService"%>
<%
	Logger logger = Logger.getLogger("MyJSPLogger");
	try{
		WebApplicationContext wac = WebApplicationContextUtils.getRequiredWebApplicationContext(getServletContext());
		AtchfileService service = (AtchfileService)wac.getBean("atchfileService");
		service.uploadProc(request);
	}catch(Exception e){
		/* e.printStackTrace(); */
		logger.log(Level.SEVERE, "파일 업로드 에러", e);
	}
%>