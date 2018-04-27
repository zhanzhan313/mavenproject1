/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ruoran.DAO;

import static com.ruoran.DAO.DAO.getSession;
import com.ruoran.pojo.Order;
import com.ruoran.pojo.OrderItem;
import com.ruoran.pojo.User;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author ruoran
 */
public class UserDAO extends DAO{
    public User register(User u) throws Exception {
		try {
			begin();
			System.out.println("inside DAO");
			getSession().save(u);
			getSession().save(u);
			commit();
			return u;

		} catch (HibernateException e) {
			rollback();
			throw new Exception("Exception while creating user: " + e.getMessage());
		}
	}
    public void saveOrder(Order order) throws Exception {
		try {
			begin();
			System.out.println("inside DAO order");
			getSession().save(order);
			commit();
			

		} catch (HibernateException e) {
			rollback();
			throw new Exception("Exception while creating Order: " + e.getMessage());
		}
	}
    public void saveOrderItems(Order order) throws Exception {
		try {
			begin();
			System.out.println("inside DAO order");
                        for (OrderItem orderItem:order.getOrderItems()) {
                        
                        getSession().save(orderItem);
                    }
			
			commit();
			

		} catch (HibernateException e) {
			rollback();
			throw new Exception("Exception while creating Order: " + e.getMessage());
		}
	}
	
	public boolean updateUser(String email) throws Exception {
		try {
			begin();
			System.out.println("inside DAO");
			Query q = getSession().createQuery("from User where userEmail = :useremail");
			q.setString("useremail", email);
			User user = (User) q.uniqueResult();
			if(user!=null){
				user.setState(1);
				getSession().update(user);
				commit();
				return true;
			}else{
				return false;
			}

		} catch (HibernateException e) {
			rollback();
			throw new Exception("Exception while creating user: " + e.getMessage());
		}
	
	}
	
	public User get(String userEmail, String password) throws Exception {
		try {
			begin();
			Query q = getSession().createQuery("from User where email = :useremail and password = :password");
			q.setString("useremail", userEmail);
			q.setString("password", password);			
			User user = (User) q.uniqueResult();
			return user;
		} catch (HibernateException e) {
			rollback();
			throw new Exception("Could not get user " + userEmail, e);
		}
	}
	
	public User get(String userEmail){
		try {
			begin();
			Query q = getSession().createQuery("from User where email = :useremail");
			q.setString("useremail", userEmail);
			User user = (User) q.uniqueResult();
			return user;
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
			return null;
		
	}
	public List<User> getallUsers() {
        Criteria cr = getSession().createCriteria(User.class);
        List results = cr.list();
       
        if (results != null && results.size() > 0) {
            List<User> users= results;
           
            return users;
           
        }
        return null;
    }
}
