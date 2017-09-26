package com.ys.wg.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ys.wg.model.Admin;
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

		System.out.println(admin.getAdminName());
		//System.out.println(admin.getAdminPassword());
		Admin a = adminService.adminLogin(admin);

		if (a != null) {

			model.addAttribute("adminname", admin.getAdminName());
			return "backView/adminHome";
		} else {
			return "backView/adminLogin";
		}
	}
	
	//根据用户名查询个人信息
		@RequestMapping("/adminSelect")
		public String adminSelect(User user,Admin admin,HttpServletRequest request, Model model){
			
			List<Admin> adminlist = adminService.selectAdminInforByName(admin);
			List<User> userlist = userService.getAllUser();
			
			model.addAttribute("adminlist", adminlist);
			model.addAttribute("userlist", userlist);
			
				return "backView/adminright";

		}
}
