<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="elfunc" uri="/WEB-INF/tlds/egov_elfunc.tld"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="cutil" uri="/WEB-INF/tlds/CommonUtil.tld"%>
<style>
#excelDFrom{

	width: 65px; 
	font-size: 11px; 
	height: 14px; 
	text-align: center; 
	z-index: 11; 
	vertical-align: middle;
}

#excelDTo{

	width: 65px; 
	font-size: 11px; 
	height: 14px; 
	text-align: center; 
	z-index: 11; 
	vertical-align: middle;
}

.btn_line{
	display:block;
	width:65px;
}

#submitButton{

    height: 26px;
    margin: 0;
    padding: 0 12px 2px;
    background: #565b71;
    border: solid 1px #474c64;
    color: #fff;
    text-align: center;
    font: bold 0.95em "맑은 고딕";
    letter-spacing: -0.1em;
    cursor: pointer;
    width:60px;
}

</style>

<script>
	$(document).ready(function(){
					
		var nowDate = new Date();
		
		var nowYear = nowDate.getFullYear();
		var nowMonth = nowDate.getMonth()+1;
		var nowDay = nowDate.getDate();
		
		console.log(nowDay);
		
		if(nowDay < 10){
			nowDay = "0"+nowDay;			
		}
		
		var originNowDate = nowYear+"-"+nowMonth+"-"+nowDay;
		
		$("#excelDFrom").val(originNowDate);
		$("#excelDTo").val(originNowDate);
		
		$("#excelDFrom").datepicker({
			dateFormat: 'yy-mm-dd',
			changeMonth: 'true',
			changeYear: 'true',
			onSelect: function(dateString){
				$("#excelDFrom").val(dateString);	
			}
		});	
		
		$("#excelDTo").datepicker({
			dateFormat: 'yy-mm-dd',
			changeMonth: 'true',
			changeYear: 'true',
			onSelect: function(dateString){
				$("#excelDTo").val(dateString);	
			}
		});	
		
	});
	
</script>

사용자페이지에서 첨부파일 다운로드 시,레이어팝업으로 물어본 정보에 관한 엑셀다운로드
<br/>
<br/>
<br/>
<form id="companyVO" name="reqForm" action="/mancompany/xlsCompanyList.do?srch_menu_nix=${param.srch_menu_nix}" method="post">


<table class="tstyle_view">
				<caption>검색</caption>
				<colgroup>
					<col style="width:20%">
					<col>
				</colgroup>
				<tbody>
					<tr style="line-height: 20px;">
						<th scope="row">조회기간 설정</th>
						<td colspan= "6">
						
							<input type="text" name="excelDFrom" id="excelDFrom" value="">
								<a  href="#excelDFrom" 
									class="date-picker-control" 
									title="달력 보기" 
									id="fd-but-excelDFrom" 
									role="button" 
									aria-haspopup="true" 
									tabindex="0"><span>&nbsp;</span>
									<span class="fd-screen-reader">달력 보기</span>
								</a> 
							~ 
							<input type="text" name="excelDTo" id="excelDTo" value="">
								<a  href="#excelDTo" 
									class="date-picker-control" 
									title="달력 보기" 
									id="fd-but-excelDTo" 
									role="button" 
									aria-haspopup="true" 
									tabindex="0"><span>&nbsp;</span>
									<span class="fd-screen-reader">달력 보기</span>
								</a>
						</td>
					</tr>
					<tr style="line-height: 20px;">
						<th scope="row">구분값 선택</th>
						<td>
								<label>공모전</label><input type="checkbox" id="gubun" name = "gubun" value = "complicity"/>
						</td>
						<td>
								<label>발간자료</label><input type="checkbox" id="gubun" name = "gubun" value = "multicms_pd"/>
						</td>
						<td>
								<label>영상자료</label><input type="checkbox" id="gubun" name = "gubun" value = "BDIDX_3K0Ny2492D27W3273Vb3G2"/>
						</td>
						<td>
								<label>정기간행물</label><input type="checkbox" id="gubun" name = "gubun" value = "multicms_pp"/>
								
						</td>
						<td>
								<label>캠페인 KIT</label><input type="checkbox" id="gubun" name = "gubun" value = "multicms_ck"/>
						</td>
						<td>
							<input type = "submit" id = "submitButton" name = "submitButton" value = "출력" >
						</td>
					</tr>
				</tbody>
				</table>
				
				<input type="hidden" value = "${param.srch_menu_nix}" name = "srch_menu_nix" id = "srch_menu_nix"/>
				
				
</form>