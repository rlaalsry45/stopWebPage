<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="elfunc" uri="/WEB-INF/tlds/egov_elfunc.tld"%> 
<script type="text/javascript">
$( document ).ready(function() {
	fnToList = function(pageIndex){
		
		if(typeof pageIndex == "undefined"){
			$("#pageIndex").val("1");
		}else{
			$("#pageIndex").val(pageIndex);
		}
		
		$("#listFrm").attr("action","/project/list.do");
		$("#listFrm").submit();
	};	
	
	
	
 	//jsp 파일 내 선언방법
	var _fileOption = [
	              		{
	              			objFileMode : "target",
	              			objFileInput : "#inputFile",
	              			objFileContainer : "#fileContainer",
	              			objFileHtml : "<p style='padding-top:5px;'><a href='javascript:;' onclick='downFileSingle(\"#jqXHR.atchFileId\")'><input type='hidden' name='atchFileId' value='#jqXHR.atchFileId'>#jqXHR.orignlFileNm</a><a href='javascript:;' class='imgDelete'>[삭제]</a></p>",
	              			objFileLimit : 20,
	              			objFileCallback : false
	              		}
	              	];
	
	
  	//#jqXHR.logicFileStreCours : 저장경로, #jqXHR.orignlFileNm : 원본 파일명, 	#jqXHR.streFileNm : 저장된 파일명
  	initFileUpload(_fileOption); 
	
	
// 	fnToList = function(){
// 		$("#listFrm").find("input[name=pbd_seq]").remove();
// 		$("#listFrm").attr("action","/project/list.do");
// 		$("#listFrm").submit();
// 	};	
	
	fnToRegist = function(){
		var inputCheckArray = new Array("pbd_category","pbd_req_title","pbd_due_dt");
		var inputNameArray = new Array("점검항목을 선택해 주세요.","제목을 입력해 주세요.","완료요청일을 입력해 주세요.");

		for ( var i = 0; i < inputCheckArray.length; i++ ) {
			if($("#"+inputCheckArray[i]).val() == ""){
				alert(inputNameArray[i]);
				$("#"+inputCheckArray[i]).focus();
				return false;
			}
	    }
		
		
		//setForm(Editor);	//editor textarea setting

		var editorData = Editor.getCanvas().getContent();
		if(editorData == "" || editorData == "<p><br></p>"){
			alert("내용을 입력해 주세요.");
			return false;
		}
		
		$("#pbd_req_content").val(editorData);
		
		$.ajax({
			url: "/project/jsonWrite.do",
			type: "post",
			data: $('#frm').serialize(),
			async:false,
			success:function (response) {
				
				var data = JSON.parse(response);
				
				alert(data.result.msg);
				if(data.result.status == "success"){
					//data.result.pbdSeq : pbdSeq
					//이후 메일전송 호출
					
					fnToList();
				}
			}
		});
		
		 
		 
	};
	
	fnToCancel = function(){
		if(confirm("작성중인 내용이 저장되지 않습니다. 계속진행하시겠습니까?")){
			fnToList();
		}	
	};
	
	fnAddRow = function(obj,addSize){
		//기본 5개까지만 추가되도록 설정
		if(typeof addSize == "undefined") addSize = 5;
		console.log($(obj));
		var tagName = $(obj).prev().get(0).tagName;
		if($(obj).parent().children(tagName).size() < addSize){
			var delBtn = "<br /><a href=\"javascript:;\" onclick=\"fnDelRow(this)\" class=\"sbtn sMinus\">제거</a>";
			var addObj = $(obj).prev().clone(true);	//이벤트까지 복사함
			addObj.find("input").val("");
			
			//부모객체를 기준으로 append
			$(obj).parent().append(addObj);
			$(obj).parent().append(delBtn);	
		}else{
			alert("최대 5개까지만 등록이 가능합니다.");
		}
	};
	
	// 파일등록란 삭제
	fnDelRow = function(obj){
		//$(obj).prev().prev().prev().remove();
		$(obj).prev().prev().remove();	//ul
		$(obj).prev().remove();			//br
		$(obj).remove();					///delBtn
	};
	
	fnCallMemberPopup = function(){

	};
	 
	$("#pbdDueDt").datepicker({
		dateFormat: 'yy-mm-dd',
		changeMonth: 'true',
		changeYear: 'true'
	});

	
});
</script>
<form name="listFrm" id="listFrm" method="get" action="">
<input type="hidden" name="pageIndex" value="${vo.pageIndex }">
<input type="hidden" name="pbd_req_type" value="<c:out value="${vo.pbdReqType }" />">
<input type="hidden" name="pbd_year" value="<c:out value="${vo.pbdYear }" />">
<input type="hidden" name="pbd_category" value="<c:out value="${vo.pbdCategory }" />">
<input type="hidden" name="searchType" value="<c:out value="${vo.searchType }" />">
<input type="hidden" name="searchWord" value="<c:out value="${vo.searchWord }" />">
<input type="hidden" name="pageUnit" value="${vo.pageUnit }">
<input type="hidden" name="srch_menu_nix" id="srch_menu_nix" value="${vo.srchMenuNix }">
</form>
				<div id="divMainArticle">
					<form name="frm" id="frm" method="post" action="">
					<input type="hidden" name="pid_cd" id="pid_cd" value="<c:out value="${vo.pidCd }" />">
					<input type="hidden" name="pbd_no" id="pbd_no" value="<c:out value="${result.pbdNo }" />">
					<input type="hidden" name="pbd_req_type" id="pbd_req_type" value="<c:out value="${empty result.pbdReqType ? '요청' : '재요청' }" />">
					<table class="tstyle_view">
						<caption>테이블</caption>
						<colgroup>
							<col style="width:15%"/>
							<col style="width:35%"/>
							<col style="width:15%"/>
							<col />
						</colgroup>
						<tbody>
							<tr>	
								<th scope="row">점검항목</th>
								<td>
									<select name="pbd_category" id="pbd_category" style="width:112px">
										<option value="" >선택</option>
										<option value="그룹웨어" ${result.pbdCategory eq '그룹웨어' ? 'selected="selected"':''}>그룹웨어</option>
										<option value="홈페이지" ${result.pbdCategory eq '홈페이지' ? 'selected="selected"':''}>홈페이지</option>
										<option value="위기청소년" ${result.pbdCategory eq '위기청소년' ? 'selected="selected"':''}>위기청소년</option>
										<option value="사이버상담" ${result.pbdCategory eq '사이버상담' ? 'selected="selected"':''}>사이버상담</option>
										<option value="해바라기센터" ${result.pbdCategory eq '해바라기센터' ? 'selected="selected"':''}>해바라기센터</option>
										<option value="디성" ${result.pbdCategory eq '디성' ? 'selected="selected"':''}>디성</option>
										<option value="기타" ${result.pbdCategory eq '기타' ? 'selected="selected"':''}>기타</option>
										<option value="해바라기고도화" ${result.pbdCategory eq '해바라기고도화' ? 'selected="selected"':''}>해바라기고도화</option>
										<option value="조직진단" ${result.pbdCategory eq '조직진단' ? 'selected="selected"':''}>조직진단</option>
										<option value="종사자 교육포털" ${result.pbdCategory eq '종사자 교육포털' ? 'selected="selected"':''}>종사자 교육포털</option>
									</select>
								</td>
								<th scope="row">완료요청일</th>
								<td>
									<input type="text" name="pbd_due_dt" id="pbd_due_dt" style="width:120px;" value="<c:out value="${result.pbdDueDt }" />"  placeholder="2019-01-01" readonly/>
								</td>
							</tr>
							<%-- <tr>	
								<th scope="row">참조</th>
								<td colspan="3">
									<input type="hidden" name="pbdRefMemArray" id="pbdRefMemArray" value="<c:out value="${result.pbdRefMemArray }" />">
									<input type="text" name="pbdRefMemArrayNm" id="pbdRefMemArrayNm" style="width:90%;" value="<c:out value="${result.pbdRefMemArrayNm }" />"  placeholder="이메일 참조" readonly /><button class="btn bg01" onclick="fnCallMemberPopup(); return false;">선택</button>
								</td>
							</tr> --%>
							<tr>	
								<th scope="row">제목</th>
								<td colspan="3"><input type="text" name="pbd_req_title" id="pbd_req_title" style="width:90%;" value="<c:out value="${result.pbdReqTitle }" />"  placeholder="제목을 입력해 주세요." /></td>
							</tr>
							<tr>	
								<th scope="row">내용</th>
								<td colspan="3">
									<%-- <div class="textarea">
										<!--DaumEditor 시작 -->
								    	<jsp:include page="/daumEditor/editor.jsp" flush="false" >
								    	<jsp:param name="editor_type" value="image"/>
								    	<jsp:param name="return_form_name" value="frm"/>
								    	<jsp:param name="return_textarea_name" value="pbd_req_content"/>
								    	</jsp:include>		
										<!--DaumEditor 끝 -->											
									</div> --%>
									<div id="editor_frame"></div>
									<textarea name="pbd_req_content" id="pbd_req_content" rows="" cols="" class="display_none"><c:out value="${result.pbdReqContent}" escapeXml="false" /></textarea>
								</td>
							</tr>
							<tr>	
								<th scope="row">첨부파일</th>
								<td colspan="3">
									<div class="filebox preview-image">
										<!-- 첨부파일 호출 요소 -->
										<label>
											파일선택
											<input type="file" name="inputFile" id="inputFile" class="upload-hidden" multiple="multiple"/>
											<!-- DB에 등록될 atchFileId가 저장될 input 개발시 input type hidden으로 변경
											<input type="hidden" name="atchFileId" style="width:100px;" readonly="readonly"/> -->
										</label>
										<!-- 등록파일명이 표출되는 input  -->
									</div>
									<div id="fileContainer"></div>
								</td>
							</tr>				
						</tbody>
					</table>
					</form>
					<div class="btn_area_right">
						<button class="btn_line" onclick="fnToCancel(); return false;">취소</button>
						<button class="btn_line" onclick="fnToRegist(); return false;">등록</button>
					</div>
					
			</div>
		<!-- //content --> 

