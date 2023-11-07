<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="cutil" uri="/WEB-INF/tlds/CommonUtil.tld"%>

<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="utf-8">
	
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
	<title>${nowMenuVO.menu_nm} | 여성폭력줌인</title>
	<tiles:insertAttribute name="contMeta"/>
	<tiles:insertAttribute name="cmmnScript"/>
	<tiles:insertAttribute name="contScript" ignore="true"/>
	<tiles:insertAttribute name="boardScript" ignore="true"/>
	<tiles:insertAttribute name="srvyScript" ignore="true"/>	
	<!-- 여성인권 css 추가 -->
	<link rel="stylesheet" type="text/css" href="${cutil:url('/css/kor/zoomin.css')}" />
	<link rel="stylesheet" type="text/css" href="${cutil:url('/css/kor/respond/zoomin.css')}" />
</head>

<body>
	<!-- Accessibility -->
	<a id="uppermost" href="#contents" class="skip-to">본문 바로가기</a>
	<div id="wrap">
		<header id="header">
			<tiles:insertAttribute name="contHeader"/>
		</header>	
		<main id="main">
			<c:if test="${param.srch_menu_nix eq 'QIuR8Qcp' or param.srch_menu_nix eq 'zYCE5436' or param.srch_menu_nix eq 'O93IuxI8' or param.srch_menu_nix eq 'c88CaE30' or param.srch_menu_nix eq '5hpWUOqC'}">
				<div id="spot">
					<div class="item">
						<div class="desc">
							<span>여성폭력바로알기</span>
							<strong>
								여성폭력이란 <br/>무엇인가요?
							</strong>
							<p>여성폭력 <em>ZOOMIN</em></p>
						</div>
						<div class="txt" style = "width:985px;">
							<strong>「여성폭력방지기본법」에 따르면</strong>
							<p>
								성별에 기반한 여성에 대한 폭력으로 신체적∙정신적 안녕과 안전할 수 있는 권리 등을 침해하는 행위로서 가정폭력, 성폭력, 성매매, 성희롱, 지속적 괴롭힘 행위와 그 밖에 친밀한 관계에 의한 폭력, 정보통신망을 이용한 폭력 등을 말합니다.
							</p>
							
								<div class="main-quick-wrap">
										  <div class="main-quick" style = "margin-top:20px;">
											  <div>
												  <a href="https://women1366.kr" target="_blank" title="새창열림">
													  <dl style = "height:170px;">
														  <dt style = "margin-top:12px;">여성폭력 <br>사이버 상담</dt>
														 
													  </dl>
												  </a>
											  </div>
											  <div>
												  <a href="https://d4u.stop.or.kr/" target="_blank" title="새창열림">
													  <dl style = "height:170px;">
														  <dt style= "margin-top:20px;">디지털 성범죄 <br />피해자 지원센터<br/>
														 
														  </dt>
														  
													  </dl>
												  </a>
											  </div>
											  <div>
												  <a href="https://wecan.stop.or.kr" target="_blank" title="새창열림">
													  <dl style = "height:170px;">
														  <dt style="margin-top:20px;">성희롱·성폭력 근절 <br />종합지원센터<br/>
														  	
														  </dt>
														  
													  </dl>
												  </a>
											  </div>
											  
										  </div>
									  </div>
						</div>
					</div>
				</div>
			</c:if>
			
			<div class="cont-wrap">
				<%-- <c:if test="${param.srch_menu_nix eq 'QIuR8Qcp' or param.srch_menu_nix eq 'zYCE5436' or param.srch_menu_nix eq 'O93IuxI8' or param.srch_menu_nix eq 'c88CaE30' or param.srch_menu_nix eq '5hpWUOqC'}"> --%>
					<c:import url="/SiteMenuWidget/sidemenu.do" >
						<c:param name="use" value="Y" />
					</c:import>
				<%-- </c:if>
 --%>
				<div id="contents">
					<div class="cont-top">
						<%-- <c:if test="${param.srch_menu_nix eq 'QIuR8Qcp' or param.srch_menu_nix eq 'zYCE5436' or param.srch_menu_nix eq 'O93IuxI8' or param.srch_menu_nix eq 'c88CaE30' or param.srch_menu_nix eq '5hpWUOqC'}"> --%>
							<c:import url="/SiteMenuWidget/path.do" >
								<c:param name="use" value="N" />
								<c:param name="viewFile" value="site_path"/>
							</c:import>
						<%-- </c:if> --%>
					</div>
					<div class="cont-mid">
						<%-- <c:if test="${param.srch_menu_nix eq 'QIuR8Qcp' or param.srch_menu_nix eq 'zYCE5436' or param.srch_menu_nix eq 'O93IuxI8' or param.srch_menu_nix eq 'c88CaE30' or param.srch_menu_nix eq '5hpWUOqC'}"> --%>
							<!-- 상세콘텐츠 영역 -->
							<c:import url="/SiteMenuWidget/tabmenu.do" >
								<c:param name="use" value="N" />
							</c:import>
						<%-- </c:if> --%>
						
						<tiles:insertAttribute name="contContent"/>
					</div>
				</div>
			</div>
		</main>
		
		<footer id="footer">
			<tiles:insertAttribute name="contFooter"/>
		</footer>	
	</div>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.bxslider.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/kor/layout.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/kor/sub.js"></script>
	
</body>

</html>




<!--     //////////////////////////////////////////////////////////////////////////////////////////////////////////   -->



<%--
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<title>
	${nowMenuVO.menu_nm} - ${SESS_PROP_PRJTNM}
</title>
<tiles:insertAttribute name="contMeta"/>
<tiles:insertAttribute name="cmmnScript"/>
<tiles:insertAttribute name="contScript" ignore="true"/>
</head>


<body>
	
	<!--  ## TPCODE : TPAGE0010 : 컨텐츠 레이아웃 ## -->
	
	<!-- Accessibility -->
	<dl id="accessibility">
		<dt class="hidden"><strong>바로가기 메뉴</strong></dt>
		<dd><a href="#body">본문바로가기</a></dd>
		<dd><a href="#gnavigation">메뉴바로가기</a></dd>
	</dl>
	<!-- //Accessibility -->



	<div id="wrap" class="">
		
		<header id="header">
			<tiles:insertAttribute name="contHeader"/>
		</header>
		
		<section id="body">
			<%--<tiles:insertAttribute name="contSidemenu"/>--%>
			
<%-- 			<c:import url="/widgets/sidemenu.do" >
				<c:param name="mu_site" value="CDIDX00002" />
				<c:param name="mu_lang" value="CDIDX00022" />
				<c:param name="srch_mu_gub" value="USR" />
			</c:import> 
			<c:import url="/SiteMenuWidget/sidemenu.do" >
				<c:param name="use" value="Y" />
			</c:import>
			<!-- 프로젝트마다 변경되는 컨텐츠 내부의 레이아웃은 여기에 추가합니다 Start -->
			<section id="content">
				<%-- <c:import url="/widgets/tabmenu.do" >
				</c:import>
				<c:import url="/SiteMenuWidget/tabmenu.do" >
					<c:param name="use" value="Y" />
				</c:import>
							
			
				<%-- <c:import url="/widgets/path.do" >
					<c:param name="popup_cnt" value="3" />
				</c:import>
				<c:import url="/SiteMenuWidget/path.do" >
					<c:param name="use" value="Y" />
				</c:import>
							
			<!-- 프로젝트마다 변경되는 컨텐츠 내부의 레이아웃은 여기에 추가합니다 End  -->
			
			<tiles:insertAttribute name="contContent"/>
			
			<!-- 프로젝트마다 변경되는 컨텐츠 내부의 레이아웃은 여기에 추가합니다 Start -->
			</section>
			

			<!-- 프로젝트마다 변경되는 게시판 내부의 레이아웃은 여기에 추가합니다 End  -->
			
			
			<tiles:insertAttribute name="contQuicklink"/>
		</section>
		
		<!-- layout-container//-->
		<footer id="footer">
			<tiles:insertAttribute name="contFooter"/>
		</footer>
	</div>	

</body>

</html>



 --%>