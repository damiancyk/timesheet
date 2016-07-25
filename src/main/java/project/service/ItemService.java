package project.service;

import java.util.List;

import project.model.Item;
import project.model.User;

public interface ItemService {

	public List<Item> listItem(User user, String order, Integer firstResult,
			Integer maxResults);

	public Item getItem(Integer id);

	public void addItem(Item item);

	public void deleteItem(Integer id);

	public void updateItem(Item item);

}
