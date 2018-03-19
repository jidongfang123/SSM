package com.kdx.pojo;

import java.io.Serializable;

public class Commodity  implements Serializable{
	
	private static final long serialVersionUID = 2705200124827076963L;

	private int commodityid;
	
	private String commodityname;
	
	private int  commoditynum;

	public int getCommodityid() {
		return commodityid;
	}

	public void setCommodityid(int commodityid) {
		this.commodityid = commodityid;
	}

	public String getCommodityname() {
		return commodityname;
	}

	public void setCommodityname(String commodityname) {
		this.commodityname = commodityname;
	}

	public int getCommoditynum() {
		return commoditynum;
	}

	public void setCommoditynum(int commoditynum) {
		this.commoditynum = commoditynum;
	}
	
}
