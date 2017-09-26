package com.ys.wg.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ys.wg.model.Admin;

@Repository
public interface AdminDao {

	Admin adminLogin(Admin admin);
	
	List<Admin> selectAllAdmin();
	
	List<Admin> selectAdminInforByName(Admin admin);

}
