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
	private String type; // 类型
	private int status; // 状态

	private int total;// 总的数据条数
	private int pageSize = 3;// 每页显示条数
	private int totalPage;// 总的页数
	private int currentPage = 1;// 当前页数
	private int start;// 开始
	private int end;// 结束

	// 计算起始和结束位置
	public void count() {

		totalPage = total % pageSize > 0 ? total / pageSize + 1 : total
				/ pageSize;
		if (currentPage < 1) {
			currentPage = 1;
		}
		if (currentPage > totalPage) {
			currentPage = totalPage;
		}
		start = (currentPage - 1) * pageSize;
		end = pageSize;
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

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getStart() {
		return start;
	}

	public void setStart(int start) {
		this.start = start;
	}

	public int getEnd() {
		return end;
	}

	public void setEnd(int end) {
		this.end = end;
	}

}
