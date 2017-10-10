package com.ys.wg.model;

public class Admin {

	private int adminId; // id
	private String adminName; // 管理员名字
	private String password; // 密码
	private String adminEmail; // 邮箱
	private String adminPhone; // 电话
	private int adminPower; // 权限

	private int admintotal;// 总的数据条数
	private int adminpageSize = 3;// 每页显示条数
	private int admintotalPage;// 总的页数
	private int admincurrentPage = 1;// 当前页数
	private int adminstart;// 开始
	private int adminend;// 结束

	// 计算起始和结束位置
	public void count() {

		admintotalPage = admintotal % adminpageSize > 0 ? admintotal
				/ adminpageSize + 1 : admintotal / adminpageSize;

		if (admincurrentPage > admintotalPage) {
			admincurrentPage = admintotalPage;
		}

		if (admincurrentPage < 1) {
			admincurrentPage = 1;
		}

		adminstart = (admincurrentPage - 1) * adminpageSize;
		adminend = adminpageSize;
	}

	public int getAdminId() {
		return adminId;
	}

	public void setAdminId(int adminId) {
		this.adminId = adminId;
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

	public int getAdmintotal() {
		return admintotal;
	}

	public void setAdmintotal(int admintotal) {
		this.admintotal = admintotal;
	}

	public int getAdminpageSize() {
		return adminpageSize;
	}

	public void setAdminpageSize(int adminpageSize) {
		this.adminpageSize = adminpageSize;
	}

	public int getAdmintotalPage() {
		return admintotalPage;
	}

	public void setAdmintotalPage(int admintotalPage) {
		this.admintotalPage = admintotalPage;
	}

	public int getAdmincurrentPage() {
		return admincurrentPage;
	}

	public void setAdmincurrentPage(int admincurrentPage) {
		this.admincurrentPage = admincurrentPage;
	}

	public int getAdminstart() {
		return adminstart;
	}

	public void setAdminstart(int adminstart) {
		this.adminstart = adminstart;
	}

	public int getAdminend() {
		return adminend;
	}

	public void setAdminend(int adminend) {
		this.adminend = adminend;
	}

}
