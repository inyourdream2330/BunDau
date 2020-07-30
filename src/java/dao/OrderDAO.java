/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import DBContext.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Order;

/**
 *
 * @author admin
 */
public class OrderDAO extends DBContext{

    

    public void insert(Order order) {
        try {
            String sql = "INSERT INTO [dbo].[order]\n"
                    + "           ([name]\n"
                    + "           ,[phone]\n"
                    + "           ,[email]\n"
                    + "           ,[date]\n"
                    + "           ,[note],[num])\n"
                    + "     VALUES\n"
                    + "           (?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?,?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, order.getName());
            statement.setString(2, order.getPhone());
            statement.setString(3, order.getEmail());
            statement.setString(4, order.getDate());
            statement.setString(5, order.getNote());
            statement.setInt(6, order.getBudget());
            statement.execute();
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
}
