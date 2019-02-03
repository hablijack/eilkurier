package de.hablijack.eilkurier.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import de.hablijack.eilkurier.domain.CurrentUser;
import de.hablijack.eilkurier.domain.Feed;
import de.hablijack.eilkurier.service.CategoryService;
import de.hablijack.eilkurier.service.FeedService;
import de.hablijack.eilkurier.service.UserService;

@Controller
class NewsWizzardController {

	@Autowired
	private CategoryService categoryService;
	@Autowired
	private FeedService feedService;
	@Autowired
	private UserService userService;

	@RequestMapping(value = "/user/feed/{id}", method = RequestMethod.POST)
	public void storeUserChoice(Authentication authentication, @PathVariable("id") int id, @RequestParam("index") int sortindex) {
		Optional<Feed> feed = feedService.getFeedById(id);
		CurrentUser currentUser = (CurrentUser) authentication.getPrincipal();
		userService.storePersonalizedFeed(currentUser.getUser().getId(), feed.get(), sortindex);
	}

	@RequestMapping(value = { "/newswizzard" })
	public String yournews(Model model) {
		model.addAttribute("categories", categoryService.getAllCategories());
		return "newswizzard";
	}
}
