package de.hablijack.eilkurier.controller;


import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
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

import de.hablijack.eilkurier.domain.validator.CategoryCreateFormValidator;
import de.hablijack.eilkurier.form.CategoryCreateForm;
import de.hablijack.eilkurier.service.CategoryService;

@Controller
public class CategoryController {

    private static final Logger LOGGER = LoggerFactory.getLogger(CategoryController.class);
    @Autowired
    private CategoryService categoryService;
    @Autowired
    private CategoryCreateFormValidator categoryCreateFormValidator;

    @InitBinder("form")
    public void initBinder(WebDataBinder binder) {
        binder.addValidators(categoryCreateFormValidator);
    }
    @InitBinder
    protected void initBinder(ServletRequestDataBinder binder) {
        binder.registerCustomEditor(byte[].class, new ByteArrayMultipartFileEditor());
    }
    

    @RequestMapping(value = "/category/{id}", method = RequestMethod.GET)
    public String getCategory(Model model, @PathVariable("id") int id) {
        LOGGER.debug("Getting categories");
        model.addAttribute("category", categoryService.getCategoryById(id));
        return "category_view";
    }
    
    @RequestMapping(value = "/categories", method = RequestMethod.GET)
    public String getCategories(Model model) {
        LOGGER.debug("Getting categories");
        model.addAttribute("categories", categoryService.getAllCategories());
        return "categories";
    }
    
    @RequestMapping(value = "/category/create", method = RequestMethod.GET)
    public ModelAndView getUserCreatePage() {
        LOGGER.debug("Getting category create form");
        return new ModelAndView("category_edit", "form", new CategoryCreateForm());
    }

    @RequestMapping(value = "/category/create", method = RequestMethod.POST)
    public String handleUserCreateForm(
    		@Valid @ModelAttribute("form") CategoryCreateForm form, 
    		BindingResult bindingResult) {
        LOGGER.debug("Processing category create form={}, bindingResult={}", form, bindingResult);
       
        if (bindingResult.hasErrors()) {
            // failed validation
            return "category_edit";
        }
        try {
        	categoryService.create(form);
        } catch (Exception e) {
            LOGGER.warn("Exception occurred when trying to save the category, assuming duplicate email", e);
            bindingResult.reject("name.exists", "Email already exists");
            return "category_edit";
        }
        // ok, redirect
        return "redirect:/categories";
    }

}
