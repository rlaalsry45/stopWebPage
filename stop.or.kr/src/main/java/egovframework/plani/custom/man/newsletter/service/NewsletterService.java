package egovframework.plani.custom.man.newsletter.service;

import java.util.List;

import egovframework.plani.custom.man.newsletter.vo.NewsletterVO;


public interface NewsletterService {

  /**
   * 뉴스레터 정보를 저장한다
   * 
   * @param vo-스케쥴 정보가 담긴 vo
   * @return
   * @exception - Exception
   */
  public void insertNewsletter(NewsletterVO vo) throws Exception;

  /**
   * 뉴스레터 정보를 수정한다
   * 
   * @param vo-스케쥴 정보가 담긴 vo
   * @exception - Exception
   */
  public void updateNewsletter(NewsletterVO vo) throws Exception;
  
  public void updateNewsletterReForm(NewsletterVO vo) throws Exception;//20200727 뉴스레터 재동의 추가

  /**
   * 뉴스레터 정보를 조회한다
   * 
   * @param vo-스케쥴 정보가 담긴 vo
   * @exception - Exception
   */
  public NewsletterVO selectNewsletter(NewsletterVO vo) throws Exception;

  /**
   * 뉴스레터 정보를 조회한다
   * 
   * @param vo-스케쥴 정보가 담긴 vo
   * @exception - Exception
   */
  public int selectNewsletterCheckEmail(String email) throws Exception;

  /**
   * 뉴스레터 정보를 조회한다
   * 
   * @param vo-스케쥴 정보가 담긴 vo
   * @exception - Exception
   */
  public List<NewsletterVO> selectNewsletterList(NewsletterVO vo) throws Exception;

  /**
   * 뉴스레터 정보 목록의 총 개수를 구한다.
   * 
   * @param newsletterVO - 조회할 조건이 담긴 VO
   * @exception Exception
   */
  public int selectNewsletterListTotCnt(NewsletterVO vo) throws Exception;

  /**
   * 뉴스레터 정보를 삭제한다
   * 
   * @param vo-스케쥴 정보가 담긴 vo
   * @exception - Exception
   */
  public void deleteNewsletter(NewsletterVO vo) throws Exception;

	/**
	 * 뉴스레터 정보를 조회한다
	 * 
	 * @param vo-스케쥴
	 *            정보가 담긴 vo
	 * @exception -
	 *                Exception
	 */
	public List<NewsletterVO> selectExcelList(NewsletterVO vo) throws Exception;
	
	
	/**
	 * 뉴스레터 정보를 중복여부와 상관없이 업데이트 한다
	 * 
	 * @param vo - 스케줄 정보가 담긴 vo
	 * @exception - Exception
	 * @createTime : 2022.12.26
	 * @developer : 휴앤시스
	 * 
	 */
	 public void reRollnewsLetterUpdate(NewsletterVO vo) throws Exception;
	
}
