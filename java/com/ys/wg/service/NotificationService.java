package com.ys.wg.service;

import java.util.List;

import com.ys.wg.model.Notification;

public interface NotificationService {

	List<Notification> selectNotification(int id);

}
