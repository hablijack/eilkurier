package de.hablijack.eilkurier.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import de.hablijack.eilkurier.service.CategoryService;

@Controller
class bYourNewsController {

    @Autowired
    private CategoryService categoryService;

    @RequestMapping(value = { "/yournews" })
    public String yournews(Model model) {
        model.addAttribute("categories", categoryService.getAllCategories());
        return "yournews";
    }
}
