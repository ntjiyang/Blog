package com.ys.wg.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ys.wg.model.Notification;

import com.ys.wg.service.NotificationService;

@Controller
@RequestMapping("/Notification")
public class NotificationController {
	
	@Resource
	private NotificationService notificationService;
	
		//点击信息标题显示通知详情
		@RequestMapping("/selectNotification")
		public String selectNotification(Notification notification,HttpServletRequest request, Model model){
			
			List<Notification> notificationList = notificationService.selectNotification(notification.getId());
			
			model.addAttribute("notificationlist", notificationList );
		
			return "";
		
		}

}
