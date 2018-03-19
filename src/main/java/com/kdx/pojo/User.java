package com.kdx.pojo;

import java.io.Serializable;

public class User implements Serializable{

	private static final long serialVersionUID = -7264055417344033512L;
	
	private Integer userid;
	
	private String  userName;
	
	private int    usersex;
	
	private String  userpwd;

	public Integer getUserid() {
		return userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
	}

	

	public int getUsersex() {
		return usersex;
	}

	public void setUsersex(int usersex) {
		this.usersex = usersex;
	}

	public String getUserpwd() {
		return userpwd;
	}

	public void setUserpwd(String userpwd) {
		this.userpwd = userpwd;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}
		
}
