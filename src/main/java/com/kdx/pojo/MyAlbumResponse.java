package com.kdx.pojo;

public class MyAlbumResponse extends MyAlbum {

	private static final long serialVersionUID = 9160445820633154659L;

	private String image;
	
	private int width;

	public int getWidth() {
		return width;
	}

	public void setWidth(int width) {
		this.width = width;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}
}
