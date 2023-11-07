<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="elfunc" uri="/WEB-INF/tlds/egov_elfunc.tld"%>
<%@ taglib prefix="cutil" uri="/WEB-INF/tlds/CommonUtil.tld"%>

<style>
	.news .item {width:800px;}
</style>

<!-- 상세콘텐츠 영역 -->
	<article class="form-spam">
		<div class="desc">
			<div class="item">
				<h2>
					한국여성인권진흥원 <br/> <span class="point3">뉴스레터</span> 신청 페이지 입니다.
				</h2>
			</div>
		</div>
	</article>
	
	<form:form name="news_form" action="${pageContext.request.contextPath}/newsletter/newsletterFormAdd.do" method="post" class="news-ajax-form-submit">
		<!-- 개인정보수집 팝업 -->
		<article class="news">
			<div class="group">
				<div class="item">
					<h3 class="title4">개인정보 수집 및 이용 목적</h3>
					<p>한국여성인권진흥원은 다음의 목적을 위하여 개인정보를 수집 및 이용합니다.  수집된 개인 정보는 다음의 목적이외의 용도로는 이용되지 않으며, 이용 목적이 변경되는 경우에는 개인 정보 보호법 제 18조에 따라 별도의 동의를 받는 등 필요한 조치를 이행할 것입니다. </p>
					<ul class="bul1">
						<li>뉴스레터 [밑줄긋기, 웹진 '결'] 및 기관 소식 발송 및 서비스 제공</li>
					</ul>
					
					<div class="table-wrap">
						<table>
							<caption>개인정보 수집 및 이용 목적 - 개인정보 처리 목적, 개인정보 항목, 보유기간</caption>
							<thead>
								<tr>
									<th scope="col">개인정보 처리 목적</th>
									<th scope="col">개인정보 항목</th>
									<th scope="col">보유기간</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>뉴스레터[밑줄긋기, 웹진 ‘결’]<br/>및 기관 소식 발송</td>
									<td>이메일</td>
									<td style = "text-decoration-line: underline; font-weight:bold;">2년</td>
								</tr>
							</tbody>
						</table>
					</div>
					
					<h3 class="title4">동의거부 권리 및 동의거부에 따른 불이익</h3>
					<p>수집하는 개인정보에 대하여 개인정보보호법 제 15조에 따라서 개인정보 수집 및 이용에 동의를 거부할 수 있으며, 동의를 거부하실 경우 뉴스레터 및 홍보메일 서비스를 이용할 수 없습니다.</p>
					
					<p class="box1" style="text-align:center;">
						<font style="font-size: 1.7rem; color: #888; margin: 0 12px;">위 개인정보 수집 및 이용동의서에 동의 하시겠습니까?&nbsp;</font>
						<span class="form-set form-radio">
							<input type="radio" id="agree1" name="agree">
							<label for="agree1">동의함</label>
						</span>
						
						<span class="form-set form-radio">
							<input type="radio" id="agree2" name="agree" value="N">
							<label for="agree2">동의하지 않음</label>
						</span>
					</p>
					
				</div>
			</div>
			<div class="form">
			<input type="hidden" name="email" id="email"/>
			<input type="hidden" name="type" id="type"/>
			<label for="mailid" class="hidden-text">이메일주소 아이디</label>
			<input type="text" id="mailid" name="mailid" title="이메일주소 중 아이디" placeholder="이메일 주소"> @
			<label for="mailhost" class="hidden-text">이메일주소 도메인</label>
			<input type="text" id="mailhost" name="mailhost" title="이메일주소 중 도메인">
			<label for="user_email_3" class="hidden-text">이메일 도메인 선택</label>
			<select name="user_email_3" id="user_email_3" title="이메일 도메인 선택">
				<option value="" selected="selected">직접입력</option>
				<option value="nate.com">nate.com</option>
				<option value="gmail.com">gmail.com</option>
				<option value="empal.com">empal.com</option>
				<option value="naver.com">naver.com</option>
				<option value="dreamwiz.com">dreamwiz.com</option>
				<option value="hanmail.net">hanmail.net</option>
				<option value="freechal.com">freechal.com</option>
				<option value="paran.com">paran.com</option>
				<option value="hitel.net">hitel.net</option>
				<option value="hanmir.com">hanmir.com</option>
				<option value="netian.com">netian.com</option>
				<option value="lycos.co.kr">lycos.co.kr</option>
				<option value="yahoo.co.kr">yahoo.co.kr</option>
				<option value="chillian.net">chillian.net</option>
				<option value="korea.com">korea.com</option>
				<option value="hotmail.com">hotmail.com</option>
				<option value="unitel.co.kr">unitel.co.kr</option>
				<option value="nownuri.net">nownuri.net</option>
				<option value="hanafos.com">hanafos.com</option>
				<option value="kornet.net">kornet.net</option>
			</select>
		</div>
		
			<p class="box1" style="text-align:center;">뉴스레터 선택 &emsp;
				<span class="form-set form-checkbox">
					<input type="checkbox" id="news1" name="news1" value="Y">
					<label for="news1">한국여성인권진흥원 뉴스레터 [밑줄긋기] </label>
				</span>
				
				<span class="form-set form-checkbox">
					<input type="checkbox" id="news2" name="news2" value="Y">
					<label for="news2">일본군위안부연구소 뉴스레터 [웹진 결] </label>
				</span>
			</p>
		</article>

	<p class="btns txt-center">
<!-- 		<a href="" class="btn-l btn1">예</a> -->

		<input type="submit" class="btn-l btn1" value="신청하기"/>
		
		<a href="${pageContext.request.contextPath}/newsletter/newsletterUpdate.do" class="btn-l btn2" style="width:auto;">뉴스레터 수신거부</a>
	</p>
<!-- // -->
</form:form>
<script>
$("#user_email_3").change(function() {
	
	if($(this).val() != "") 
		$("#mailhost").val($(this).val())
	else
		$("#mailhost").val("");
});
;jQuery(document).ready(function($)
{
	$('form.news-ajax-form-submit').AjaxFormSubmit("","수신신청 하시겠습니까?",before_action);
	
	function before_action() {
	
		$("input#email").val($("#mailid").val()+"@"+$("#mailhost").val());
		$('#type').val("mdf");
		/*ajax 태워서  이메일이 존재하는지 여부 체크하기*/	
	}
});
</script>