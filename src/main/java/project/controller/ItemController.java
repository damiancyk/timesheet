package project.controller;

import java.io.IOException;
import java.io.Writer;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import project.model.Item;
import project.service.ItemService;

@Controller
@RequestMapping(value = "/item")
public class ItemController {

	@Autowired
	ItemService itemService;

	@RequestMapping(value = "/write", method = RequestMethod.PUT)
	public void handle(@RequestBody String body, Writer writer)
			throws IOException {
		writer.write(body);
	}

	@RequestMapping(value = "/list")
	public ModelAndView listItem(ModelAndView mav) {
		mav.setViewName("item/list");
		List<Item> itemList = itemService.listItem(null, "", 0, 100);
		mav.addObject("itemList", itemList);
		return mav;
	}

	@RequestMapping(value = "/one/{idItem}", method = RequestMethod.GET)
	public ModelAndView oneItem(ModelAndView mav,
			@PathVariable("idItem") Integer idItem) {
		mav.setViewName("item/one");
		Item item = itemService.getItem(idItem);
		mav.addObject("item", item);
		return mav;
	}
}
