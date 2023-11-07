<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>관리자 로그인</title>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="keywords" content="로그인" />
<meta name="description" content="관리자 페이지 로그인" />
<meta name="copyright" content="Copyright 2013 PLANI, all rights reserved." /> 
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/template/metsys/login.css"  />
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery/core/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery/plugins/form/4.2.2/jquery.form.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery/plugins/jquery-plani.ajax_form_submit.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/common.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.4.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
</head>
<script>
	function reg(){
		$("#modalWrap").show();
	}
	
	$(document).ready(function(){
		//const modal = document.getElementById('modalWrap');
		
		$("#closeBtn").click(function(){
			
			$("#modalWrap").hide();
			
		});
		
	    $("#otpKey").keydown(function (key) {
	        if (key.keyCode == 13) {
	        	
	        	event.preventDefault();
	        	otpValidation();
	        	
	        }
	    });
		
		
		$("#otpValidationButton").click(function(){
			
			otpValidation();
			
		});
		
	
	});
	
	function otpValidation(){
		
		if($("#otpKey").val() == ''){
			
			alert("OTP 값을 입력하여 주세요");
			return;
		}
		
		
		$.ajax({
			
		       url 		: "${pageContext.request.contextPath}/metsys/metsysOtpValidation.do",
			   data     : {"otp_key":$("#otpKey").val(),"encodedKey": $("#encodedKey").val()},
			   type     : "POST",
		       success 	: function(data){
		    	 
		    	   console.log(data);
		    	   
		    	   if(data.resultCode == 'success'){
		    		   
		    		   location.href = "${pageContext.request.contextPath}/modeur/modeurList.do?srch_menu_nix=DF13IQ59";
		    		    
		    	   }else{
		    		   
		    		   alert(data.resultMsg);
		    		   
		    	   }
		       },
		       error: function(xhr, err){
		           
		       	alert("에러가 발생했습니다.");
		       }
			
		});
		
	}


</script>
<style>

#modalWrap {
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 100px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  text-align:center;
}


#modalBody {
  width: 500px;
  height: 300px;
  padding: 30px 30px;
  margin: 0 auto;
  border: 1px solid #777;
  background-color: #fff;
}

#closeBtn {
  float:right;
  font-weight: bold;
  color: #777;
  font-size:25px;
  cursor: pointer;
}


</style>
<form id="otpForm">
<div id="wrap">
	<h1 class = "logo">한국여성인권진흥원 기관대표 OTP 인증</h1>	
	
	<input type = "hidden" id = "encodedKey" name = "encodedKey" value = "${encodedKey}">
	
	<section id="loginForm">
		<div class="idpw_area">
			<p><input type="text" id = "otpKey" name = "otpKey" value="" style = "background:none; padding-left: 15px;"/></p>
			<p class="point02"></p>
		</div>
			<input type="button" name="otpValidationButton" id="otpValidationButton" value="login" class="bgColor" style="cursor:pointer; width:100%; height:40px; border:solid 0px; font-size:11pt; color:#fff">
			<input type="button" name="otpRegButton" id="otpRegButton" value="OTP 등록" class="bgColor" onclick = "reg();" style="margin-top:10px; cursor:pointer; width:100%; height:40px; border:solid 0px; font-size:11pt; color:#fff">
	</section>	
	<!-- //login_content -->
</div>
</form>

	<div id="modalWrap" style = "display:none;">
  		<div id="modalContent">
    		<div id="modalBody">
     			<span id="closeBtn">&times;</span> 
      			    
      			    <p>OTP 앱을 실행 후 아래의 바코드 또는 인증 코드를 입력하세요.</p>
                    <div class="qr_code">
                        <img src="${qrcodeUrl}" alt="qrcode" style="width:200px;">
                    </div>
                     <p>인증코드 ${encodedKey}</p>
    		</div>
  		</div>
	</div>

</body>
</html>