package com.ys.wg.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ys.wg.model.Notification;

@Repository
public interface NotificationDao {

	List<Notification> selectNotification(int id);

	
}
