package com.ys.wg.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.ys.wg.model.Notification;

@Repository
public interface NotificationDao {
	
	boolean addNotification(Notification notification);

	Notification selectNotification(int notificationId);

	int selectNotificationNum(long notiuserId);

	List<Notification> showNotificationByTitle(@Param("notiuserId")long notiuserId, @Param("start")int start,@Param("end")int end);

	boolean deleteNotification(int notificationId);

	
}
