/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.me.filter;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 *
 * @author 站站
 */
public class Md5 {

    /** 
     * Encodes a string 2 MD5 
     *  
     * @param str String to encode 
     * @return Encoded String 
     * @throws NoSuchAlgorithmException 
     */  
    public static String crypt(String str) {  
        if (str == null || str.length() == 0) {  
            throw new IllegalArgumentException("String to encript cannot be null or zero length");  
        }  
        StringBuffer hexString = new StringBuffer();  
        try {  
            MessageDigest md = MessageDigest.getInstance("MD5");  
            md.update(str.getBytes());  
            byte[] hash = md.digest();  
            for (int i = 0; i < hash.length; i++) {  
                if ((0xff & hash[i]) < 0x10) {  
                    hexString.append("0" + Integer.toHexString((0xFF & hash[i])));  
                } else {  
                    hexString.append(Integer.toHexString(0xFF & hash[i]));  
                }  
            }  
        } catch (NoSuchAlgorithmException e) {  
            e.printStackTrace();  
        }  
        return hexString.toString();  
    }  
  
}  

