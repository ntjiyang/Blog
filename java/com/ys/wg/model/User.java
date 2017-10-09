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

	private int usertotal;// 总的数据条数
	private int userpageSize = 3;// 每页显示条数
	private int usertotalPage;// 总的页数
	private int usercurrentPage = 1;// 当前页数
	private int userstart;// 开始
	private int userend;// 结束

	// 计算起始和结束位置
	public void count() {

		usertotalPage = usertotal % userpageSize > 0 ? usertotal / userpageSize
				+ 1 : usertotal / userpageSize;
		if (usercurrentPage > usertotalPage) {
			usercurrentPage = usertotalPage;
		}
		if (usercurrentPage < 1) {
			usercurrentPage = 1;
		}
		userstart = (usercurrentPage - 1) * userpageSize;
		userend = userpageSize;
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

	public int getUsertotal() {
		return usertotal;
	}

	public void setUsertotal(int usertotal) {
		this.usertotal = usertotal;
	}

	public int getUserpageSize() {
		return userpageSize;
	}

	public void setUserpageSize(int userpageSize) {
		this.userpageSize = userpageSize;
	}

	public int getUsertotalPage() {
		return usertotalPage;
	}

	public void setUsertotalPage(int usertotalPage) {
		this.usertotalPage = usertotalPage;
	}

	public int getUsercurrentPage() {
		return usercurrentPage;
	}

	public void setUsercurrentPage(int usercurrentPage) {
		this.usercurrentPage = usercurrentPage;
	}

	public int getUserstart() {
		return userstart;
	}

	public void setUserstart(int userstart) {
		this.userstart = userstart;
	}

	public int getUserend() {
		return userend;
	}

	public void setUserend(int userend) {
		this.userend = userend;
	}

}
