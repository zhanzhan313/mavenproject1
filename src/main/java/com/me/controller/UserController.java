/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.me.controller;

import com.me.filter.Md5;
import com.ruoran.DAO.OrderDao;
import com.ruoran.DAO.UserDAO;
import com.ruoran.pojo.Order;
import com.ruoran.pojo.OrderItem;
import com.ruoran.pojo.User;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author ruoran
 */
@Controller
public class UserController {

    @RequestMapping("/orderhistory.htm")
    public String orderhistory(HttpServletRequest request, OrderDao orderDao) {
        User user = (User) request.getSession().getAttribute("existUser");
        List<Order> orders = orderDao.findOrdersByUid(user.getUid());
        request.getSession().setAttribute("existUserOrder", orders);
        return "orderhistory";

    }
    @RequestMapping("/userorderhistory.htm")
    public String userorderhistory(HttpServletRequest request, OrderDao orderDao) {
        int uid=Integer.valueOf(request.getParameter("userid"));
        List<Order> orders = orderDao.findOrdersByUid(uid);
        request.getSession().setAttribute("existUserOrder", orders);
        return "orderhistory";

    }

    @RequestMapping("/ViewSingleorder.htm")
    public String ViewSingleorder(HttpServletRequest request, OrderDao orderDao) {
        int id = (Integer.valueOf(request.getParameter("Ordernumber")));
        List<OrderItem> orderItems = orderDao.findOrderItemsByUid(id);
        request.getSession().setAttribute("existUserorderItems", orderItems);
        return "orderitemshistory";

    }

    @RequestMapping("/confirmLogin.htm")
    public String confirmLogin(HttpServletRequest request, UserDAO userDao) {
        String useremail = request.getParameter("email");
        String password = request.getParameter("password");
        if (useremail.equals("admin") && password.equals("admin")) {
            List<User> users=userDao.getallUsers();
//            for(User user:users)
//                System.out.println("com.me.controller.UserController.confirmLogin()"+user.getEmail());
            request.getSession().setAttribute("allusers", users);
            return "admin";
        }

        try {
            User user = userDao.get(useremail, Md5.crypt(password));
            if (user != null) {
                System.out.println(user.getUid());
                request.getSession().setAttribute("existUser", user);
                return "index";
            } else {
                System.out.println("com.me.controller.UserController.confirmLogin() user is null");
                return "errorPage";
            }
        } catch (Exception e) {
            System.err.println(e);
            return "errorPage";
        }

    }

    @RequestMapping("/registerValid.htm")
    public String registerValid(HttpServletRequest request, UserDAO userDao) {
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String useremail = request.getParameter("email");
        String password = request.getParameter("pass");
        String mobilenumber = request.getParameter("mobilenumber");
        String address = request.getParameter("address");
        User user = new User();
        user.setAddr(address);
        user.setLname(lname);
        user.setEmail(useremail);
        user.setFname(fname);
        user.setPassword( Md5.crypt(password));
        user.setPhone(lname);
        try {
            userDao.register(user);
            request.getSession().setAttribute("existUser", user);
        } catch (Exception e) {
            System.out.println(e);
            return "errorPage";
        }

        return "index";
    }

    @RequestMapping(value = "/findbyEmail.htm", method = RequestMethod.POST)
    @ResponseBody
    public String ajaxService(HttpServletRequest request, UserDAO userDao) {
        String useremail = request.getParameter("useremail");
        System.out.println("com.ruoran.controller.UserController.ajaxService()" + useremail);
        String result = "";

        User user = userDao.get(useremail);
        if (user != null) {
            System.out.println(user.getUid());
            return "This email has been used, Please use another one";

        } else {
            return "You can use this email!";
        }

    }

}
