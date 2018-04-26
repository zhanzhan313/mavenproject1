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

    @RequestMapping("/logout.htm")
    public String logout(HttpServletRequest request) {
        request.getSession().invalidate();
        return "index";

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
