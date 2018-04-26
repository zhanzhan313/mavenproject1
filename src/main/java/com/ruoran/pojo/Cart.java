/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ruoran.pojo;

import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;

/**
 *
 * @author ruoran
 */
public class Cart {

    private Map<String, CartItem> map = new LinkedHashMap<String, CartItem>();

 
	public Collection<CartItem> getCartItems() {
        return map.values();
    }
public Cart(){}

    private double total;

    public double getTotal() {
        return total;
    }
    

    public void addCart(CartItem cartItem) {

        String pid = cartItem.getProduct().getPid();
        //if items already exist in cart
        if (map.containsKey(pid)) {
            // exist
            CartItem _cartItem = map.get(pid);// 获得购物车中原来的购物项
            _cartItem.setCount(_cartItem.getCount() + cartItem.getCount());
        } else {
            // not exist
            map.put(pid, cartItem);
        }
        // add total
        total += cartItem.getSubtotal();
    }

    // 2.remove from cart
    public void removeCart(Integer pid) {
        CartItem cartItem = map.remove(pid);
        total -= cartItem.getSubtotal();
    }

    // 3.clear
    public void clearCart() {
        map.clear();
        total = 0;
    }
}