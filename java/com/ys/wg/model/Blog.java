package com.ys.wg.model;

import java.util.Date;

public class Blog {
	
	private  int id;		 		//id
	private  int user_id;			//�û�id
	private  Date time;				//����ʱ��
	private  String title;			//����
	private  String content;		//����
	private  int see_count;			//�������
	private  String support;		//����
	private  String type;			//����
	private  int status;			//���״̬
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getSee_count() {
		return see_count;
	}
	public void setSee_count(int see_count) {
		this.see_count = see_count;
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
	
	
	

}
