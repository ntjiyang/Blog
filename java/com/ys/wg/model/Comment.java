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
	
	private int commenttotal;// 总的数据条数
	private int commentpageSize = 5;// 每页显示条数
	private int commenttotalPage;// 总的页数
	private int commentcurrentPage = 1;// 当前页数
	private int commentstart;// 开始
	private int commentend;// 结束
	
	// 计算起始和结束位置
	public void count() {

		commenttotalPage = commenttotal % commentpageSize > 0 ? commenttotal
				/ commentpageSize + 1 : commenttotal / commentpageSize;

		if (commentcurrentPage > commenttotalPage) {
			commentcurrentPage = commenttotalPage;
		}

		if (commentcurrentPage < 1) {
			commentcurrentPage = 1;
		}

		commentstart = (commentcurrentPage - 1) * commentpageSize;
		commentend = commentpageSize;
	}
	


	public int getCommenttotal() {
		return commenttotal;
	}

	public void setCommenttotal(int commenttotal) {
		this.commenttotal = commenttotal;
	}

	public int getCommentpageSize() {
		return commentpageSize;
	}

	public void setCommentpageSize(int commentpageSize) {
		this.commentpageSize = commentpageSize;
	}

	public int getCommenttotalPage() {
		return commenttotalPage;
	}

	public void setCommenttotalPage(int commenttotalPage) {
		this.commenttotalPage = commenttotalPage;
	}

	public int getCommentcurrentPage() {
		return commentcurrentPage;
	}

	public void setCommentcurrentPage(int commentcurrentPage) {
		this.commentcurrentPage = commentcurrentPage;
	}

	public int getCommentstart() {
		return commentstart;
	}

	public void setCommentstart(int commentstart) {
		this.commentstart = commentstart;
	}

	public int getCommentend() {
		return commentend;
	}

	public void setCommentend(int commentend) {
		this.commentend = commentend;
	}

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

	public Date getBlogTime() {
		return blogTime;
	}

	public void setBlogTime(Date blogTime) {
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
