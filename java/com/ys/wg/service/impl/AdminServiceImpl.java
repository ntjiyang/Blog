package com.ys.wg.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ys.wg.dao.AdminDao;
import com.ys.wg.model.Admin;
import com.ys.wg.service.AdminService;

@Service
@Transactional(rollbackFor = Exception.class)
public class AdminServiceImpl implements AdminService {

	@Resource
    private AdminDao adminDao;
	
	public Admin adminLogin(Admin admin) {
		
		return adminDao.adminLogin(admin);
	}

	public List<Admin> selectAllAdmin() {
		
		return adminDao.selectAllAdmin();
	}

	public List<Admin> selectAdminInforByName(Admin admin) {

		return adminDao.selectAdminInforByName(admin);
	}

}
