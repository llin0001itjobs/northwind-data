package org.llin.demo.northwind.data.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.view.RedirectView;

@Controller("dataIndexController")
public class IndexController {

    @GetMapping("/")
    public RedirectView redirect() {
        return new RedirectView("home/entities"); 
    }
    
}