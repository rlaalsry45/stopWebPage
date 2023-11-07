<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:include page="../include/sub_header.jsp">	
	<jsp:param name="snb" value="snb3.jsp" />
	<jsp:param name="tabmenu" value="" />
	<jsp:param name="path" value="정보공개" />
	<jsp:param name="path" value="경영공시" />
	<jsp:param name="path" value="정보공개목록" />
</jsp:include>
	        
<!-- 상세콘텐츠 영역 -->
<ul class="tabmenu">
	<li><a href="sub3_2.jsp">정보공개 제도</a></li>
	<li><a href="sub3_2_1_2.jsp">정보공개 제도 주요내용</a></li>
	<li><a href="sub3_2_1_3.jsp">정보공개 청구 절차</a></li>
	<li><a href="sub3_2_1_4.jsp">불복구제 절차 및 방법</a></li>
	<li class="active"><a href="sub3_2_1_5.jsp">비공개 대상 세부기준</a></li>
</ul>

<h2 class="title1">비공개 대상 세부기준</h2>

<h3 class="title2">법 제9조 제1항 제1호</h3>
<p class="point1">다른 법률 또는 법률이 위임한 명령(국회규칙·대법원규칙·헌법재판소규칙·중앙선거관리 위원회규칙· 대통령령 및 조례에 한정한다)에 따라 비밀 또는 비공개 사항으로 규정된 정보</p>
<ul class="bul1">
	<li>
		① 공직자윤리법 제14조 및 제14조의3의 규정에 의한 재산등록사항, 금융거래자료. 다만, 당해 법률에 
		의하여 공개하도록 규정된 사항은 제외
	</li>
	<li>② 행정감사규정 제28조의 규정에 의하여 감사에 종사한 공무원은 정당한 사유없이 감사로 인하여  
	알게 된 행정상의 기밀 또는 타인의 비밀누설 금지
	</li>
	<li>③ 통계법 제27조제3항, 제33조의 규정에 의한 국가안전보장·질서유지 또는 공공복리에 현저한 지장을 
	초래하거나 통계의 신뢰성이 낮아 그 이용에 혼란이 초래될 것으로 인정되는 경우의 통계 결과의 
	비공표(제27조제3항), 통계작성을 위하여 수집된 개인 또는 법인이나 단체의 비밀에 속하는 
	기초자료(제33조)</li>
	<li>
		④ 가정폭력방지 및 피해자보호 등에 관한 법률 제16조에 의한 가정폭력 피해자 상담 및 보호·치료관련 
	기록</li>
	<li>⑤ 성폭력방지 및 피해자보호 등에 관한 법률 제30조에 의한 성폭력 피해자 상담 및 보호·치료관련 
	기록</li>
	<li>⑥ 성매매방지 및 피해자보호 등에 관한 법률 제19조에 의한 성매매 피해자 상담 및 지원시설 입소자· 
	이용자관련 기록</li>
	<li>
		⑦ 아동ㆍ청소년의 성보호에 관한 법률 제31조에 의한 청소년대상 성범죄 피해청소년의 정보</li>
	<li>
		⑧ 그 밖에 법률 또는 법률에 따른 명령에 따라 개별적·구체적으로 비밀 또는 비공개하도록 규정된 
	정보 ("법률에 의한 명령"은 내부지침·예규·훈령·지시 등 "비법규 사항"을 제외함)</li>									
</ul>

<h3 class="title2">법 제9조 제1항 제2호</h3>
<p class="point1">국가안전보장ㆍ국방ㆍ통일ㆍ외교관계 등에 관한 사항으로서 공개 될 경우 국가의 중대한 이익을 현저히 
해할 우려가 있다고 인정 되는 정보</p>
<ul class="bul1">
	<li>① 대통령 국무총리 등 국무위원이 참석하는 주요행사 계획에 관한 사항으로 공개될 경우 대통령 등의 
	안전을 위협하거나 행사목적을 부당하게 침해할 수 있는 정보</li>
	<li>② 을지연습, 직장예비군 민방위대 편성표, 대테러 대비전략, 충무계획, 국가기반체계보호 단계별 대응 
	매뉴얼, 가상시나리오에 의한 모의훈련 등 국가안보와 관련되는 정보</li>
	<li>③ 정보통신망 구성도, 정보보호시스템 현황, 정보보호를 위한 내부대책과 전략 등 공개될 경우 해킹 
	사이버 테러 등 국가행정정보의 보호에 지장을 줄 수 있는 정보</li>
	<li>④ 국가안보,국방,통일,외교관계에 관한 사항으로서 국가정보원 등 관계기관으로부터 비공개요청을 
	받은 정보</li>
	<li>⑤ 국가간의 회의·회담·협의·협정 및 협약의 체결에 관한 계획·전략수립·협상대책·의제 검토 및 이와 
	받은 정보관련된 주요 정보나 지침, 지시, 연구보고 등 주요사항 중 공개될 경우 국가의 중대한 
	이익을 현저히 해할 우려가 있다고 인정되는 정보</li>
	<li>⑥ 해외 주요인사 및 기관의 접촉·대응전략 또는 협력 방안에 관한 내부방침 등 검토사항과 이와 
	관련한 주요정보·지침·지시 중 공개될 경우 국가의 중대한 이익을 현저히 해할 우려가 
	있다고 인정되는 정보</li>
</ul>

<h3 class="title2">법 제9조 제1항 제3호</h3>
<p class="point1">공개될 경우 국민의 생명·신체 및 재산의 보호에 현저한 지장을 초래할 우려가 있다고 인정되는 정보</p>
<ul class="bul1">
	<li>① 부정행위 신고민원 조사결과</li>
	<li>② 위법·부정행위 등의 통보자, 피의자, 참고인</li>
	<li>③ 국민의 생명·신체 및 재산의 보호 
	- 방재, 방범에 방해가 되는 정보 
	- 사람의 생명, 생활, 지위 등이 위협받는 정보</li>
	<li>④ 건축물 등의 경비위탁내용</li>
	<li>⑤ 위험물의 저장위치 및 통제구역 지정사항</li>
	<li>⑥ 범죄목표가 되는 시설 등의 설계도·구조·경비에 관한 정보</li>
	<li>⑦ 성폭력·가정폭력 피해자 보호시설의 상세 주소 및 입소자 정보</li>
	<li>⑧ 기타 공공의 안전과 이익에 관련된 정보</li>
</ul>

<h3 class="title2">법 제9조 제1항 제4호</h3>
<p class="point1">진행중인 재판에 관련된 정보와 범죄의 예방, 수사, 공소의 제기 및 유지, 형의 집행, 교정, 보안처분에 관한 사항으로서 공개될 경우 그 직무수행을 현저히 곤란 하게 하거나 형사피고인의 공정한 재판을 받을 권리를 침해한다고 인정 할 만한 상당한 이유가 있는 정보</p>
<ul class="bul1">
	<li>① 행정소송 등 재판과 관련된 소장, 답변서, 소송진행상황 등에 관한 정보</li>
	<li>② 진행중인 재판과 직접·구체적으로 관련되는 정보로서 공개될 경우 재판의 심리 또는 재판 결과에 
	영향을 미칠 구체적인 위험성이 있는 정보</li>
	<li>③ 수사 등의 지휘, 방법, 사실, 내용이 기록된 조서 등의 정보</li>
	<li>④ 공소의 제기 및 유지에 관한 사항 
	- 피의자가 관련내용을 알게 될 경우 법정에서 자신의 범죄를 부인하기 위한 방어자료로 활용 또는 
	증거인멸 가능성이 있는 사항</li>
	<li>⑤ 수형자의 신분기록, 교도·교화작업 관련자료, 심사자료 등에 관한 사항</li>
</ul>

<h3 class="title2">법 제9조 제1항 제5호</h3>
<p class="point1">감사·감독·검사·시험·규제·입찰계약·기술개발·인사관리에 관한 사항이나 의사결정과정 또는
내부검토과정에 있는 사항 등으로서 공개 될 경우 업무의 공정한 수행이나 연구·개발에 현저한 지장을 초래한다고 인정할 만한 상당한 이유가 있는 정보</p>
<ul class="bul1">
	<li>① 불시 감사·조사·단속·직무감찰 계획 등에 관한 사항으로서 공개될 경우 증거인멸 등 감사 등의 
		목적이 실현될수 없다고 인정되는 정보 
		가. 청소년유해환경, 유해약물조사 등 점검 및 단속계획</li>
	<li>② 문답서·확인서 등 조사활동 중 생산된 문서, 개인 비위자료 등 조사결과 처분지시서, 공무원전용비리 
		신고방 신고 및 처리서류 등 공개될 경우 공정한 업무수행을 저해할 수 있는 정보</li>
	<li>③ 공무원의 임용시험에 관한 사항으로서 시험문제 은행관리, 시험출제 관리, 시험위원 위촉, 
		시험관리관 선정, 시험시행에 관한 내부계획, 채점 및 합격자 결정과정 등 당해 시험의 공정한 
		관리를 저해할 수 있는 정보</li>
	<li>④ 입찰예정가격을 예측할 수 있는 단가, 계약완료 전에 입찰자를 식별할 수 있는 정보 등 공정한 
		계약을 저해할 수 있는 정보</li>
	<li>
		⑤ 공무원 인사에 관한 사항으로서 공무원의 임용, 인사교류, 인사평정, 교육훈련, 연금 등의 내부검토· 
		협의·결정 등이 공개될 경우 내부인사기밀이 노출되거나 외부의 부당한 개입으로 인한 인사의 
		공정성을 저해할 수 있는 정보
	</li>
	<li>⑥ 정부조직관리에 관한 사항으로서 정부조직 개편, 직제관리 등 내부검토·협의· 
		결정등 공개될 경우 외부의 부당한 개입으로 인한 정부조직관리의 공정성을 저해할 수 있는 정보</li>
	<li>⑦ 공무원이 직무수행과 관련하여 연구·검토한 사항으로서 기관의 공식적인 의사로 볼 수 없는 정보</li>
	<li>
		⑧ 법령이 정한 바에 따라 정책·제도·사업 등의 수행을 위하여 추진되는 각종 평가·진단·승인·심사·선정, 
		정책결정에 관한 사항으로서 다음 각호의 어느하나에 해당하는 사항 
		가. 해당 평가 등의 수행자 지표 방법 등에 관한 사항으로서 그 특성상 미리 공개될 경우 평가 등의 
		목적이 실현되기 어렵다고 인정되는 계획에 관한 정보 
		나. 해당 평가 등이 진행중이거나 검토과정에 관한 정보 
		다. 진행이 종료된 정보라 하더라도 그 공개로 인하여 향후 당해 업무의 공정한 수행에 명백한 
		지장을 줄 수 있는 정보
	</li>
	<li>
		⑨ 각종 위원회 등의 회의에 관한 사항으로서 다음 각호의 어느하나에 해당하는 사항 
		가. 회의의 내용이 대부분 개인의 신상·재산 등 사생활의 비밀과 관련되어 있는 정보 
		나. 회의의 내용이 공개로 인하여 외부의 부당한 압력 등 업무의 공정성을 저해할 우려가 있는 정보 
		다. 참석자의 심리적 부담으로 인하여 솔직하고 자유로운 의사교환이 이루어질 수 없다고 인정되는 
		정보 
		라. 심사 중에 있는 사건의 의결에 참여한 위원의 명단
	</li>
	<li>⑩ 각종 제도개선 추진과 관련하여 부처, 기관, 지방자치단체 등과의 협의사항, 자체 검토사항 등  
		공개될 경우 국민들에게 혼선을 야기하거나 업무수행에 명백한 지장을 줄 수 있는 정보</li>
</ul>

<h3 class="title2">법 제9조 제1항 제6호</h3>
<p class="point1">해당 정보에 포함되어 있는 성명·주민등록번호 등 개인에 관한 사항으로서 공개될 경우 사생활의 비밀 또는 자유를 침해할 우려가 있다고 인정되는 정보. 다만, 다음에 열거한 개인에 관한 정보는 제외한다.</p>
<ul class="bul1">
	<li>1. 법령이 정하는 바에 따라 열람할 수 있는 정보</li>
	<li>2. 공공기관이 공표를 목적으로 작성하거나 취득한 정보로서 사생활의 비밀과 자유를 부당하게 침해하지 않는 정보</li>
	<li>3. 공공기관이 작성하거나 취득한 정보로서 공개하는 것이 공익이나 개인의 권리구제를 위하여 필요하다고 인정되는 정보</li>
	<li>4. 직무를 수행한 공무원의 성명·직위</li>
	<li>5. 공개하는 것이 공익을 위하여 필요한 경우로써 법령에 따라 국가 또는 지방자치단체가 업무의 일부를 위탁 또는 위촉한 개인의 성명·직업</li>
</ul>
<ul class="bul1">
	<li>① 진정·탄원·질의 등 각종 민원을 제기한 개인 등의 인적사항. 이 경우 민원 내용 또는 처리결과의 
		공개만으로도 당해 민원인의 식별이 가능한 경우 그 민원내용등을 포함. 다만, 해당 민원인이 
		본인의 인적사항이나 민원내용 등의 공개에 동의하는 경우에는 제외</li>
	<li>② 특정 공무원의 집주소·집전화번호·학력·주민등록번호·사회경력 등 공적 업무 수행과 관련이 
		없는 정보. 다만, 특정 공무원을 식별할 수 없도록 통계목적 등으로 활용되는 경우는 제외</li>
	<li>③ 인사기록카드, 인사교류신청, 채용후보자 명부, 교육훈련관리, 징계심의·의결·결정통지, 신원조사, 
		퇴직사실 확인 등 인사관리 과정에서 생산·취득한 공무원의 개인에 관한 사항으로서 공개될 경우 
		공무원의 명예·신용·경제적 이익 등 사생활을 침해할 수 있는 정보. 다만, 특정 공무원을 식별할 수 
		없도록 통계목적 등으로 활용되는 경우는 제외</li>
	<li>④ 공무원 징계혐의 관련 문서 일체, 특별 사면자 인적사항, 비위면직자의 인적사항 및 비위면직사항, 
	재산등록의무자의 재산신고, 위원회 운영, 유공자 포상 등 각종 업무수행과 관련하여 취득한 
	개인의 인적사항 또는 재산상황 등의 정보</li>
	<li>⑤ 시험원서·답안지 등에 포함되어 있는 수험생의 성적·학력·주소·주민등록번호 등 개인정보</li>
	<li>⑥ 그밖에 개인정보 보호법 등 다른 법령에 개인정보의 공개여부에 대해 규정된 경우 
	그 법령에 준함</li>
  <li>※ 개인이 권리구제 또는 권리행사를 위한 입증자료로 활용하기 위하여 본인의 개인정보를 요구하는 
	경우에는 다른 법률에 특별한 규정이 있는 경우를 제외하고는 공개할 수 있음</li>
</ul>

<h3 class="title2">법 제9조 제1항 제7호</h3>
<p class="point1">법인, 단체 또는 개인(이하 '법인등' 이라 한다)의 경영상·영업상 비밀에 관한 사항으로 공개될 경우 법인 등의 정당한 이익을 현저히 해할 우려가 있다고 인정되는 정보. 다만, 다음에 열거한 정보를 제외한다.</p>
<ul class="bul1">
	<li>1. 사업활동에 의하여 발생하는 위해로부터 사람의 생명·신체 또는 건강을 보호하기 위하여 공개할 필요가 있는 정보</li>
	<li>2. 위법·부당한 사업활동으로부터 국민의 재산 또는 생활을 보호하기 위하여 공개할 필요가 있는 정보</li>
</ul>
<ul class="bul1">
	<li>① 국가보조금 지원을 받는 민간단체 또는 정부가 허가한 비영리 사단법인 관련사항 중 그 단체의 
	자금·인사 등 내부관리에 관한 정보 
		※ 단, 공공기관의 정보공개에 관한 법률 시행령 제2조(정보공개대상기관 확대) 관련 정부 또는 
	지자체로부터 5천만원 이상 재정지원을 받는 기관의 보조받는 해당업무 관련 정보는 공개</li>
	<li>② 각종 용역수행 민간업체가 제출한 사항으로서 당해업체의 기존기술·신공법·시공실적·내부관리에 
	관한 정보</li>
	<li>③ 각종 용역수행과 관련한 제안업체(개인·법인·단체 등)에 대한 기술평가결과 등 특정업체의 정당한 
	이익을 침해할 수 있는 정보</li>
</ul>

<h3 class="title2">법 제9조 제1항 제8호</h3>
<p class="point1">공개될 경우 부동산 투기·매점매석 등으로 특정인에게 이익 또는 불이익을 줄 우려가 있다고 인정되는 정보</p>
<ul class="bul1">
	<li>① 공유재산 매각공고 전의 관련 정보</li>
	<li>② 각종 주요개발계획</li>
</ul>
<!-- // -->
	          
<jsp:include page="../include/sub_footer.jsp"></jsp:include>