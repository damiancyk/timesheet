package project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import project.dao.LoginDAO;
import project.model.User;

@Service
public class LoginServiceImpl implements LoginService {
	@Autowired
	private LoginDAO loginDAO;

	@Transactional
	public User getUser(Integer id) {
		return loginDAO.getUser(id);
	}

	@Transactional
	public boolean isBusyLogin(String login) {
		return loginDAO.isBusyLogin(login);
	}
}
