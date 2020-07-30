/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author admin
 */
public class Authen {
    public void check(HttpServletRequest request) {
        String username = (String) request.getSession().getAttribute("username");
        if(username == null) {
            
        }
    }
}
