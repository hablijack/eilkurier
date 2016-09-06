package de.hablijack.eilkurier.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
class YourNewsController {
    
    @RequestMapping(value={ "/yournews" })
    public String yournews() {
        return "yournews";
    }
}
