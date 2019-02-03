package de.hablijack.eilkurier.controller;

import java.io.IOException;
import java.util.List;
import java.util.Optional;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.support.ByteArrayMultipartFileEditor;
import org.springframework.web.servlet.ModelAndView;

import com.rometools.rome.io.FeedException;

import de.hablijack.eilkurier.domain.Feed;
import de.hablijack.eilkurier.domain.validator.FeedCreateFormValidator;
import de.hablijack.eilkurier.form.FeedCreateForm;
import de.hablijack.eilkurier.service.FeedService;

@Controller
class FeedController {

	private static final Logger LOGGER = LoggerFactory.getLogger(FeedController.class);
	@Autowired
	private FeedService feedService;
	@Autowired
	private FeedCreateFormValidator feedCreateFormValidator;

	@InitBinder("form")
	public void initBinder(WebDataBinder binder) {
		binder.addValidators(feedCreateFormValidator);
	}

	@InitBinder
	protected void initBinder(ServletRequestDataBinder binder) {
		binder.registerCustomEditor(byte[].class, new ByteArrayMultipartFileEditor());
	}

	@RequestMapping(value = "/feed/{id}", method = RequestMethod.GET)
	public String getFeedById(Model model, @PathVariable("id") int id) {
		LOGGER.debug("Getting feed by id");
		model.addAttribute("feed", feedService.getFeedById(id));
		return "feed_view";
	}

	@ResponseBody
	@RequestMapping(value = "/feed/{id}.json", method = RequestMethod.GET)
	public Optional<Feed> getJSONFeedById(Model model, @PathVariable("id") int id) {
		LOGGER.debug("Getting feed by id");
		return feedService.getFeedById(id);
	}
	
	@ResponseBody
	@RequestMapping(value = "/categories/{categoryId}/feeds.json", method = RequestMethod.GET)
	public List<Feed> getAllFeedsByCategory(@PathVariable(value="categoryId") String categoryId) {
		LOGGER.debug("Getting all feeds for category: " + categoryId + " as json...");
		return feedService.getFeedsByCategoryId(new Long(categoryId));
	}
	
	@RequestMapping(value = "/feeds", method = RequestMethod.GET)
	public String getAllFeeds(Model model) {
		LOGGER.debug("Getting all feeds");
		model.addAttribute("feeds", feedService.getAllFeeds());
		return "feeds";
	}

	@RequestMapping(value = "/feed/create", method = RequestMethod.GET)
	public ModelAndView getUserCreatePage() {
		LOGGER.debug("Getting feed create form");
		return new ModelAndView("feed_edit", "form", new FeedCreateForm());
	}

	@RequestMapping(value = "/feed/create", method = RequestMethod.POST)
	public String handleUserCreateForm(@Valid @ModelAttribute("form") FeedCreateForm form,
			BindingResult bindingResult) {
		try {
			feedService.create(form);
		} catch (DataIntegrityViolationException e) {
			LOGGER.warn("Exception occurred when trying to save the feed, assuming duplicate email", e);
			bindingResult.reject("name.exists", "Email already exists");
			return "feed_edit";
		} catch (IllegalArgumentException | FeedException | IOException e) {
			LOGGER.warn("Exception occured when parsing URL: ", e);
			bindingResult.reject("url.failure", "URL invalid");
			return "feed_edit";
		}
		return "redirect:/feeds";
	}

}
