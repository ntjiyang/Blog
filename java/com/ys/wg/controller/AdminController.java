package com.ys.wg.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ys.wg.model.Admin;
import com.ys.wg.model.Page;
import com.ys.wg.model.User;
import com.ys.wg.service.AdminService;
import com.ys.wg.service.UserService;

@Controller
@RequestMapping("/admin")
public class AdminController {

	private Logger log = Logger.getLogger(AdminController.class);

	@Resource
	private AdminService adminService;

	@Resource
	private UserService userService;

	@RequestMapping("/adminLogin")
	public String userLogin(Admin admin, HttpServletRequest request, Model model) {

		Admin a = adminService.adminLogin(admin);

		if (a != null) {

			model.addAttribute("adminname", admin.getAdminName());
			return "backView/adminHome";
		} else {
			return "backView/adminLogin";
		}
	}

	// 根据用户名查询个人信息
	@RequestMapping("/adminSelect")
	public String adminSelect(User user, Admin admin, Page page,
			HttpServletRequest request, Model model) {

		List<User> userlist = userService.selectUserInforListByName(user);
		List<Admin> adminlist = adminService.selectAdminInforByName(admin);

		model.addAttribute("userlist", userlist);
		model.addAttribute("adminlist", adminlist);
		model.addAttribute("user", user);
		model.addAttribute("admin", admin);

		return "backView/adminright";
	}
}
