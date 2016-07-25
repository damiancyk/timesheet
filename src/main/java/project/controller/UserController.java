package project.controller;

import java.io.IOException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/user")
public class UserController {

	@RequestMapping(value = "/account")
	public ModelAndView editAcccount(ModelAndView mav) {
		mav.setViewName("user/account");
		return mav;
	}

	@RequestMapping(value = "/addItem")
	public ModelAndView itemForm(ModelAndView mav) {
		mav.setViewName("user/addItem");
		return mav;
	}

	@RequestMapping(value = "/addItem", method = RequestMethod.POST)
	public ModelAndView itemUpload(ModelAndView mav,
			@RequestParam("image") MultipartFile file) throws IOException {

		if (!file.isEmpty()) {
			byte[] bytes = file.getBytes();
			// store the bytes somewhere
			System.out.print(bytes.toString());
			mav.addObject("image", file);
			mav.setViewName("redirect:addItem?success=true");
		} else {
			mav.setViewName("redirect:addItem?success=false");
		}

		return mav;
	}

}
