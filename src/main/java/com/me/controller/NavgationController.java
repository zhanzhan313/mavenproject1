/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.me.controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author ruoran
 */
@Controller
public class NavgationController {

    @RequestMapping("/account.htm")
    public String login() {
        return "account";
    }
    @RequestMapping("/errorPage.htm")
    public String errorPage() {
        return "errorPage";
    }

    @RequestMapping("/logout.htm")
    public String logout(HttpServletRequest request) {
        request.getSession().invalidate();
        return "index";

    }
    @RequestMapping("/sortbook.htm")
    public String sortbook(HttpServletRequest request) {
        
        System.out.println("com.me.controller.NavgationController.sortbook()"+request.getParameter("type"));
        request.getSession().setAttribute("booktype", request.getParameter("type"));
        return "productList";

    }

    @RequestMapping("/contact.htm")
    public String contact() {

        return "contact";
    }

    @RequestMapping("/checkout.htm")
    public String checkout() {

        return "checkout";
    }

    @RequestMapping("/register.htm")
    public String register() {

        return "register";
    }

    @RequestMapping("/index.htm")
    public String index() {

        return "index";
    }
}
