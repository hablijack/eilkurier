package de.hablijack.eilkurier.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomepageController {
    
    @RequestMapping(value={"", "/", "/index.html", "welcome"})
    public String index() {
        return "homepage";
    }
}
