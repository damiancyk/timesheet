package project.service;

import project.model.User;

public interface LoginService {
	public User getUser(Integer id);
	
	public boolean isBusyLogin(String login);
}
