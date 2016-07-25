package project.dao;

import project.model.User;

public interface LoginDAO {
	public User getUser(Integer id);

	public boolean isBusyLogin(String login);
}
