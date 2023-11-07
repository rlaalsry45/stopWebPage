package egovframework.plani.template.cmm.exceptions;

import java.text.MessageFormat;
import egovframework.rte.fdl.cmmn.exception.BaseException;

public class UnknownBoardException extends BaseException {

  private static final long serialVersionUID = 7545937273894014093L;

  public UnknownBoardException() {
    this("UnknownBoardException without message", null, null);
  }

  public UnknownBoardException(String defaultMessage) {
    this(defaultMessage, null, null);
  }

  public UnknownBoardException(String defaultMessage, Object[] messageParameters,
      Exception wrappedException) {
    String userMessage = defaultMessage;
    if (messageParameters != null) {
      userMessage = MessageFormat.format(defaultMessage, messageParameters);
    }
    this.message = userMessage;
    this.wrappedException = wrappedException;
  }
}
