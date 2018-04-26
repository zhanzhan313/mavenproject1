/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ruoran.pojo;

/**
 *
 * @author ruoran
 */
public class CartItem {
    private Product product;	
	private int count;			
	private double subtotal;	
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	// 小计自动计算的.
	public double getSubtotal() {
		return count *(product.getMarket_price());
                
	}
	/*public void setSubtotal(double subtotal) {
		this.subtotal = subtotal;
	}
	*/
}