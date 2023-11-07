package egovframework.plani.template.man.metsys.service;

import java.util.List;
import egovframework.plani.template.man.metsys.vo.AccessipVO;

/**
 * IP관리에 관한 CRUD를 처리한다.
 * 
 * @class [ContextPath] [egovframework.plani.template.man.metsys.service] [AccessipService.java]
 *
 */
public interface AccessipService {

  /**
   * 관리자 접근 IP 제한 을/를 등록한다.
   * 
   * @param vo - 등록할 조건이 담긴 VO
   * @return Integer
   * @exception Exception
   */
  public Integer insertAccessip(AccessipVO vo) throws Exception;

  /**
   * 관리자 접근 IP 제한 을/를 수정한다.
   * 
   * @param vo - 수정할 조건이 담긴 VO
   * @exception Exception
   */
  public void updateAccessip(AccessipVO vo) throws Exception;

  /**
   * 관리자 접근 IP 제한 을/를 삭제한다.
   * 
   * @param vo - 삭제할 조건이 담긴 VO
   * @exception Exception
   */
  public void deleteAccessip(AccessipVO vo) throws Exception;

  /**
   * 관리자 접근 IP 제한 항목을 상세조회한다.
   * 
   * @param vo - 조회할 조건이 담긴 VO
   * @return AccessipVO
   * @exception Exception
   */
  public AccessipVO selectAccessip(AccessipVO vo) throws Exception;

  /**
   * 관리자 접근 IP 제한 목록을 조회한다.
   * 
   * @param vo - 조회할 조건이 담긴 VO
   * @return List
   * @exception Exception
   */
  public List selectAccessipList(AccessipVO vo) throws Exception;

  /**
   * 관리자 접근 IP 제한 목록의 총 개수를 구한다.
   * 
   * @param vo - 조회할 조건이 담긴 VO
   * @exception Exception
   */
  public int selectAccessipListTotCnt(AccessipVO vo) throws Exception;

  /**
   * 관리자 접근 IP 제한 목록의 엑셀 다운로드를 처리한다.
   * 
   * @param vo - 엑셀다운 조건이 담긴 VO
   * @param List
   * @exception Exception
   */
  public List xlsAccessipList(AccessipVO vo) throws Exception;

}
