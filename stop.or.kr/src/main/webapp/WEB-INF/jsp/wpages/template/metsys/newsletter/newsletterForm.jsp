<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="elfunc" uri="/WEB-INF/tlds/egov_elfunc.tld"%> 

<script>
/* $(document).ready(function(){
    $("input:checkbox[name=news1]")")

}); */
</script>

<form:form name="reqForm" commandName="newsletterVO" class="ajax-form-submit">

<!-- content -->
<div id="divMainArticle">
	<h2>메인 뉴스레터 관리</h2><br/>

	<table class="tstyle_view">
		<colgroup>
			<col width="18%" />
			<col />
		</colgroup>
		<caption>메인 뉴스레터 폼</caption>
		<tr>
			<th scope="row"><label for="email">이메일</label></th>
			<td><form:input path="email" class="input_width_300" title="이메일"/></td>
		</tr>
		<tr>
			<th scope="row"><label for="deldt">취소일</label></th>
			<td>
				<form:input path="deldt" class="input_width_100"/>
			</td>
		</tr>
		<tr>
			<th scope="row"><label for="deldt">뉴스목록</label></th>
			<td>
				<span class="form-set form-checkbox">
					<form:checkbox id="news1" path="news1" value="Y" />
					<label for="news1">한국여성인권진흥원 뉴스레터 [밑줄긋기] </label>
				</span>
				
				<span class="form-set form-checkbox">
					<form:checkbox id="news2" path="news2" value="Y" />
					<label for="news2">일본군위안부연구소 뉴스레터 [웹진 결] </label>
				</span>
			</td>
		</tr>
		
	</table>
	<br/>
	<div class="btn_area_right">
		<input type="submit" value="저장" class="btn_line">
		<a href="${pageContext.request.contextPath}/mannewsletter/newsletterList.do?srch_menu_nix=${param.srch_menu_nix}" class="btn_line">목록</a>
		<%-- <a href="${pageContext.request.contextPath}/mannewsletter/newsletterDelete.do?srch_menu_nix=${param.srch_menu_nix}&new_idx=${newsletterVO.new_idx}" id="del" class="btn_line">삭제</a> --%>
	</div>
	
</div>
<form:hidden path="new_idx"/>
</form:form>
