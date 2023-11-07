/*
 * Copyright 2008-2009 the original author or authors.
 * 
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except
 * in compliance with the License. You may obtain a copy of the License at
 * 
 * http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software distributed under the License
 * is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express
 * or implied. See the License for the specific language governing permissions and limitations under
 * the License.
 */
package egovframework.plani.template.man.metsys.web;

import java.io.PrintWriter;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.regex.Pattern;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.apache.commons.codec.binary.Base32;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import egovframework.plani.custom.memsvc.service.MemberService;
import egovframework.plani.custom.memsvc.vo.LoginVO;
import egovframework.plani.custom.memsvc.vo.MemberVO;
import egovframework.plani.template.cmm.exceptions.CmmnException;
import egovframework.plani.template.cmm.utils.EgovFileScrty;
import egovframework.plani.template.cmm.utils.EgovHttpSessionBindingListener;
import egovframework.plani.template.cmm.utils.EgovMultiLoginPreventor;
import egovframework.plani.template.cmm.utils.EgovSessionCookieUtil;
import egovframework.plani.template.cmm.utils.EgovWebUtil;
import egovframework.plani.template.cmm.utils.GoogleOtp;
import egovframework.plani.template.cmm.utils.MessageHelper;
import egovframework.plani.template.cmm.utils.ResponseResultHelper;
import egovframework.plani.template.cmm.utils.UserInfoHelper;
import egovframework.plani.template.man.log.service.ManlogService;
import egovframework.plani.template.man.metsys.service.AccessipService;
import egovframework.plani.template.man.metsys.vo.AccessipVO;
import egovframework.plani.template.man.stat.service.CommstatService;
import egovframework.rte.fdl.property.EgovPropertyService;

/**
 * 관리자 페이지 액션 컨트롤
 * 
 * @class : [ContextPath] [egovframework.plani.man.metsys.web]
 *        [EgovMetsysController.java]
 * @author : byunghanhan@PLANI
 * @date : 2013. 5. 8. 오후 5:07:57
 * @version : 1.0
 */
/*@Controller
@RequestMapping("/metsys")*/
public class MetsysController2 {

	@Resource(name = "manlogService")
	private ManlogService manlogService;
	/** CommstatService */
	@Resource(name = "commstatService")
	protected CommstatService commstatService;

	/** MemberService */
	@Resource(name = "memberService")
	MemberService memberService;

	/** AccessipService */
	@Resource(name = "accessipService")
	private AccessipService accessipService;

	/** EgovPropertyService */
	@Resource(name = "propertiesService")
	protected EgovPropertyService propertiesService;

	@Autowired
	private EgovHttpSessionBindingListener listener;
	
    @Resource(name = "googleOtp")
    private GoogleOtp googleOtp;
	

	/**
	 * 관리자 로그인
	 * 
	 * @param loginVO
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/metsysLogin", method = RequestMethod.GET)
	public Object login(@ModelAttribute("loginVO") LoginVO loginVO, HttpServletRequest request) throws Exception {
		ResponseResultHelper responseResultHelper = new ResponseResultHelper(request,
				"/template/metsys/login/metsysLogin");
		// 로그인 상태 인지 체크
		
		/*if (UserInfoHelper.isAdmin() == true) {
			// throw new
			// CmmnException(MessageHelper.getMessage("YOU-ARE-ALREADY-SIGNED-IN"));
			return "redirect:/modeur/modeurList.do?srch_menu_nix=DF13IQ59";
		}*/
		
		
		// 접속 아이피 체크
		boolean isAllow = true;
		AccessipVO accVO = new AccessipVO();
		//accVO.setAuth_cd("M0000");
		List<AccessipVO> allowipList = accessipService.selectAccessipList(accVO);
		if (allowipList != null && allowipList.size() > 0) {
			isAllow = false;
			String remoteip = EgovWebUtil.getRemoteAddr(request);
			
			remoteip = "210.179.120.189";
			
			for (int i = 0; i < allowipList.size(); i++) {
				accVO = allowipList.get(i);
				String allow_ip_tok = accVO.getAccess_ip();
				allow_ip_tok = allow_ip_tok.trim();
				if ("*".equals(allow_ip_tok) == true) {
					isAllow = true;
					break;
				}
				if (Pattern.matches(allow_ip_tok, remoteip) == true) {
					isAllow = true;
					break;
				}
			}
		}
		
		if (isAllow == false) {
			return responseResultHelper.error("", MessageHelper.getMessage("NOT-ALLOWED-IP"), null, null); /* 허용되지 않는 아이피 입니다. */
		}
		
		return "/template/metsys/login/metsysLogin";
	}

	/**
	 * 관리자 로그인 처리
	 * 
	 * @param loginVO
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/metsysLogin", method = RequestMethod.POST)
	@ResponseBody
	public Object login(@Valid LoginVO loginVO, BindingResult result, HttpServletRequest request,
			@ModelAttribute("memberVO") MemberVO memberVO) throws Exception {
		ResponseResultHelper responseResultHelper = new ResponseResultHelper(request, "/template/metsys/login/metsysLogin");
				
		// 유효성 검사
		if (result.hasErrors()) {
			return responseResultHelper.validation(result);
		}
		
		memberVO.setUser_auth_cd("M0000");
		MemberVO chkVO = memberService.checkMember(memberVO);
		
		if (chkVO == null) {

			// 조회
			MemberVO chkUsr = memberService.selectMember(memberVO);

			if (chkUsr == null || chkUsr.getUser_id().equals("nimdasys")) {
				return responseResultHelper.error("", MessageHelper.getMessage("NO-MATCHING-MEMBER-INFORMATION"), null,
						null);
			} else {

				if (chkUsr.getIs_lock().equals("Y")) {
					return responseResultHelper.error("", "비밀번호 5회 실패로 계정이 잠겨있습니다.관리자에 문의하여 주십시오.", null, null);
				}

				// 5회 패스워드 실패시 lock
				int lockCount = chkUsr.getLock_count() + 1;

				if (lockCount >= 5) {
					lockCount = 5;
					memberVO.setIs_lock("Y");
					memberService.updateIsLock(memberVO);
					manlogService.insertManlog(request, "USR_MAN", "사용자관리", "사용자계정 잠금 : " + memberVO.getUser_id(), "U");
				}

				memberVO.setLock_count(lockCount);
				memberService.updateLockCount(memberVO);
				return responseResultHelper.error("", "비밀번호를 다시 확인해 주십시오.", null, null);
			}

		} else if (chkVO.getUser_auth_lv() > 100) {
			return responseResultHelper.error("", MessageHelper.getMessage("NO-MATCHING-MEMBER-INFORMATION"), null,
					null);
		} else {

			if (chkVO.getIs_lock().equals("Y") && !chkVO.getUser_id().equals("nimdasys")) {
				return responseResultHelper.error("", "비밀번호 5회 실패로 계정이 잠겨있습니다.관리자에 문의하여 주십시오.", null, null);
			}

			chkVO.setLock_count(0);
			memberService.updateLockCount(chkVO);

			chkVO.setUser_cp_1(EgovFileScrty.decode((chkVO.getUser_cp_1())));
			chkVO.setUser_cp_2(EgovFileScrty.decode((chkVO.getUser_cp_2())));
			chkVO.setUser_cp_3(EgovFileScrty.decode((chkVO.getUser_cp_3())));
			chkVO.setUser_email(EgovFileScrty.decode((chkVO.getUser_email())));
			// 로그인 처리
			UserInfoHelper.setSessionValues(request, chkVO);
			
			/* 로그인시간을 위해서 update */
			/*memberService.updateMemberLastlogin(memberVO);*/
	
			/*if (sess_or == "1") {

				return responseResultHelper.error(null, "다른 컴퓨터에서 로그인 중 입니다.\n다시 로그인 해주시길 바랍니다.",
						"/metsys/metsysLogout.do?srch_menu_nix=DF13IQ59");
				// return responseResultHelper.error("",
				// MessageHelper.getMessage("YOU-ARE-ALREADY-ANOTHER"),
				// "/modeur/modeurList.do?srch_menu_nix=DF13IQ59", null);
			}*/

			// 비밀번호 변경기간 체크
			if (!chkVO.getUser_id().equals("nimdasys")) {

				if (chkVO.getPass_mdt_d() < -90) {

					// 90일넘어가면 로그인 미처리
					return responseResultHelper.error(null, "장기간 비밀번호를 변경하지않아 접속이 중단되었습니다. 관리자에 문의하여 주십시오.",
							"/metsys/metsysLogout.do?srch_menu_nix=DF13IQ59");
					
				} else if (chkVO.getPass_mdt_d() < -80) {
					
					int remain_day = (-80 - chkVO.getPass_mdt_d());
					return responseResultHelper.error(null, remain_day + "일 내 비밀번호를 변경하지 않으면 계정 접속이 중단됩니다.",
							"/modeur/modeurList.do?srch_menu_nix=DF13IQ59");
					
				}
			}

		}
		
		// OTP 구현시 해당 부분은 OTP 인증이 완료 되고 해당 부분이 이동되어 질때
		/*manlogService.insertManlog(request, memberVO.getUser_id(), "로그인관리", "로그인 : " + memberVO.getUser_id(), "M");*/
		
		// OTP 페이지로 화면이동		
		return responseResultHelper.success(null, null, "/metsys/metsysOtp.do", null);
	}
	
	
	/**
	 * 시스템 메인화면 처리 (처음 접속 페이지)
	 * 
	 * @param request
	 * @param model
	 * @return tiles
	 * @exception Exception
	 */
	@RequestMapping(value = "/metsysOtp" , method = RequestMethod.GET)
	public String metsysOtp(HttpServletRequest request, 
			                @ModelAttribute("memberVO") MemberVO memberVO,
			                HttpServletResponse response , Model model) throws Exception {
		
		MemberVO vo = UserInfoHelper.getLoginData();
		String userId = vo.getUser_id();
		String encodedKey = "";
		
    	// 중복로그인 방지
		
		System.out.println(userId);
		EgovHttpSessionBindingListener listener = new EgovHttpSessionBindingListener();
		String sess_or = "";
		
		if (EgovMultiLoginPreventor.findByLoginId("SESS_DUPPRV_" + userId)) {
			sess_or = "1";
		}
		
		EgovSessionCookieUtil.setSessionAttribute(request, "SESS_DUPPRV_" + userId, listener);
		
		if(sess_or.equals("1")) {
			String msg = "다른 컴퓨터에서 로그인 중 입니다.\\n다시 로그인 해주시길 바랍니다.";
			String url = "/metsys/metsysLogout.do?srch_menu_nix=DF13IQ59";
	        response.setContentType("text/html; charset=utf-8");
	        PrintWriter w = response.getWriter();
	        w.write("<script>alert('"+msg+"');location.href='"+url+"';</script>");
	        w.flush();
	        w.close();
		}
		
		String otpKey = memberService.findUserOTP(userId);
		
		
		if(otpKey == null){
    		
    			byte[] buffer = new byte[5 + 5 * 5];
    			new Random().nextBytes(buffer);
    		
    			Base32 codec = new Base32();
    		
    			byte[] secretKey = Arrays.copyOf(buffer, 10);
    			byte[] bEncodedKey = codec.encode(secretKey);

    			// 생성된 Key!
    			encodedKey = new String(bEncodedKey);
    			
    			System.out.println(encodedKey);
    		
    			try {
    			
    					MemberVO sendVo = new MemberVO();
    					sendVo.setUser_id(userId);
    					sendVo.setOtpKey(encodedKey);
    			
    					memberService.insertUserOtpKey(sendVo);
    			
    			} catch (Exception e) {
    			 
    				e.printStackTrace();
	            
    			}	
    		
    		} else {
    		
    			encodedKey = otpKey;
    		
    		}
    	
		
    	//String serverName = EgovProperties.getProperty("Globals.server.admin.name"); 
    	String qrcodeUrl = googleOtp.getQRBarcodeURL(userId, "stop.or.kr", encodedKey); // 생성된 바코드 주소!
		
    	model.addAttribute("qrcodeUrl", qrcodeUrl);
    	model.addAttribute("encodedKey", encodedKey);
    	
		return "/template/metsys/login/metsysOtp";
	}
	
	/**
	 * 시스템 메인화면 처리 (처음 접속 페이지)
	 * 
	 * @param request
	 * @param model
	 * @return tiles
	 * @exception Exception
	 */
	@RequestMapping(value = "/metsysOtpValidation" , method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> metsysOtpValidation(HttpServletRequest request, Model model) throws Exception {

    	Map<String, Object> map = new HashMap<String, Object>();
    	
    	try{
	    	String otpKey = request.getParameter("otp_key");
			String encodedKey = request.getParameter("encodedKey");
	
			boolean otpResult = googleOtp.otpResult(otpKey, encodedKey);
	
			if (!otpResult) {
				map.put("resultCode", "error");
				map.put("resultMsg", "OTP 일치하지 않습니다.");
				return map;
			}
			map.put("resultCode", "success");
    	}catch(Exception e){
    		e.printStackTrace();
    	}
    	
		return map;
	}
	
	
	/**
	 * 시스템 메인화면 처리 (처음 접속 페이지)
	 * 
	 * @param request
	 * @param model
	 * @return tiles
	 * @exception Exception
	 */
	@RequestMapping("/metsysMain")
	public String metsysMain(HttpServletRequest request, Model model) throws Exception {

		int userlv = (Integer) EgovSessionCookieUtil.getSessionAttribute(request, "SESS_USR_LV");
		if (userlv > 100)
			throw new CmmnException(MessageHelper
					.getMessage("INSUFFICIENT-PRIVILEGES")/* 권한이 부족합니다. */);

		return "/metsys/metsysMain";
	}

	/**
	 * 관리자 로그아웃.
	 * 
	 * @param request
	 * @param model
	 * @return redirect
	 * @exception Exception
	 */
	@RequestMapping("/metsysLogout")
	public String metsysLogout(HttpServletRequest request, Model model) throws Exception {
		// 로그아웃 처리
		// 로그아웃 시간 등록하기
		// MemberVO vo = new MemberVO();
		// vo.setUser_id((String)
		// EgovSessionCookieUtil.getSessionAttribute(request, "SESS_USR_ID"));
		// memberService.updateMemberLastlogout(vo);
		UserInfoHelper.removeSessionValues(request);
		return "redirect:/metsys/metsysLogin.do";
	}

	@RequestMapping(value = "/sessionCheck")
	@ResponseBody
	public boolean sessionCheck(HttpServletRequest request, Model model) throws Exception {

		// 세션 체크
		MemberVO memberVO = (MemberVO) EgovSessionCookieUtil.getSessionAttribute(request, "SESS_USR_INFO");
		// System.out.println("memberVOmemberVO=" + memberVO);
		if (memberVO == null)
			return true;
		else
			return false;
	}

}
