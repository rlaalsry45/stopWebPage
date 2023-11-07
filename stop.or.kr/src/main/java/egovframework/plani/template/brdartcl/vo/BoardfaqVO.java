package egovframework.plani.template.brdartcl.vo;

/**
 * 개별 게시판 정보 VO
 * 
 * @class : [PLANI_TMPL] [egovframework.plani.brdartcl.vo] [BoardarticleVO.java]
 * @author : byunghanhan@PLANI
 * @date : 2013. 5. 15. 오후 5:58:08
 * @version : 1.0
 */
public class BoardfaqVO extends BoarddefaultVO {

  private static final long serialVersionUID = 1L;

  /** 그룹레벨 */
  private int grp_lv = 1;
  private String faq_type;
  private String selecttype;
  private String faqCont;
  
  public String getFaqCont() {
	return faqCont;
}

public void setFaqCont(String faqCont) {
	this.faqCont = faqCont;
}

public int getGrp_lv() {
    return grp_lv;
  }

  public void setGrp_lv(int grp_lv) {
    this.grp_lv = grp_lv;
  }

  public String getFaq_type() {
  	return faq_type;
  }

  public void setFaq_type(String faq_type) {
  	this.faq_type = faq_type;
  }

  public String getSelecttype() {
  	return selecttype;
  }

  public void setSelecttype(String selecttype) {
	 this.selecttype = selecttype;
  }
  
  

}

