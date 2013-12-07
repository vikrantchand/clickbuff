/**
 * 
 */
package com.clickbuff.exceptions;

/**
 * @author Vikrant Choudhary
 * 
 */
public class FrameworkException extends RuntimeException {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * Error code
	 */
	private String errCode;

	/**
	 * Error Msg
	 */
	private String errMsg;

	/**
	 * 
	 * @param errCode
	 * @param errMsg
	 */
	public FrameworkException(String errCode, String errMsg) {
		this.errCode = errCode;
		this.errMsg = errMsg;
	}

	/**
	 * @return the errCode
	 */
	public String getErrCode() {
		return errCode;
	}

	/**
	 * @param errCode
	 *            the errCode to set
	 */
	public void setErrCode(String errCode) {
		this.errCode = errCode;
	}

	/**
	 * @return the errMsg
	 */
	public String getErrMsg() {
		return errMsg;
	}

	/**
	 * @param errMsg
	 *            the errMsg to set
	 */
	public void setErrMsg(String errMsg) {
		this.errMsg = errMsg;
	}

}
