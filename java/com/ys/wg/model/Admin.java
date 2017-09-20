package com.ys.wg.model;

public class Admin {
	
	private int id;						//id
	private String adminName;    		//管理员名字
	private String password;			//密码
	private String adminEmail;			//邮箱
	private String adminPhone;			//电话
	private int    adminPower;			//权限

	
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
	public String getAdminPassword() {
		return password;
	}
	public void setAdminPassword(String Password) {
		this.password = Password;
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


}
