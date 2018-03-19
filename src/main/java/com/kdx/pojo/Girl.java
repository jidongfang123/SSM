package com.kdx.pojo;

import java.io.Serializable;

public class Girl implements Serializable {
	
	private static final long serialVersionUID = 8490576196845264480L;

	private int gid;
	
	private String name;
	
	private int value;

	public int getGid() {
		return gid;
	}

	public void setGid(int gid) {
		this.gid = gid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getValue() {
		return value;
	}

	public void setValue(int value) {
		this.value = value;
	}
	
}
