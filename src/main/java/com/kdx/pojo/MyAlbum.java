
package com.kdx.pojo;

import java.io.Serializable;

public class MyAlbum implements Serializable {

	private static final long serialVersionUID = -6346850800920292725L;

	private int myAlbumID;
	
	private String myAlbumName;
	
	private String myAlbumPath;
	
	private String userName;

	public int getMyAlbumID() {
		return myAlbumID;
	}

	public void setMyAlbumID(int myAlbumID) {
		this.myAlbumID = myAlbumID;
	}

	public String getMyAlbumName() {
		return myAlbumName;
	}

	public void setMyAlbumName(String myAlbumName) {
		this.myAlbumName = myAlbumName;
	}

	public String getMyAlbumPath() {
		return myAlbumPath;
	}

	public void setMyAlbumPath(String myAlbumPath) {
		this.myAlbumPath = myAlbumPath;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}
}
