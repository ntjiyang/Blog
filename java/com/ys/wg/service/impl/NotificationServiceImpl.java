package com.ys.wg.service.impl;

import java.util.List;

import javax.annotation.Resource;

import com.ys.wg.dao.NotificationDao;
import com.ys.wg.model.Notification;
import com.ys.wg.service.NotificationService;

public class NotificationServiceImpl implements NotificationService {
	
	@Resource
	private NotificationDao notificationDao;

	public List<Notification> selectNotification(int id) {
		
		return notificationDao.selectNotification(id);
	}

}
