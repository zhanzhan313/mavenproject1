/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.me.controller;

import com.ruoran.DAO.UserDAO;
import com.ruoran.pojo.Cart;
import com.ruoran.pojo.CartItem;
import com.ruoran.pojo.Order;
import com.ruoran.pojo.OrderItem;
import com.ruoran.pojo.Product;
import com.ruoran.pojo.User;
import java.util.Date;
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
        cartItem.setProductid(product.getPid());
        cartItem.setProductname(product.getPname());
        cartItem.setProductpic(product.getImage());
        cartItem.setProductpric(product.getMarket_price());
        cartItem.setCount(1);
        cart.addCart(cartItem);
        httpSession.setAttribute("mycart", cart);
        return "checkout";
    }
    
    
//     @RequestMapping("/placeorder.htm")
//    public String checkout(HttpServletRequest request,UserDAO userDAO) {
//        // 调用Service完成数据库插入的操作:
//        // Order order = new Order();
//        // 设置订单的总金额:订单的总金额应该是购物车中总金额:
//        // 购物车在session中,从session总获得购物车信息.
//        Order order = new Order();
//        if (cart == null) {
////            this.addActionMessage("emply cart!");
//            return "index";
//        }
//        order.setTotal(cart.getTotal());
//     
//        order.setOrdertime(new Date());
//    
//        User existUser = (User)request.getAttribute("existUser");
//        if (existUser == null) {
//            return "account";
//        }
//        order.setUser(existUser);
//        // set order item
//        for (CartItem cartItem : cart.getCartItems()) {
//            // 订单项的信息从购物项获得的.
//            OrderItem orderItem = new OrderItem();
//            orderItem.setCount(cartItem.getCount());
//            orderItem.setSubtotal(cartItem.getSubtotal());
//            orderItem.setOrder(order);
//            order.getOrderItems().add(orderItem);
//        }
//        try {
//        userDAO.saveOrder(order); 
//        } catch (Exception e) {
//            System.out.println("com.ruoran.controller.CartController.checkout()"+e);
//        }
//        // 清空购物车:
//        cart.clearCart();
//
//        // 页面需要回显订单信息:
//        // 使用模型驱动了 所有可以不使用值栈保存了
//        // ActionContext.getContext().getValueStack().set("order", order);
//        return "index";
//    }
}
