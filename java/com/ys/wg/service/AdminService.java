package com.ys.wg.service;

import java.util.List;

import com.ys.wg.model.Admin;

public interface AdminService {

	// 管理员登录
	Admin adminLogin(Admin admin);

	// 查询管理员总数
	int selectAdminNumByName(Admin admin);

	// 查询管理员列表
	List<Admin> selectAdminInforByName(Admin admin);

	// 查询管理员列表
	Admin selectAdminInforById(int adminId);

	// 修改权限
	boolean updateAdminPower(int adminId,int power);
	
	// 添加管理员
	boolean insertAdmin(Admin admin);
}
