package com.ys.wg.model;

import java.util.Date;

public class Blog {

	private int id; // id
	private int userId; // 用户id
	private Date time; // 时间
	private String blogTitle; // 标题
	private String blogContent; // 内容
	private int seeCount; // 浏览数
	private String support; // 点赞
	private int type; // 类型
	private int check; // 审核
	private int status; // 状态

	private int blogtotal;// 总的数据条数
	private int blogpageSize = 1;// 每页显示条数
	private int blogtotalPage;// 总的页数
	private int blogcurrentPage = 1;// 当前页数
	private int blogstart;// 开始
	private int blogend;// 结束

	// 计算起始和结束位置
	public void count() {

		blogtotalPage = blogtotal % blogpageSize > 0 ? blogtotal / blogpageSize
				+ 1 : blogtotal / blogpageSize;
		if (blogcurrentPage < 1) {
			blogcurrentPage = 1;
		}
		if (blogcurrentPage > blogtotalPage) {
			blogcurrentPage = blogtotalPage;
		}
		blogstart = (blogcurrentPage - 1) * blogpageSize;
		blogend = blogpageSize;
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

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	public String getBlogTitle() {
		return blogTitle;
	}

	public void setBlogTitle(String blogTitle) {
		this.blogTitle = blogTitle;
	}

	public String getBlogContent() {
		return blogContent;
	}

	public void setBlogContent(String blogContent) {
		this.blogContent = blogContent;
	}

	public int getSeeCount() {
		return seeCount;
	}

	public void setSeeCount(int seeCount) {
		this.seeCount = seeCount;
	}

	public String getSupport() {
		return support;
	}

	public void setSupport(String support) {
		this.support = support;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public int getCheck() {
		return check;
	}

	public void setCheck(int check) {
		this.check = check;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public int getBlogtotal() {
		return blogtotal;
	}

	public void setBlogtotal(int blogtotal) {
		this.blogtotal = blogtotal;
	}

	public int getBlogpageSize() {
		return blogpageSize;
	}

	public void setBlogpageSize(int blogpageSize) {
		this.blogpageSize = blogpageSize;
	}

	public int getBlogtotalPage() {
		return blogtotalPage;
	}

	public void setBlogtotalPage(int blogtotalPage) {
		this.blogtotalPage = blogtotalPage;
	}

	public int getBlogcurrentPage() {
		return blogcurrentPage;
	}

	public void setBlogcurrentPage(int blogcurrentPage) {
		this.blogcurrentPage = blogcurrentPage;
	}

	public int getBlogstart() {
		return blogstart;
	}

	public void setBlogstart(int blogstart) {
		this.blogstart = blogstart;
	}

	public int getBlogend() {
		return blogend;
	}

	public void setBlogend(int blogend) {
		this.blogend = blogend;
	}

}
