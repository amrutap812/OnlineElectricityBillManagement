package com.app.service;

import com.app.pojos.User;

public interface INotificationService {
	
	public void sendNotification(User user, String message);
}
