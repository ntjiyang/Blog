package com.ys.wg.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ys.wg.model.Admin;
import com.ys.wg.service.AdminService;

@Controller
@RequestMapping("/admin")
public class AdminController {

	private Logger log = Logger.getLogger(UserController.class);
	@Resource
	private AdminService adminService;

	@RequestMapping("/adminLogin")
	public String userLogin(Admin admin, HttpServletRequest request, Model model) {

		Admin a = adminService.adminLogin(admin);

		if (a != null) {

			model.addAttribute("adminname", admin.getAdminName());
			return "foreView/userHome";
		} else {
			return "backView/adminLogin";
		}
	}
}
