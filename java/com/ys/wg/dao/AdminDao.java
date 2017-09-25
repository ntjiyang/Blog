package com.ys.wg.dao;

import org.springframework.stereotype.Repository;

import com.ys.wg.model.Admin;

@Repository
public interface AdminDao {

	Admin adminLogin(Admin admin);

}
