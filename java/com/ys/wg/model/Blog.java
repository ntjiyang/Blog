package com.ys.wg.model;

import java.util.Date;

public class Blog {
	
	private  int id;		 		//id
	private  int user_id;			//用户id
	private  Date time;				//发布时间
	private  String title;			//标题
	private  String content;		//内容
	private  int see_count;			//浏览次数
	private  String support;		//点赞
	private  String type;			//类型
	private  int status;			//审核状态
	
	
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
