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

    private int count;
    private double subtotal;
    private String productname;
    private String productid;
    private double productpric;
    private String productpic;

    public String getProductname() {
        return productname;
    }

    public void setProductname(String productname) {
        this.productname = productname;
    }

    public String getProductid() {
        return productid;
    }

    public void setProductid(String productid) {
        this.productid = productid;
    }

    public double getProductpric() {
        return productpric;
    }

    public void setProductpric(double productpric) {
        this.productpric = productpric;
    }

    public String getProductpic() {
        return productpic;
    }

    public void setProductpic(String productpic) {
        this.productpic = productpic;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }
    // 小计自动计算的.

    public double getSubtotal() {
        return subtotal = count * (productpric);

    }

    public void setSubtotal(double subtotal) {
        this.subtotal = subtotal;
    }

}
