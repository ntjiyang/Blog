package com.ys.wg.model;


public class Follow {

	private int id;
	private int userId;
	private int followId;
	private String followUserName;
	
	
	public String getFollowUserName() {
		return followUserName;
	}
	public void setFollowUserName(String followUserName) {
		this.followUserName = followUserName;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getFollowId() {
		return followId;
	}
	public void setFollowId(int followId) {
		this.followId = followId;
	}
	
	
	
}
