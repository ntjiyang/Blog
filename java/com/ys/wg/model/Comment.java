package com.ys.wg.model;

import java.util.Date;

public class Comment {
	
	private int id; 			//����id
	private int blog_id;		//����id
	private Date time;  		//����ʱ��
	private int user_id;		//�û�id
	private int num;			//¥��
	private int reply_user_id;	//�����û�id
	private String content;		//��������
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getBlog_id() {
		return blog_id;
	}
	public void setBlog_id(int blog_id) {
		this.blog_id = blog_id;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public int getReply_user_id() {
		return reply_user_id;
	}
	public void setReply_user_id(int reply_user_id) {
		this.reply_user_id = reply_user_id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	
	

}
