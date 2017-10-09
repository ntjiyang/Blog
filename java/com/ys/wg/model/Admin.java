package com.ys.wg.model;

public class Admin {

	private int id; // id
	private String adminName; // 管理员名字
	private String password; // 密码
	private String adminEmail; // 邮箱
	private String adminPhone; // 电话
	private int adminPower; // 权限

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

	public String getAdminName() {
		return adminName;
	}

	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAdminEmail() {
		return adminEmail;
	}

	public void setAdminEmail(String adminEmail) {
		this.adminEmail = adminEmail;
	}

	public String getAdminPhone() {
		return adminPhone;
	}

	public void setAdminPhone(String adminPhone) {
		this.adminPhone = adminPhone;
	}

	public int getAdminPower() {
		return adminPower;
	}

	public void setAdminPower(int adminPower) {
		this.adminPower = adminPower;
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
