package com.ys.wg.model;

import java.util.Date;

public class Comment {

	private int id; // 评论id
	private int blogId; // 博客id
	private Date blogTime; // 发布时间
	private int userId; // 用户id
	private int num; // 楼
	private int replyUserId; // 回复用户ID
	private String content; // 回复内容

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getBlogId() {
		return blogId;
	}

	public void setBlogId(int blogId) {
		this.blogId = blogId;
	}

	public Date getTime() {
		return blogTime;
	}

	public void setTime(Date blogTime) {
		this.blogTime = blogTime;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public int getReplyUserId() {
		return replyUserId;
	}

	public void setReplyUserId(int replyUserId) {
		this.replyUserId = replyUserId;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

}
