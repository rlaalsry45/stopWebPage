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
				+ '<li><div class="marker"><p class="txt_t1">캠페인</p>'
				+ '<p class="txt_t2">2023.9.22.(금) 15:00｜032-881-8297</p>'
				+ '</div><p class="txt_t3">인권희망 강강술래</p></li>'
				+ '</ul></dd></dl>'
		break;
	case 2: 
		html = '<dl><dt>서울특별시</dt><dd><ul>'
				+ '<li><div class="marker"><p class="txt_t1">캠페인</p>'
				+ '<p class="txt_t2">2023.9.19.(화)~10.6.(금)｜02-814-3660</p>'
				+ '</div><p class="txt_t3">서울시/다시 함께 상담센터</p></li>'
				+ '<li><div class="marker"><p class="txt_t1">캠페인</p>'
				+ '<p class="txt_t2">2023.9.19.(화) 13:00｜070-4914-9336</p>'
				+ '</div><p class="txt_t3">성매매처벌범개정연대, 성구매 수요차단 공동행동, 서울시성매매피해여성지원협의회</p></li>'
				+ '<li><div class="marker"><p class="txt_t1">기자회견</p>'
				+ '<p class="txt_t2">2023.9.19.(화) 11:00(금)｜02-312-8297</p>'
				+ '</div><p class="txt_t3">성매매문제해결을위한전국연대</p></li>'
				+ '<li><div class="marker"><p class="txt_t1">캠페인</p>'
				+ '<p class="txt_t2">2023.9.19.(화) 14:00(금)｜02-312-8297</p>'
				+ '</div><p class="txt_t3">성매매문제해결을위한전국연대</p></li>'
				+ '</ul></dd></dl>'
		break;
	case 3: 
		html = '<dl><dt>경기도</dt><dd><ul>'
				+ '<li><div class="marker"><p class="txt_t1">캠페인</p>'
				+ '<p class="txt_t2">2023.9.20.(수) 16:00｜031-651-6100</p>'
				+ '</div><p class="txt_t3">평택여성인권상담센터 품</p></li>'
				+ '<li><div class="marker"><p class="txt_t1">토론회</p>'
				+ '<p class="txt_t2">2023.9.13.(수) 19:00｜031-243-7780</p>'
				+ '</div><p class="txt_t3">사단법인 수원여성인권돋움</p></li>'
				+ '<li><div class="marker"><p class="txt_t1">캠페인</p>'
				+ '<p class="txt_t2">2023.9.13.(수) 19:00｜031-243-7780</p>'
				+ '</div><p class="txt_t3">사단법인 수원여성인권돋움</p></li>'
				+ '<li><div class="marker"><p class="txt_t1">캠페인</p>'
				+ '<p class="txt_t2">2023.9.18.(월)｜031-243-7780</p>'
				+ '</div><p class="txt_t3">사단법인 수원여성인권돋움</p></li>'
				+ '<li><div class="marker"><p class="txt_t1">캠페인</p>'
				+ '<p class="txt_t2">2023.9.20.(수) 19:00｜031-550-8303</p>'
				+ '</div><p class="txt_t3">구리시</p></li>'
				+ '</ul></dd></dl>'
		break;
	case 4: 
		html = '<dl><dt>대전광역시</dt><dd><ul>'
				+ '<li><div class="marker"><p class="txt_t1">캠페인</p>'
				+ '<p class="txt_t2">2023.9.21.(목)｜042-252-9790</p>'
				+ '</div><p class="txt_t3">여성인권티움</p></li>'
				+ '</ul></dd></dl>'
		break;
	case 5: 
		html = '<dl><dt>광주광역시</dt><dd><ul>'
				+ '<li><div class="marker"><p class="txt_t1">캠페인</p>'
				+ '<p class="txt_t2">2023.9.18.(월) 13:00｜062-613-2292</p>'
				+ '</div><p class="txt_t3">광주여성인권지원센터, 광주여성의전화</p></li>'
				+ '<li><div class="marker"><p class="txt_t1">캠페인</p>'
				+ '<p class="txt_t2">2023.9.18.(월) 16:30｜062-227-8297</p>'
				+ '</div><p class="txt_t3">광주여성인권지원센터, 광주여성의전화</p></li>'
				+ '</ul></dd></dl>'
		break;
	case 6: 
		html = '<dl><dt>대구광역시</dt><dd><ul>'
				+ '<li><div class="marker"><p class="txt_t1">캠페인</p>'
				+ '<p class="txt_t2">2023.9.20.(수) 14:00｜053-430-6020</p>'
				+ '</div><p class="txt_t3">대구시, 대구여성인권센터, 대구여성회 부설 대구성매매피해아동청소년지원센터</p></li>'
				+ '</ul></dd></dl>'
		break;
	case 7: 
		html = '<dl><dt>울산광역시</dt><dd><ul>'
				+ '<li><div class="marker"><p class="txt_t1">캠페인</p>'
				+ '<p class="txt_t2">2023.9.19.(화)~9.25.(월)｜052-249-8297</p>'
				+ '</div><p class="txt_t3">울산광역시/울산성매매피해상담소</p></li>'
				+ '</ul></dd></dl>'
		break;
	case 8: 
		html = '<dl><dt>강원도</dt><dd><ul>'
				+ '<li><div class="marker"><p class="txt_t1">전시회</p>'
				+ '<p class="txt_t2">2023.9.18.(월)~9.22.(금)｜033-243-8297</p>'
				+ '</div><p class="txt_t3">춘천길잡이의집</p></li>'
				+ '</ul></dd></dl>'
		break;
	case 9: 
		html = '<dl><dt>충청북도</dt><dd><ul>'
				+ '<li><div class="marker"><p class="txt_t1">캠페인</p>'
				+ '<p class="txt_t2">2023.9.23(토) 16:30｜043-257-8297</p>'
				+ '</div><p class="txt_t3">(사)충북여성인권 부설 상담소 늘봄, (사)청주YWCA찾아가는폭력예방교육</p></li>'
				+ '<li><div class="marker"><p class="txt_t1">토론회</p>'
				+ '<p class="txt_t2">2023.10.5.(목) 18:00｜043-257-8297</p>'
				+ '</div><p class="txt_t3">(사)충북여성인권 부설 상담소 늘봄, (사)청주YWCA찾아가는폭력예방교육</p></li>'
				+ '</ul></dd></dl>'
		break;
	case 10: 
		html = '<dl><dt>충청남도</dt><dd><ul>'
				+ '<li><div class="marker"><p class="txt_t1">캠페인</p>'
				+ '<p class="txt_t2">2023.9.21.(금)｜041-521-5370</p>'
				+ '</div><p class="txt_t3">천안시, 충남여성인권상담센터</p></li>'
				+ '<li><div class="marker"><p class="txt_t1">캠페인</p>'
				+ '<p class="txt_t2">2023.9.13.(수)｜041-840-8161</p>'
				+ '</div><p class="txt_t3">공주시</p></li>'
				+ '<li><div class="marker"><p class="txt_t1">캠페인</p>'
				+ '<p class="txt_t2">2023.9.12.(화)｜041-540-2892</p>'
				+ '</div><p class="txt_t3">아신시</p></li>'
				+ '<li><div class="marker"><p class="txt_t1">캠페인</p>'
				+ '<p class="txt_t2">2023.9.25.(월)｜041-668-8566</p>'
				+ '</div><p class="txt_t3">서산가정성통합센터</p></li>'
				+ '<li><div class="marker"><p class="txt_t1">캠페인</p>'
				+ '<p class="txt_t2">2023.9.14.(목)｜041-746-5352</p>'
				+ '</div><p class="txt_t3">논산시, 논산YWCA가정폭력상담소</p></li>'
				+ '<li><div class="marker"><p class="txt_t1">캠페인</p>'
				+ '<p class="txt_t2">2023.9.9.(토)｜041-350-3693</p>'
				+ '</div><p class="txt_t3">당진시</p></li>'
				+ '<li><div class="marker"><p class="txt_t1">캠페인</p>'
				+ '<p class="txt_t2">2023.9.23.(토)｜041-353-8577</p>'
				+ '</div><p class="txt_t3">당진시폭력예방상담소</p></li>'
				+ '<li><div class="marker"><p class="txt_t1">캠페인</p>'
				+ '<p class="txt_t2">2023.9.25.(월)｜041-830-2512</p>'
				+ '</div><p class="txt_t3">부여 성·가정폭력상담센터</p></li>'
				+ '<li><div class="marker"><p class="txt_t1">캠페인</p>'
				+ '<p class="txt_t2">2023.9.25.(월)｜041-675-9536</p>'
				+ '</div><p class="txt_t3">태안군성인권상담센터</p></li>'
				+ '</ul></dd></dl>'
		break;
	case 11: 
		html = '<dl><dt>경상북도</dt><dd><ul>'
				+ '<li><div class="marker"><p class="txt_t1">캠페인</p>'
				+ '<p class="txt_t2">2023.9.22.(금) 17:00｜054-231-1402</p>'
				+ '</div><p class="txt_t3">경북여성현장상담센터 새날, 경북성매매피해아동청소년지원센터</p></li>'
				+ '</ul></dd></dl>'
		break;
	case 12: 
		html = '<dl><dt>전라북도</dt><dd><ul>'
				+ '<li><div class="marker"><p class="txt_t1">캠페인</p>'
				+ '<p class="txt_t2">2023.9.22.(금) 15:00｜063-283-8297</p>'
				+ '</div><p class="txt_t3">전북여성인권지원센터</p></li>'
				+ '<li><div class="marker"><p class="txt_t1">캠페인</p>'
				+ '<p class="txt_t2">2023.9.19.(화) 10:00｜063-580-4735</p>'
				+ '</div><p class="txt_t3">부안군</p></li>'
				+ '</ul></dd></dl>'
		break;
	case 13: 
		html = '<dl><dt>경상남도</dt><dd><ul>'
				+ '<li><div class="marker"><p class="txt_t1">토론회</p>'
				+ '<p class="txt_t2">2023.9.13.(수) 14:00｜055-273-2241</p>'
				+ '</div><p class="txt_t3">경남여성인권상담소</p></li>'
				+ '<li><div class="marker"><p class="txt_t1">캠페인</p>'
				+ '<p class="txt_t2">2023.9.20.(수) 15:00｜055-273-2241</p>'
				+ '</div><p class="txt_t3">창원시, 경남여성인권상담소, 로뎀의집,해바라기쉼자리, 경남범숙의집</p></li>'
				+ '</ul></dd></dl>'
		break;
	case 14: 
		html = '<dl><dt>전라남도</dt><dd><ul>'
				+ '<li><div class="marker"><p class="txt_t1">캠페인</p>'
				+ '<p class="txt_t2">2023.9.15(금) 13:00｜061-753-3644</p>'
				+ '</div><p class="txt_t3">헤아림, 순천여성인권지원센터</p></li>'
				+ '<li><div class="marker"><p class="txt_t1">캠페인</p>'
				+ '<p class="txt_t2">2023.9.18.(월)｜061-276-8297</p>'
				+ '</div><p class="txt_t3">목포여성인권지원센터</p></li>'
				+ '<li><div class="marker"><p class="txt_t1">캠페인</p>'
				+ '<p class="txt_t2">2023.9.23.(토) 16:00｜061-276-8297</p>'
				+ '</div><p class="txt_t3">목포여성인권지원센터</p></li>'
				+ '<li><div class="marker"><p class="txt_t1">캠페인</p>'
				+ '<p class="txt_t2">2023.9.21.(목) 16:00, 2023.9.25.(월) 16:00｜061-662-8296</p>'
				+ '</div><p class="txt_t3">여수여성인권지원센터</p></li>'
				+ '</ul></dd></dl>'
		break;
	case 15: 
		html = '<dl><dt>부산광역시</dt><dd><ul>'
				+ '<li><div class="marker"><p class="txt_t1">캠페인</p>'
				+ '<p class="txt_t2">2023.9.18.(월) 16:00｜051-247-8292</p>'
				+ '</div><p class="txt_t3">살림상담소</p></li>'
				+ '</ul></dd></dl>'
		break;
	case 16: 
		html = '<dl><dt>제주도</dt><dd><ul>'
				+ '<li><div class="marker"><p class="txt_t1">강연</p>'
				+ '<p class="txt_t2">2023.9.1.(금) 14:00｜064-723-5004</p>'
				+ '</div><p class="txt_t3">(사)제주여성인권연대 부설 제주여성상담소, 제주현장상담센터 ‘해냄’</p></li>'
				+ '<li><div class="marker"><p class="txt_t1">캠페인</p>'
				+ '<p class="txt_t2">2023.9.12.(화)~9.28.(목)｜064-751-8297</p>'
				+ '</div><p class="txt_t3">(사)제주여성인권연대 부설 제주여성상담소, 제주현장상담센터 ‘해냄’</p></li>'
				+ '<li><div class="marker"><p class="txt_t1">행진</p>'
				+ '<p class="txt_t2">2023.9.20.(수)｜064-751-8297</p>'
				+ '</div><p class="txt_t3">(사)제주여성인권연대</p></li>'
				+ '<li><div class="marker"><p class="txt_t1">캠페인</p>'
				+ '<p class="txt_t2">2023.9.22.(금) 15:00｜064-751-8297</p>'
				+ '</div><p class="txt_t3">(사)제주여성인권연대 부설 제주여성상담소, 제주현장상담센터 ‘해냄’</p></li>'
				+ '</ul></dd></dl>'
		break;
	case 17: 
		html = '<dl><dt>전국</dt><dd><ul>'
				+ '<li><div class="marker"><p class="txt_t1">캠페인</p>'
				+ '<p class="txt_t2">온라인｜02-312-8297</p>'
				+ '</div><p class="txt_t3">성매매처벌법개정연대</p></li>'
				+ '<li><div class="marker"><p class="txt_t1">캠페인</p>'
				+ '<p class="txt_t2">2023.9.21.(목)~9.22.(금)｜02-312-8297</p>'
				+ '</div><p class="txt_t3">성매매문제해결을위한전국연대</p></li>'
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
                    + '<li class="comments">인권희망 강강술래, 2023.9.22.(금) 15:00, 032-881-8297</li>'
                    + '</ul></dd></dl>'
            break;
        case 2: 
            html = '<dl><dt>서울시</dt><dd><ul>'
                    + '<li class="marker"><strong class="txt_t">캠페인</strong></li>'
                    + '<li class="comments">서울시/다시 함께 상담센터, 2023.9.19.(화)~10.6.(금), 02-814-3660</li>'
                    + '<li class="comments">성매매처벌범개정연대, 성구매 수요차단 공동행동, 서울시성매매피해여성지원협의회, 2023.9.19.(화) 13:00, 070-4914-9336</li>'
                    + '<li class="comments">성매매문제해결을위한전국연대, 2023.9.19.(화) 14:00, 02-312-8297</li>'
                    + '<li class="underline"></li>'
                    + '<li class="marker"><strong class="txt_t">기자회견</strong></li>'
                    + '<li class="comments">성매매문제해결을위한전국연대, 2023.9.19.(화) 11:00, 02-312-8297</li>'
                    + '</ul></dd></dl>'
            break;
        case 3: 
            html = '<dl><dt>경기도</dt><dd><ul>'
                    + '<li class="marker"><strong class="txt_t">캠페인</strong></li>'
                    + '<li class="comments">평택여성인권상담센터 품, 2023.9.20.(수) 16:00, 031-651-6100</li>'
                    + '<li class="comments">사단법인 수원여성인권돋움, 2023.9.18.(월), 031-243-7780</li>'
                    + '<li class="comments">구리시, 2023.9.20.(수) 19:00, 031-550-8303/li>'	
                    + '<li class="underline"></li>'			
                    + '<li class="marker"><strong class="txt_t">토론회</strong></li>'
                    + '<li class="comments">사단법인 수원여성인권돋움, 2023.9.13.(수) 19:00, 031-243-7780</li>'
                    + '</ul></dd></dl>'
            break;
        case 4: 
            html = '<dl><dt>대전광역시</dt><dd><ul>'
                    + '<li class="marker"><strong class="txt_t">캠페인</strong></li>'
                    + '<li class="comments">여성인권티움, 2022.9.21.(목), 042-252-9790</li>'
                    + '</ul></dd></dl>'
            break;
        case 5: 
            html = '<dl><dt>광주광역시</dt><dd><ul>'
                    + '<li class="marker"><strong class="txt_t">캠페인</strong></li>'
                    + '<li class="comments">광주여성인권지원센터, 광주여성의전화, 2023.9.18.(월) 13:00, 062-613-2292</li>'
                    + '<li class="comments">광주여성인권지원센터, 광주여성의전화, 2023.9.18.(월) 16:30, 067-777-8797</li>'
                    + '</ul></dd></dl>'
            break;
        case 6: 
            html = '<dl><dt>대구광역시</dt><dd><ul>'
                    + '<li class="marker"><strong class="txt_t">캠페인</strong></li>'
                    + '<li class="comments">대구시, 대구여성인권센터, 대구여성회 부설 대구성매매피해아동청소년지원센터, 2023.9.20.(수) 14:00, 053-430-6020</li>'
                    + '</ul></dd></dl>'
            break;
        case 7: 
            html = '<dl><dt>울산광역시</dt><dd><ul>'
                    + '<li class="marker"><strong class="txt_t">캠페인</strong></li>'
                    + '<li class="comments">울산광역시, 울산성매매피해상담소, 2023.9.19.(화)~9.25.(월), 052-249-8297</li>'
                    + '</ul></dd></dl>'
            break;
        case 8: 
            html = '<dl><dt>강원도</dt><dd><ul>'
                    + '<li class="marker"><strong class="txt_t">전시회</strong></li>'
                    + '<li class="comments">춘천길잡이의 집, 2023.9.18.(월)~9.22.(금), 033-243-8297</li>'
                    + '</ul></dd></dl>'
            break;
        case 9: 
            html = '<dl><dt>충청북도</dt><dd><ul>'
                    + '<li class="marker"><strong class="txt_t">캠페인</strong></li>'
                    + '<li class="comments">사)충북여성인권 부설 상담소 늘봄,(사)청주YWCA찾아가는폭력예방교육, 2023.9.23.(토) 16:30, 043-257-8297</li>'
                    + '<li class="underline"></li>'
                    + '<li class="marker"><strong class="txt_t">토론회</strong></li>'
                    + '<li class="comments">사)충북여성인권 부설 상담소 늘봄,(사)청주YWCA찾아가는폭력예방교육, 2023.10.5.(목) 18:00, 043-257-8297</li>'
                    + '</ul></dd></dl>'
            break;
        case 10: 
            html = '<dl><dt>충청남도</dt><dd><ul>'
                    + '<li class="marker"><strong class="txt_t">캠페인</strong></li>'
                    + '<li class="comments">천안시, 충남여성인권상담센터, 2023.9.21.(금), 041-521-5370</li>'
                    + '<li class="comments">공주시, 2023.9.13.(수), 041-840-8161</li>'
                    + '<li class="comments">아산시, 2023.9.12.(화), 041-540-2892</li>'
                    + '<li class="comments">서산가정성통합센터, 2023.9.25.(월), 041-668-8566</li>'
                    + '<li class="comments">논산시, 논산YWCA가정폭력상담소, 2023.9.14.(목), 041-746-5352</li>'
                    + '<li class="comments">당진시, 2023.9.9.(토), 041-350-3693</li>'
                    + '<li class="comments">당진시폭력예방상담소, 2023.9.23.(토), 041-353-8577</li>'
                    + '<li class="comments">부여 성•가정폭력상담센터, 2023.9.25.(월), 041-830-2512</li>'
                    + '<li class="comments">태안군성인권상담센터, 2023.9.25.(월), 041-675-9536</li>'
                    + '</ul></dd></dl>'
            break;
        case 11: 
            html = '<dl><dt>경상북도</dt><dd><ul>'
                    + '<li class="marker"><strong class="txt_t">캠페인</strong></li>'
                    + '<li class="comments">경북여성현장상담센터 새날, 경북성매매피해이동청소년지원센터, 2023.9.22.(금) 17:00, 054-231-1402</li>'
                    + '</ul></dd></dl>'
            break;
        case 12: 
            html = '<dl><dt>전라북도</dt><dd><ul>'
                    + '<li class="marker"><strong class="txt_t">캠페인</strong></li>'
                    + '<li class="comments">전북여성인권지원센터, 2023.9.22.(금) 15:00, 063-283-8297</li>'
                    + '<li class="comments">부안군, 2023.9.19.(화) 10:00, 063-580-4735</li>'
                    + '</ul></dd></dl>'
            break;
        case 13: 
            html = '<dl><dt>경상남도</dt><dd><ul>'
                    + '<li class="marker"><strong class="txt_t">토론회</strong></li>'
                    + '<li class="comments">경남여성인권상담소, 2023.9.13.(수) 14:00, 055-273-2241</li>'
                    + '<li class="underline"></li>'
                    + '<li class="marker"><strong class="txt_t">캠페인</strong></li>'
                    + '<li class="comments">창원시, 경남여성인권상담소, 로뎀의짐, 해바라기쉼자리, 경남범숙의집, 2023.9.20.(수) 15:00, 065-273-2241</li>'
                    + '</ul></dd></dl>'
            break;
        case 14: 
            html = '<dl><dt>전라남도</dt><dd><ul>'
                    + '<li class="marker"><strong class="txt_t">캠페인</strong></li>'
                    + '<li class="comments">헤아림, 순천여성인권지원센터, 2023.9.15.(금) 13:00, 061-753-3644</li>'
                    + '<li class="comments">목포여성인권지원센터, 2023.9.18.(월), 061-276-8297</li>'
                    + '<li class="comments">목포여성인권지원센터, 2023.9.23.(토) 16:00, 061-276-8297</li>'
                    + '<li class="comments">여수여성인권지원센터, 2023.9.21.(묵) 16:00, 2023.9.25.(월) 16:00, 061-662-8296</li>'
                    + '</ul></dd></dl>'
            break;
        case 17: 
            html = '<dl><dt>부산광역시</dt><dd><ul>'
                    + '<li class="marker"><strong class="txt_t">캠페인</strong></li>'
                    + '<li class="comments">살림상담소, 2023.9.18.(월) 16:00, 051-247-8292</li>'
                    + '</ul></dd></dl>'
            break;
        case 15: 
            html = '<dl><dt>제주도</dt><dd><ul>'
                    + '<li class="marker"><strong class="txt_t">캠페인</strong></li>'
                    + '<li class="comments">제주특별자치도, (사)제주여성인권연대 부설 제주현장상담센터 ‘해냄’, 2023.9.12.(화)~9.28.(목), 064-751-8297</li>'
                    + '<li class="comments">(사)제주여성인권연대 부설 제주현장상담센터 ‘해냄’, 2023.9.22.(금) 15:00, 064-751-8297</li>'
                    + '<li class="underline"></li>'
                    + '<li class="marker"><strong class="txt_t">강연</strong></li>'
                    + '<li class="comments">사)제주여성인권연대 부설 제주여성상담소, 제주현장상담센터 ‘해냄’, 2023.9.1.(금) 14:00, 064-723-5004</li>'
                    + '<li class="underline"></li>'
                    + '<li class="marker"><strong class="txt_t">행진</strong></li>'
                    + '<li class="comments">(사)제주여성인권연대, 2023.9.20.(수), 064-751-8297</li>'
                    + '</ul></dd></dl>'
            break;
        case 16: 
            html = '<dl><dt>전국</dt><dd><ul>'
                    + '<li class="marker"><strong class="txt_t">캠페인</strong></li>'
                    + '<li class="comments">성매매처벌법개정연대, 온라인, 02-312-8297</li>'
                    + '<li class="comments">성매매문제해결올위한전국연대, 2023.9.21(목)~9.22.(금), 02-312-8297</li>'
                    + '</ul></dd></dl>'
            break;
        }    

	if (html) {
		$('.eventMap').html(html);
	}

}