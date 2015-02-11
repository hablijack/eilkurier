package de.hablijack.eilkurier.controller;


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
import org.springframework.web.multipart.support.ByteArrayMultipartFileEditor;
import org.springframework.web.servlet.ModelAndView;

import de.hablijack.eilkurier.domain.validator.FeedCreateFormValidator;
import de.hablijack.eilkurier.form.FeedCreateForm;
import de.hablijack.eilkurier.service.FeedService;

@Controller
public class FeedController {

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
    public String getAllFeeds(Model model, @PathVariable("id") int id) {
        LOGGER.debug("Getting all feeds");
        model.addAttribute("feed", feedService.getFeedById(id));
        return "feed_view";
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
    public String handleUserCreateForm(
    	@Valid @ModelAttribute("form") FeedCreateForm form, 
    	BindingResult bindingResult) {
        LOGGER.debug("Processing feed create form={}, bindingResult={}", form, bindingResult);
        if (bindingResult.hasErrors()) {
            // failed validation
            return "feed_edit";
        }
        try {
            feedService.create(form);
        } catch (DataIntegrityViolationException e) {
            // probably email already exists - very rare case when multiple admins are adding same user
            // at the same time and form validation has passed for more than one of them.
            LOGGER.warn("Exception occurred when trying to save the feed, assuming duplicate email", e);
            bindingResult.reject("name.exists", "Email already exists");
            return "feed_edit";
        }
        // ok, redirect
        return "redirect:/feeds";
    }

}
