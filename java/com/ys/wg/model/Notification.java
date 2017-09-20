package com.ys.wg.model;

import java.util.Date;

public class Notification {
	
	private int id;							//ͨ通知id
	private int userId;						//用户id
	private Date notificationTime;			//时间
	private String notificationTitle;		//֪ͨ标题
	private String notificationContent;		//内容
	private int status;						//审核状态
	private int adminId;					//管理员id
	
	
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
	public Date getNotificationTime() {
		return notificationTime;
	}
	public void setNotificationTime(Date notificationTime) {
		this.notificationTime = notificationTime;
	}
	public String getNotificationTitle() {
		return notificationTitle;
	}
	public void setNotificationTitle(String notificationTitle) {
		this.notificationTitle = notificationTitle;
	}
	public String getNotificationContent() {
		return notificationContent;
	}
	public void setNotificationContent(String notificationContent) {
		this.notificationContent = notificationContent;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public int getAdminId() {
		return adminId;
	}
	public void setAdminId(int adminId) {
		this.adminId = adminId;
	}
	
	

	
	
	
}
