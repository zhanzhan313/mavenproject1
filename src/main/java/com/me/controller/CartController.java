/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.me.controller;

import com.ruoran.pojo.Cart;
import com.ruoran.pojo.CartItem;
import com.ruoran.pojo.Product;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author ruoran
 */
@Controller
public class CartController {
    
        Cart cart;
      @RequestMapping("/addtocartt.htm")
    public String addtocartt(HttpServletRequest request) {
        System.out.print(request.getParameter("bookname"));
        HttpSession httpSession = request.getSession();

        Product product = new Product();
        product.setImage(request.getParameter("bookimg"));
        product.setMarket_price(Double.valueOf((request.getParameter("bookprice"))));
        product.setPid((request.getParameter("bookid")));
          try {
              cart=(Cart)request.getSession().getAttribute("mycart");
              if(cart==null)
                  cart=new Cart();
          } catch (Exception e) {
              System.out.println(e);
              cart=new Cart();
          }
        product.setPname(request.getParameter("bookname"));

        CartItem cartItem = new CartItem();
        cartItem.setProduct(product);
        cartItem.setCount(1);
        cart.addCart(cartItem);
        httpSession.setAttribute("mycart", cart);
        return "hello";
    }
}
