package com.kdx.pojo;

public class UserRequest extends User {

    /**
	 * 
	 */
	private static final long serialVersionUID = 6570198173897386586L;

	private String userImgCode;
	
	private String sysImgCode;
	
	private int roleID;

	public int getRoleID() {
		return roleID;
	}

	public void setRoleID(int roleID) {
		this.roleID = roleID;
	}

	public String getSysImgCode() {
		return sysImgCode;
	}

	public void setSysImgCode(String sysImgCode) {
		this.sysImgCode = sysImgCode;
	}

	public String getUserImgCode() {
		return userImgCode;
	}

	public void setUserImgCode(String userImgCode) {
		this.userImgCode = userImgCode;
	}
}
