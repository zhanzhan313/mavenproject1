/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ruoran.DAO;

import com.ruoran.pojo.Order;
import com.ruoran.pojo.OrderItem;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author ruoran
 */
public class OrderDao extends DAO {

    public List<Order> findOrdersByUid(Integer uid) {
        Criteria cr = getSession().createCriteria(Order.class);
        cr.add(Restrictions.eq("user.id", uid));
        List results = cr.list();
       

        if (results != null && results.size() > 0) {
            List<Order> orders = results;
            for (Order order : orders) {
                System.out.println("com.ruoran.DAO.OrderDao.findPageByUid()"+order.getOrdertime());
            }
            return orders;
           
        }
        return null;
    }
    public List<OrderItem> findOrderItemsByUid(Integer oid) {
        Criteria cr = getSession().createCriteria(OrderItem.class);
        cr.add(Restrictions.eq("order.oid", oid));
        List results = cr.list();
       
        if (results != null && results.size() > 0) {
            List<OrderItem> orderItems= results;
           
            return orderItems;
           
        }
        return null;
    }
}
