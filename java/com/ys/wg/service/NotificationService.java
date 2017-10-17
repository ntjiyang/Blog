package com.ys.wg.service;

import java.util.List;

import com.ys.wg.model.Notification;
import com.ys.wg.model.Page;

public interface NotificationService {

	boolean addNotification(Notification notification);

	Notification selectNotification(int id);

	List<Notification> showNotificatonByTitle(long notiuserId, Page page);

	boolean deleteNotification(int notificationId);

	

}
