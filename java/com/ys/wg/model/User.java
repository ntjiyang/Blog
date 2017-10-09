package com.ys.wg.model;

public class User {

	private Long id;
	private String userName;
	private String userPhone;
	private String userEmail;
	private String password;
	private String headImage;
	private String follow;
	private String userInformation;
	private int fans;
	private int isDelete;

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
		if (currentPage > totalPage) {
			currentPage = totalPage;
		}
		if (currentPage < 1) {
			currentPage = 1;
		}
		start = (currentPage - 1) * pageSize;
		end = pageSize;
	}

	public String getUserInformation() {
		return userInformation;
	}

	public void setUserInformation(String userInformation) {
		this.userInformation = userInformation;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getHeadImage() {
		return headImage;
	}

	public void setHeadImage(String headImage) {
		this.headImage = headImage;
	}

	public String getFollow() {
		return follow;
	}

	public void setFollow(String follow) {
		this.follow = follow;
	}

	public int getFans() {
		return fans;
	}

	public void setFans(int fans) {
		this.fans = fans;
	}

	public int getIsDelete() {
		return isDelete;
	}

	public void setIsDelete(int isDelete) {
		this.isDelete = isDelete;
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
