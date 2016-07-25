package project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import project.dao.ItemDAO;
import project.model.Item;
import project.model.User;

@Service
@Transactional
public class ItemServiceImpl implements ItemService {

	@Autowired
	ItemDAO itemDAO;

	public List<Item> listItem(User user, String order, Integer firstResult,
			Integer maxResults) {
		return itemDAO.listItem(user, order, firstResult, maxResults);
	}

	public Item getItem(Integer id) {
		return itemDAO.getItem(id);
	}

	public void addItem(Item item) {
		itemDAO.addItem(item);
	}

	public void deleteItem(Integer id) {
		itemDAO.deleteItem(id);
	}

	public void updateItem(Item item) {
		itemDAO.updateItem(item);
	}

}
