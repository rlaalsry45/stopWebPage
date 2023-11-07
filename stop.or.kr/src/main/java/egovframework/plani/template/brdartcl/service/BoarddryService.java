package egovframework.plani.template.brdartcl.service;

import java.util.List;
import egovframework.plani.template.brdartcl.vo.BoarddryVO;

/**
 * 일정게시판에 대한 CRUD를 처리한다
 * 
 * @author 플랜아이
 * @interface BoarddryService
 */

public interface BoarddryService {

  /**
   * 일정 게시판 을/를 등록한다.
   * 
   * @param vo - 등록할 조건이 담긴 VO
   * @exception Exception
   */
  public Integer insertBoarddry(BoarddryVO vo) throws Exception;

  /**
   * 일정 게시판 을/를 수정한다.
   * 
   * @param vo - 수정할 조건이 담긴 VO
   * @exception Exception
   */
  public void updateBoarddry(BoarddryVO vo) throws Exception;

  /**
   * 일정 게시판 을/를 삭제한다.
   * 
   * @param vo - 삭제할 조건이 담긴 VO
   * @exception Exception
   */
  public void deleteBoarddry(BoarddryVO vo) throws Exception;

  /**
   * 일정 게시판 항목을 상세조회한다.
   * 
   * @param vo - 조회할 조건이 담긴 VO
   * @exception Exception
   */
  public BoarddryVO selectBoarddry(BoarddryVO vo) throws Exception;

  /**
   * 일정 게시판 목록을 조회한다.
   * 
   * @param vo - 조회할 조건이 담긴 VO
   * @exception Exception
   */
  public List selectBoarddryList(BoarddryVO vo) throws Exception;

  /**
   * 일정 게시판 목록의 총 개수를 구한다.
   * 
   * @param vo - 조회할 조건이 담긴 VO
   * @exception Exception
   */
  public int selectBoarddryListTotCnt(BoarddryVO vo) throws Exception;

  /**
   * 일정 게시판 목록의 엑셀 다운로드를 처리한다.
   * 
   * @param vo - 조회할 조건이 담긴 VO
   * @exception Exception
   */
  public List xlsBoarddryList(BoarddryVO vo) throws Exception;

  /**
   * 메인화면용 일정 게시판 목록을 조회한다.
   * 
   * @param vo - 조회할 조건이 담긴 VO
   * @exception Exception
   */
  public List selectBoarddryMainList(BoarddryVO vo) throws Exception;

}

