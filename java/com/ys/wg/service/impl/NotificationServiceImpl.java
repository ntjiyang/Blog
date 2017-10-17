package com.ys.wg.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ys.wg.dao.NotificationDao;
import com.ys.wg.model.Notification;
import com.ys.wg.model.Page;
import com.ys.wg.service.NotificationService;

@Service
@Transactional(rollbackFor = Exception.class)
public class NotificationServiceImpl implements NotificationService {
	
	@Resource
	private NotificationDao notificationDao;
	
	public boolean addNotification(Notification notification) {

		return notificationDao.addNotification(notification);
	}

	public Notification selectNotification(int id) {
		
		return notificationDao.selectNotification(id);
	}
	
	private int selectNotificationNum(long notiuserId) {
		
		return notificationDao.selectNotificationNum(notiuserId);
	}
	

	public List<Notification> showNotificatonByTitle(long notiuserId, Page page) {
		
		
		int num = this.selectNotificationNum(notiuserId);
		page.setTotal(num);
		page.count();
		
		if(num == 0)
			return notificationDao.showNotificationByTitle(notiuserId,0,0);
		
		return notificationDao.showNotificationByTitle(notiuserId,page.getStart(),page.getEnd());
	}

	public boolean deleteNotification(int notificationId) {
	
		return notificationDao.deleteNotification(notificationId);
	}



}
