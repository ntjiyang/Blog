package com.ys.wg.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ys.wg.dao.NotificationDao;
import com.ys.wg.model.Notification;
import com.ys.wg.service.NotificationService;

@Service
@Transactional(rollbackFor = Exception.class)
public class NotificationServiceImpl implements NotificationService {
	
	@Resource
	private NotificationDao notificationDao;

	public List<Notification> selectNotification(int id) {
		
		return notificationDao.selectNotification(id);
	}

	public List<Notification> showNotificatonByTitle(Long userId) {
		
		return notificationDao.showNotificationByTitle(userId);
	}

}
