$(document).ready(function(e) {
	$('img[usemap]').rwdImageMaps();
});

function listEvent(idx) {
	idx = Number(idx);
	console.log("idx : " + idx);
	var html = undefined;
	switch (idx) {
	case 1: 
		html = '<dl><dt>인천시</dt><dd><ul>'
				+ '<li class="marker"><strong class="txt_t">캠페인</strong></li>'
				+ '<li class="title">당신과 나의, 우리의 관심으로 사라질 성착취</li>'
				+ '<li class="comments">희희낙낙상담소, 달빛공방자활지원센터, 2022.8.31.(수)</li>'
				+ '<li class="title">성평등 문화확산 캠페인</li>'
				+ '<li class="comments">(사)인권희망 강강술래, 2022.9.15.(목)</li>'
				+ '<li class="underline"></li>'
				+ '<li class="marker"><strong class="txt_t">전시회</strong></li>'
				+ '<li class="title">미추홀구 양성평등 주간 기념행사(옐로우하우스 집결지 폐쇄과정 전시회 & 자활작품 전시 및 판매)</li>'
				+ '<li class="comments">미추홀구청, 2022.9.1.(목)~2022.9.7.(수)</li>'
				+ '</ul></dd></dl>'
		break;
	case 2: 
		html = '<dl><dt>서울시</dt><dd><ul>'
				+ '<li class="marker"><strong class="txt_t">캠페인</strong></li>'
				+ '<li class="title">성매매 추방주간 캠페인(버스 광고)</li>'
				+ '<li class="comments">에이레네 상담소, 2022.9.1.(목)~2022.9.30.(금)</li>'
				+ '<li class="underline"></li>'
				+ '<li class="marker"><strong class="txt_t">토론회</strong></li>'
				+ '<li class="title">왜 노르딕 모델인가: 프랑스 노르딕 모델 법 제정을 이끈 성매매경험당사자와 정책입안자에게 듣는다!</li>'
				+ '<li class="comments">성매매문제해결을위한전국연대, 2022.9.24.(토)</li>'
				+ '<li class="underline"></li>'
				+ '<li class="marker"><strong class="txt_t">포럼</strong></li>'
				+ '<li class="title">의료지원 포럼 &lt;성매매는 성착취다&gt;</li>'
				+ '<li class="comments">십대여성인권센터, 2022.9.5.(월)</li>'
				+ '<li class="underline"></li>'
				+ '<li class="marker"><strong class="txt_t">행진</strong></li>'
				+ '<li class="title">성매매처벌법개정 촉구 전국행진 서울팀 행사</li>'
				+ '<li class="comments">성매매처벌법개정연대, 2022.9.23.(금)</li>'
				+ '</ul></dd></dl>'
		break;
	case 3: 
		html = '<dl><dt>경기도</dt><dd><ul>'
				+ '<li class="marker"><strong class="txt_t">캠페인</strong></li>'
				+ '<li class="title">2022년 성매매 추방주간 캠페인</li>'
				+ '<li class="comments">여성인권센터 쉬고, 2022.9.19.(월)~2022.9.23.(금)</li>'
				+ '<li class="title">성매매 방지주간 캠페인</li>'
				+ '<li class="comments">평택여성인권상담센터 품 2022.9.22.(목)</li>'
				+ '</ul></dd></dl>'
		break;
	case 4: 
		html = '<dl><dt>세종시</dt><dd><ul>'
				+ '</ul></dd></dl>'
		break;
	case 5: 
		html = '<dl><dt>대전시</dt><dd><ul>'
				+ '<li class="marker"><strong class="txt_t">캠페인</strong></li>'
				+ '<li class="title">대전역 성매매 집결지 걷기 행사</li>'
				+ '<li class="title">이제는 성매매 여성 비범죄화!</li>'
				+ '<li class="comments">여성인권티움, 2022.9.21.(수)</li>'
				+ '<li class="underline"></li>'
				+ '<li class="marker"><strong class="txt_t">토론회</strong></li>'
				+ '<li class="title">대전역 성매매 집결지 정책 토론회</li>'
				+ '<li class="comments">여성인권티움, 2022.9.6.(화)</li>'
				+ '<li class="underline"></li>'
				+ '<li class="marker"><strong class="txt_t">전시회</strong></li>'
				+ '<li class="title">대전역 성매매 집결지 아카이빙 전시회</li>'
				+ '<li class="title">도시의 섬 : 무형의 결계를 꺠고</li>'
				+ '<li class="comments">여성인권티움, 2022.9.20.(화)~2022.9.27.(화)</li>'
				+ '</ul></dd></dl>'
		break;
	case 6: 
		html = '<dl><dt>광주시</dt><dd><ul>'
				+ '<li class="marker"><strong class="txt_t">캠페인</strong></li>'
				+ '<li class="title">2022 성매매 추방주간 기념행사</li>'
				+ '<li class="comments">광주여성인권지원센터, 2022.9.23.(금)</li>'
				+ '<li class="underline"></li>'
				+ '<li class="marker"><strong class="txt_t">북콘서트</strong></li>'
				+ '<li class="title">뭉치 북콘서트</li>'
				+ '<li class="comments">광주여성인권지원센터, 2022.10.7.(금)</li>'
				+ '<li class="underline"></li>'
				+ '<li class="marker"><strong class="txt_t">전시회</strong></li>'
				+ '<li class="title">성매매 예방 이미지 포스터 수상작 전시</li>'
				+ '<li class="comments">광주여성의전화 부설 한올지기, 9월 중</li>'
				+ '</ul></dd></dl>'
		break;
	case 7: 
		html = '<dl><dt>대구시</dt><dd><ul>'
				+ '<li class="marker"><strong class="txt_t">캠페인</strong></li>'
				+ '<li class="title">성매매 추방주간 캠페인</li>'
				+ '<li class="comments">민들레상담소, 2022.9.23.(금)</li>'
				+ '</ul></dd></dl>'
		break;
	case 8: 
		html = '<dl><dt>울산시</dt><dd><ul>'
				+ '<li class="marker"><strong class="txt_t">기념행사</strong></li>'
				+ '<li class="title">성매매 추방주간 기념행사 : 동행</li>'
				+ '<li class="comments">울산성매매피해상담소, 2022.9.18.(일)</li>'
				+ '</ul></dd></dl>'
		break;
	case 9: 
		html = '<dl><dt>강원도</dt><dd><ul>'
				+ '<li class="marker"><strong class="txt_t">캠페인</strong></li>'
				+ '<li class="title">성매매 처벌법 개정 성평등 모델로 가자/li>'
				+ '<li class="comments">춘천길잡이의 집, 2022.9.23.(금)</li>'
				+ '</ul></dd></dl>'
		break;
	case 10: 
		html = '<dl><dt>충청북도</dt><dd><ul>'
				+ '<li class="marker"><strong class="txt_t">기념행사</strong></li>'
				+ '<li class="title">충북 성매매 추방주간 행사</li>'
				+ '<li class="comments">사단법인 충북여성인권 부설 상담소 늘봄, 2022.9.23.(금)</li>'
				+ '</ul></dd></dl>'
		break;
	case 11: 
		html = '<dl><dt>충청남도</dt><dd><ul>'
				+ '<li class="marker"><strong class="txt_t">캠페인</strong></li>'
				+ '<li class="title">성매매추방주간 성매매 방지 캠페인</li>'
				+ '<li class="comments">충남여성인권상담센터, 2022.9.23.(금)</li>'
				+ '</ul></dd></dl>'
		break;
	case 12: 
		html = '<dl><dt>경상북도</dt><dd><ul>'
				+ '<li class="marker"><strong class="txt_t">행진</strong></li>'
				+ '<li class="title">여성폭력 추방 캠페인</li>'
				+ '<li class="comments">경북현장상담센터 새날 2022.9.23.(금)</li>'
				+ '</ul></dd></dl>'
		break;
	case 13: 
		html = '<dl><dt>전라북도</dt><dd><ul>'
			+ '</ul></dd></dl>'
		break;
	case 14: 
		html = '<dl><dt>경상남도</dt><dd><ul>'
				+ '<li class="marker"><strong class="txt_t">캠페인</strong></li>'
				+ '<li class="title">변화의 자리, 안전한 내일을 꿈꾸다</li>'
				+ '<li class="comments">창원시여성폭력방지위원회, 2022.9.19.(월)</li>'
				+ '<li class="title">성매매추방주간 캠페인</li>'
				+ '<li class="comments">경남여성인권지원센터, 2022.9.19.(월)~2022.9.23.(금) 중 1일</li>'
				+ '<li class="underline"></li>'
				+ '<li class="marker"><strong class="txt_t">행진</strong></li>'
				+ '<li class="title">성매매 처벌법 개정 촉구를 위한 전국행진</li>'
				+ '<li class="comments">현장상담센터협의회, 2022.9.19.(월)~2022.9.23.(금)</li>'
				+ '</ul></dd></dl>'
		break;
	case 15: 
		html = '<dl><dt>전라남도</dt><dd><ul>'
				+ '<li class="marker"><strong class="txt_t">캠페인</strong></li>'
				+ '<li class="title">성매매 방지 캠페인</li>'
				+ '<li class="comments">목포여성인권지원센터, 2022.9.16.(금)</li>'
				+ '<li class="title">성매매 추방주간 홍보 캠페인, 인식조사</li>'
				+ '<li class="comments">여수여성인권지원센터, 2022.9.21.(수)</li>'
				+ '<li class="underline"></li>'
				+ '<li class="marker"><strong class="txt_t">전시회</strong></li>'
				+ '<li class="title">성매매 근절 일러스트 공모작품 전시회</li>'
				+ '<li class="comments">목포여성인권지원센터, 2022.9.19.(월)~2022.9.30.(금)</li>'
				+ '</ul></dd></dl>'
		break;
	case 16: 
		html = '<dl><dt>부산시</dt><dd><ul>'
				+ '<li class="marker"><strong class="txt_t">캠페인</strong></li>'
				+ '<li class="title">성매매 추방주간 기념행사 – 시민 참여 캠페인</li>'
				+ '<li class="comments">부산광역시, 2022.9.22.(목)</li>'
				+ '<li class="title">우리의 관심이 성매매 없는 일상을 지킵니다</li>'
				+ '<li class="comments">부산광역시, 2022.9.22.(목)</li>'
				+ '<li class="underline"></li>'
				+ '<li class="marker"><strong class="txt_t">행진</strong></li>'
				+ '<li class="title">성매매처벌법 개정 촉구를 위한 전국행진</li>'
				+ '<li class="comments">(사)여성인권지원센터 살림, 2022.9.19.(목)</li>'
				+ '</ul></dd></dl>'
		break;
	case 17: 
		html = '<dl><dt>제주도</dt><dd><ul>'
				+ '<li class="marker"><strong class="txt_t">캠페인</strong></li>'
				+ '<li class="title">성매매 방지법 시행 18주년 및 제8차 성매매 추방주간 캠페인 Let’s go with 시민 & stop 성매매</li>'
				+ '<li class="comments">제주특별자치도 광역정신건강복지센터, 2022.9.17.(토)</li>'
				+ '<li class="underline"></li>'
				+ '<li class="marker"><strong class="txt_t">전시회</strong></li>'
				+ '<li class="title">자활작품 전시회: 오만가지 이야기</li>'
				+ '<li class="comments">제주여성자활지원센터, 2022.9.19.(월)~9.23.(금)</li>'
				+ '<li class="underline"></li>'
				+ '<li class="marker"><strong class="txt_t">행진</strong></li>'
				+ '<li class="title">성매매처벌법 개정 촉구 전국행진 제주출범식: 성매매여성 처벌조항 삭제, 가자! 성평등 모델</li>'
				+ '<li class="comments">제주여성인권연대, 2022.9.19.(월)</li>'
				+ '<li class="title">산지천 집결지 순례</li>'
				+ '<li class="comments">제주여성인권연대, 2022.9.19.(월)</li>'
				+ '</ul></dd></dl>'
		break;
	case 18: 
		html = '<dl><dt>온라인</dt><dd><ul>'
				+ '<li class="title">성평등 가치 확산을 위한 대중강연(성매매여성비범죄화)</li>'
				+ '<li class="comments">(사)인권희망 강강술래, 2022.9.6.(화)</li>'
				+ '<li class="underline"></li>'
				+ '<li class="title">성매매 추방주간 캠페인</li>'
				+ '<li class="comments">성매매처벌법개정연대, 2022.9.20.(화)~2022.9.21.(목)</li>'
				+ '<li class="underline"></li>'
				+ '<li class="title">성착취 없는 일상 챌린지</li>'
				+ '<li class="comments">김해성인권지원센터 어울림 - 2022.9.19.(월)~9.26.(일)</li>'
				+ '<li class="underline"></li>'
				+ '<li class="title">성매매 추방주간 캠페인 1만명 서명운동</li>'
				+ '<li class="comments">성매매처벌법개정연대, 2022.9.20.(화)~2022.9.21(수)</li>'
				+ '<li class="underline"></li>'
				+ '<li class="title">성매매에 대한 10대의 인식조사</li>'
				+ '<li class="comments">성매매피해아동청소년지원센터 모아, 2022.9.13.(화)~2022.9.26.(화)</li>'
				+ '<li class="underline"></li>'
				+ '<li class="title">성매매방지법 시행 18주년 기획 캠페인 연속강좌 : 가자 여성들의 비범죄화를 향하여</li>'
				+ '<li class="comments">오늘상담소, 2022.9.7.(수), 2022.9.14.(수), 2022.9.21.(수)</li>'
				+ '</ul></dd></dl>'
		break;
	}

	if (html) {
		$('.eventMap').html(html);
	}

}



function listEvent2(idx) {
	idx = Number(idx);
	console.log("idx : " + idx);
	var html = undefined;
	switch (idx) {
	case 1: 
		html = '<dl><dt>인천시</dt><dd><ul>'
				+ '<li class="marker"><strong class="txt_t">캠페인</strong></li>'
				+ '<li class="title">성폭력 ·가정폭력 추방 캠페인</li>'
				+ '<li class="comments">인하대학교, 11.25.(금)</li>'
				+ '<li class="title">성폭력 ·가정폭력 추방 캠페인</li>'
				+ '<li class="comments">연안부두 11.29(화)</li>'
				+ '<li class="title">성폭력 ·정폭력 근절 홍보</li>'
				+ '<li class="comments">관내 편의점, 11월 중</li>'
				+ '</ul></dd></dl>'
		break;
	case 2: 
		html = '<dl><dt>서울시</dt><dd><ul>'
				+ '<li class="marker"><strong class="txt_t">캠페인</strong></li>'
				+ '<li class="title">여성폭력 추방 캠페인</li>'
				+ '<li class="comments">서울 전역(중랑역, 도봉구청, 석촌호수 등), 11.25.(금)</li>'
				+ '<li class="title">불법촬영 근절 및 성폭력</li>'
				+ '<li class="comments">가정폭력추방 합동캠페인, 서초구청 지하철 역사, 11.30.(수)</li>'
				+ '<li class="title">직장내 성희롱 대응 정보 확산 캠페인</li>'
				+ '<li class="comments">장소 미정11.14.(월)~12.12(월)</li>'
				+ '<li class="underline"></li>'
				+ '<li class="marker"><strong class="txt_t">토론회</strong></li>'
				+ '<li class="title">직장내 성희롱 근절을 위한 대시민 오프라인 집담회</li>'
				+ '<li class="comments">위드유센터, 11.25.(금)</li>'
				+ '</ul></dd></dl>'
		break;
	case 3: 
		html = '<dl><dt>경기도</dt><dd><ul>'
				+ '<li class="marker"><strong class="txt_t">캠페인</strong></li>'
				+ '<li class="title">가정폭력 ·성폭력 ·디지털성폭력 ·스토킹 추방캠페인</li>'
				+ '<li class="comments">수원역광장, 12.1.(목)</li>'
				+ '<li class="title">성폭력추방캠페인</li>'
				+ '<li class="comments">부천중앙공원, 11.25.(금)</li>'
				+ '<li class="title">여성폭력 예방 캠페인</li>'
				+ '<li class="comments">의정부역사, 11.25.(금)</li>'
				+ '<li class="title">여성폭력근절 및 성인지 감수성 캠페인</li>'
				+ '<li class="comments">군포 이마트 앞 야외무대, 11.29(화)</li>'
				+ '</ul></dd></dl>'
		break;
	case 4: 
		html = '<dl><dt>세종시</dt><dd><ul>'
				+ '<li class="marker"><strong class="txt_t">캠페인</strong></li>'
				+ '<li class="title">성폭력 ·가정폭력 추방 캠페인</li>'
				+ '<li class="comments">세종시청 일원, 11.25.(금)</li>'
				+ '</ul></dd></dl>'
		break;
	case 5: 
		html = '<dl><dt>대전시</dt><dd><ul>'
				+ '<li class="marker"><strong class="txt_t">캠페인</strong></li>'
				+ '<li class="title">여성폭력추방주간 아웃리치 캠페인</li>'
				+ '<li class="comments">판암역 일대, 11.29.(화)</li>'
				+ '<li class="title">성폭력 예방 및 근절 캠페인</li>'
				+ '<li class="comments">월평역 공간이음, 11.9.(수)</li>'
				+ '</ul></dd></dl>'
		break;
	case 6: 
		html = '<dl><dt>광주시</dt><dd><ul>'
				+ '<li class="marker"><strong class="txt_t">캠페인</strong></li>'
				+ '<li class="title">젠더폭력추방캠페인</li>'
				+ '<li class="comments">전남대학교 광주캠퍼스, 11.25.(금)</li>'
				+ '<li class="title">여성폭력추방 캠페인</li>'
				+ '<li class="comments">광주남구 푸른길공원, 전남대 후문, 송정역 광장 등, 11.25.(금)</li>'
				+ '<li class="underline"></li>'
				+ '<li class="marker"><strong class="txt_t">토론회</strong></li>'
				+ '<li class="title">스토킹피해자지원방안 마련</li>'
				+ '<li class="comments">광주서구청, 12.1.(목)</li>'
				+ '</ul></dd></dl>'
		break;
	case 7: 
		html = '<dl><dt>대구시</dt><dd><ul>'
				+ '<li class="marker"><strong class="txt_t">캠페인</strong></li>'
				+ '<li class="title">여성폭력추방합동캠페인</li>'
				+ '<li class="comments">달성습지 일원, 11.24.(목)</li>'
				+ '<li class="title">보라데이캠페인</li>'
				+ '<li class="comments">대구역일대, 11.29.(화)</li>'
				+ '<li class="underline"></li>'
				+ '<li class="marker"><strong class="txt_t">행사</strong></li>'
				+ '<li class="title">대구시동구패밀리콘서트</li>'
				+ '<li class="comments">아양아트센터, 11.17.(목)</li>'
				+ '</ul></dd></dl>'
		break;
	case 8: 
		html = '<dl><dt>울산시</dt><dd><ul>'
				+ '<li class="marker"><strong class="txt_t">기념행사</strong></li>'
				+ '<li class="title">성폭력 · 가정폭력추방기념행사</li>'
				+ '<li class="comments">울산시청, 11.25.(금)</li>'
				+ '<li class="underline"></li>'
				+ '<li class="marker"><strong class="txt_t">캠페인</strong></li>'
				+ '<li class="title">성폭력 추방 캠페인</li>'
				+ '<li class="comments">성남동 구시가지 일대, 11.25.(목)</li>'
				+ '<li class="title">보라데이캠페인</li>'
				+ '<li class="comments">한솔근린공원(예정), 11.25.(금)</li>'
				+ '</ul></dd></dl>'
		break;
	case 9: 
		html = '<dl><dt>강원도</dt><dd><ul>'
				+ '<li class="marker"><strong class="txt_t">캠페인</strong></li>'
				+ '<li class="title">성폭력 ·가정폭력 추방 캠페인</li>'
				+ '<li class="comments">춘천명동거리, 강릉 월화거리 등, 11.25.(금)</li>'
				+ '<li class="title">세계여성폭력추방주간캠페인</li>'
				+ '<li class="comments">춘천시내 4개 대학 등, 11.15.(화)~12.14.(수)</li>'
				+ '<li class="title">4대폭력 예방 캠페인</li>'
				+ '<li class="comments">인제전통시장, 11.29.(목)</li>'
				+ '</ul></dd></dl>'
		break;
	case 10: 
		html = '<dl><dt>충청북도</dt><dd><ul>'
				+ '<li class="marker"><strong class="txt_t">캠페인</strong></li>'
				+ '<li class="title">여성폭력 추방주간 캠페인</li>'
				+ '<li class="comments">충북도청, 11.25.(금)</li>'
				+ '<li class="title">성폭력가정폭력 추방 합동캠페인</li>'
				+ '<li class="comments">소나무길 광장, 11.25.(금)</li>'
				+ '</ul></dd></dl>'
		break;
	case 11: 
		html = '<dl><dt>충청남도</dt><dd><ul>'
				+ '<li class="marker"><strong class="txt_t">캠페인</strong></li>'
				+ '<li class="title">안전주유소와 함께하는 여성폭력 zero 캠페인</li>'
				+ '<li class="comments">여성안전주유소(천안, 아산 소재), 11.25.~12.1.</li>'
				+ '<li class="title">불교와 함께하는 충남여성안전캠페인</li>'
				+ '<li class="comments">마곡사 ,수독사, 11.25.~12.1.</li>'
				+ '<li class="underline"></li>'
				+ '<li class="marker"><strong class="txt_t">영화제</strong></li>'
				+ '<li class="title">인권영화제</li>'
				+ '<li class="comments">예산시네마, 12.1.(수)</li>'
				+ '</ul></dd></dl>'
		break;
	case 12: 
		html = '<dl><dt>경상북도</dt><dd><ul>'
				+ '<li class="marker"><strong class="txt_t">캠페인</strong></li>'
				+ '<li class="title">폭력예방캠페인</li>'
				+ '<li class="comments">죽도시장, 12.5.(월)</li>'
				+ '<li class="title">가정폭력예방 캠페인</li>'
				+ '<li class="comments">경주시내 일원, 11.25.(금)</li>'
				+ '<li class="title">성폭력 ·가정폭력 추방 캠페인</li>'
				+ '<li class="comments">경북도내 일원(영천시민회관, 상주시청, 영주역 등), 11.25.(금)</li>'
				+ '</ul></dd></dl>'
		break;
	case 13: 
		html = '<dl><dt>전라북도</dt><dd><ul>'
				+ '<li class="marker"><strong class="txt_t">캠페인</strong></li>'
				+ '<li class="title">여성폭력 추방 캠페인</li>'
				+ '<li class="comments">정읍역, 11.28.(월)</li>'
				+ '<li class="title">여성폭력 추방 캠페인</li>'
				+ '<li class="comments">객사 앞, 11.29.(화)</li>'
				+ '<li class="title">여성폭력추방주간 캠페인</li>'
				+ '<li class="comments">전주한옥마을, 11.30.(수)</li>'
				+ '<li class="underline"></li>'
				+ '<li class="marker"><strong class="txt_t">토론회</strong></li>'
				+ '<li class="title">가해자가 돌아왔다</li>'
				+ '<li class="comments">(사)성폭력예방치료센터, 11.25.(금)</li>'
				+ '</ul></dd></dl>'
		break;
	case 14: 
		html = '<dl><dt>경상남도</dt><dd><ul>'
				+ '<li class="marker"><strong class="txt_t">캠페인</strong></li>'
				+ '<li class="title">여성폭력추방 캠페인</li>'
				+ '<li class="comments">창원시 합성동, 11.22.(화)</li>'
				+ '<li class="title">여성폭력없는 지역사회를 위한 유관기관 합동캠페인</li>'
				+ '<li class="comments">김해시 일대, 11.29.(화)</li>'
				+ '<li class="underline"></li>'
				+ '<li class="marker"><strong class="txt_t">상영회</strong></li>'
				+ '<li class="title">여성인권 영화 상영회</li>'
				+ '<li class="comments">통영리스타트플랫폼, 11.25.(금)</li>'
				+ '<li class="title">가정폭력영화상영</li>'
				+ '<li class="comments">창원상암동메각박스, 11.21.(월)</li>'
				+ '<li class="title">폭력예방영화제</li>'
				+ '<li class="comments">밀양시여성회관, 11.30.(수)</li>'
				+ '</ul></dd></dl>'
		break;
	case 15: 
		html = '<dl><dt>전라남도</dt><dd><ul>'
				+ '<li class="marker"><strong class="txt_t">캠페인</strong></li>'
				+ '<li class="title">여성폭력추방주간 캠페인</li>'
				+ '<li class="comments">전남 일대(여수시내, 순천 문화의 거리, 신대지구, 녹차골보성 향토시장 등), 11.25.(금)</li>'
				+ '</ul></dd></dl>'
		break;
	case 16: 
		html = '<dl><dt>부산시</dt><dd><ul>'
				+ '<li class="marker"><strong class="txt_t">캠페인</strong></li>'
				+ '<li class="title">여성폭력추방주간 홍보캠페인</li>'
				+ '<li class="comments">송상현광장,11.25.(금)</li>'
				+ '<li class="title">성폭력·가정폭력 추방 캠페인, 광복로 일대</li>'
				+ '<li class="comments">부산역 광장 등, 11.25.(금)</li>'
				+ '<li class="title">여성폭력추방주간 자체 캠페인</li>'
				+ '<li class="comments">부산역 일대, 11.28.(월)</li>'
				+ '<li class="title">보라데이캠페인</li>'
				+ '<li class="comments">동대신교차로, 11.29.(화)</li>'
				+ '</ul></dd></dl>'
		break;
	case 17: 
		html = '<dl><dt>제주도</dt><dd><ul>'
				+ '<li class="marker"><strong class="txt_t">캠페인</strong></li>'
				+ '<li class="title">제주시 성폭력·가정폭력예방캠페인</li>'
				+ '<li class="comments">제주시청, 11.25.(금)</li>'
				+ '<li class="title">성폭력·가정폭력인식개선 캠페인</li>'
				+ '<li class="comments">한라대학교, 11.25.(금)</li>'
				+ '<li class="title">성폭력추방 캠페인</li>'
				+ '<li class="comments">제주해바라기센터, 11.25.(금)</li>'
				+ '<li class="title">서귀포시 가정·성폭력추방 연대캠페인</li>'
				+ '<li class="comments">서귀포가정행복상담소, 12.1.(목)</li>'
				+ '<li class="title">보라데이연대캠페인</li>'
				+ '<li class="comments">제주시청, 12.1.(목)</li>'
				+ '</ul></dd></dl>'
		break;
	}

	if (html) {
		$('.eventMap').html(html);
	}

}