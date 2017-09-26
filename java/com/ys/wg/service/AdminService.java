package com.ys.wg.service;

import java.util.List;

import com.ys.wg.model.Admin;

public interface AdminService {

	// 管理员登录
	Admin adminLogin(Admin admin);

	// 管理员列表
	List<Admin> selectAllAdmin();

	// 查询管理员列表
	List<Admin> selectAdminInforByName(Admin admin);
}
