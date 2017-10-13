package com.ys.wg.model;

import java.util.Date;

public class Notification {

	private int notificationId; // ͨ通知id
	private long notiuserId; // 用户id
	private Date notificationTime; // 时间
	private String notificationTitle; // ֪ͨ标题
	private String notificationContent; // 内容
	private int notificationStatus; // 审核状态
	private int notiadminId; // 管理员id

	private int notitotal;// 总的数据条数
	private int notipageSize = 3;// 每页显示条数
	private int notitotalPage;// 总的页数
	private int noticurrentPage = 1;// 当前页数
	private int notistart;// 开始
	private int notiend;// 结束

	// 计算起始和结束位置
	public void count() {

		notitotalPage = notitotal % notipageSize > 0 ? notitotal / notipageSize
				+ 1 : notitotal / notipageSize;
		if (noticurrentPage < 1) {
			noticurrentPage = 1;
		}
		if (noticurrentPage > notitotalPage) {
			noticurrentPage = notitotalPage;
		}
		notistart = (noticurrentPage - 1) * notipageSize;
		notiend = notipageSize;
	}

	public int getNotificationId() {
		return notificationId;
	}

	public void setNotificationId(int notificationId) {
		this.notificationId = notificationId;
	}

	public long getNotiuserId() {
		return notiuserId;
	}

	public void setNotiuserId(long notiuserId) {
		this.notiuserId = notiuserId;
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

	public int getNotificationStatus() {
		return notificationStatus;
	}

	public void setNotificationStatus(int notificationStatus) {
		this.notificationStatus = notificationStatus;
	}


	public int getadminId() {
		return notiadminId;
	}

	public void setadminId(int adminId) {
		this.notiadminId = adminId;
	}
	
	public int getNotiadminId() {
		return notiadminId;
	}

	public void setNotiadminId(int notiadminId) {
		this.notiadminId = notiadminId;
	}

	public int getNotitotal() {
		return notitotal;
	}

	public void setNotitotal(int notitotal) {
		this.notitotal = notitotal;
	}

	public int getNotipageSize() {
		return notipageSize;
	}

	public void setNotipageSize(int notipageSize) {
		this.notipageSize = notipageSize;
	}

	public int getNotitotalPage() {
		return notitotalPage;
	}

	public void setNotitotalPage(int notitotalPage) {
		this.notitotalPage = notitotalPage;
	}

	public int getNoticurrentPage() {
		return noticurrentPage;
	}

	public void setNoticurrentPage(int noticurrentPage) {
		this.noticurrentPage = noticurrentPage;
	}

	public int getNotistart() {
		return notistart;
	}

	public void setNotistart(int notistart) {
		this.notistart = notistart;
	}

	public int getNotiend() {
		return notiend;
	}

	public void setNotiend(int notiend) {
		this.notiend = notiend;
	}

}
