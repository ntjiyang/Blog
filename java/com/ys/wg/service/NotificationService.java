package com.ys.wg.service;

import java.util.List;

import com.ys.wg.model.Notification;

public interface NotificationService {

	boolean addNotification(Notification notification);

	List<Notification> selectNotification(int id);

	List<Notification> showNotificatonByTitle(Long userId);

}
