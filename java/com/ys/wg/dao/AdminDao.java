package com.ys.wg.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ys.wg.model.Admin;

@Repository
public interface AdminDao {

	Admin adminLogin(Admin admin);
	
	int selectAdminNumByName(Admin admin);
	
	List<Admin> selectAdminInforByName(Admin admin);

}
