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

	public int selectAdminNumByName(Admin admin) {

		return adminDao.selectAdminNumByName(admin);
	}

	public List<Admin> selectAdminInforByName(Admin admin) {

		int admintotal = this.selectAdminNumByName(admin);
		admin.setAdmintotal(admintotal);
		admin.count();

		List<Admin> adminlist = adminDao.selectAdminInforByName(admin);

		return adminlist;
	}

	public Admin selectAdminInforById(int adminId) {

		return adminDao.selectAdminInforById(adminId);
	}

	public boolean updateAdminPower(int adminId,int power) {

		return adminDao.updateAdminPower(adminId,power);
	}

}
