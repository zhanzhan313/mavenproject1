/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.me.controller;

import com.ruoran.DAO.UserDAO;
import com.ruoran.pojo.Order;
import com.ruoran.pojo.OrderItem;
import com.ruoran.pojo.User;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author ruoran
 */
@Controller
public class UserController {
    
    @RequestMapping("/test.htm")
    public String test(UserDAO userdao) {
        User user = new User();
        user.setFname("zhanzhan");
//        Set<Order> orders = new HashSet<Order>();
//        Set<OrderItem> orderitemss = new HashSet<OrderItem>();
//        orderitemss.add(new OrderItem());
//        orderitemss.add(new OrderItem());
//        orderitemss.add(new OrderItem());
//        OrderItem orderItem = new OrderItem();
//        Set<OrderItem> orderitemss2 = new HashSet<OrderItem>();
//        orderitemss2.add(new OrderItem());
//        orderitemss2.add(new OrderItem());
//        orderitemss2.add(new OrderItem());
        Order order = new Order();
        order.setTotal(12.3);
    order.setOrdertime(new Date());
        user.getOrders().add(order);
       
        order.setUser(user);
       
        order.getOrderItems().add(new OrderItem());
//        order.setOrderItems(orderitemss);
//        order2.setOrderItems(orderitemss2);
//        orders.add(order);
//        orders.add(order2);

//        user.setOrders(orders);
        try {
            userdao.register(user);
            userdao.saveOrder(order);
         
        } catch (Exception e) {
            System.out.println(e);
        }
        return "index";
    }
}
