/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import DBContext.DBContext;
import controller.Register;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.User;

/**
 *
 * @author admin
 */
public class UserDAO extends DBContext{
    
    public Boolean checkUser(String username){
        try {
            String sql = "select * from [User] where username = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, username);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public Boolean isAccount(String username,String password) {
        try {
            String sql = "select * from [User] where username = ? and password = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, username);
            statement.setString(2, password);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;

    }

//    public String getEmail(String username) {
//        try {
//            String sql = "select [email] from [User] where [username]=?  COLLATE SQL_Latin1_General_CP1_CS_AS";
//            PreparedStatement pre = connection.prepareStatement(sql);
//            pre.setString(1, username);
//            ResultSet rs = pre.executeQuery();
//            if (rs.next()) {
//                String password = rs.getString(1);
//                return password;
//            }
//        } catch (SQLException ex) {
//            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return null;
//
//    }

    public User getUser(String username) {
        try {
            String sql = "SELECT [username]\n" +
                        "      ,[password]\n" +
                        "      ,[firstname]\n" +
                        "      ,[lastname]\n" +
                        "      ,[email]\n" +
                        "  FROM [User]"
                    + "  where [username] = ?";
            PreparedStatement pre = connection.prepareStatement(sql);
            pre.setString(1, username);
            ResultSet rs = pre.executeQuery();
            if (rs.next()) {
                User u = new User();
                u.setUsername(rs.getString("username"));
                u.setEmail(rs.getString("email"));
                u.setFirstName(rs.getString("firstname"));
                u.setLastName(rs.getString("lastname"));
                u.setEmail(rs.getString("email"));
                return u;
                
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;

    }

    public void insertUser(User user) {
        try {
            

            String sql = "INSERT INTO [dbo].[User]\n"
                    + "           ([username]\n"
                    + "           ,[password]\n"
                    + "           ,[firstname]\n"
                    + "           ,[lastname]\n"
                    + "           ,[email])\n"
                    + "     VALUES\n"
                    + "           (?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?)";
            PreparedStatement pre = connection.prepareStatement(sql);
            pre.setString(1, user.getUsername());
            pre.setString(2, user.getPassword());
            pre.setString(3, user.getFirstName());
            pre.setString(4, user.getLastName());
            pre.setString(5, user.getEmail());
            pre.execute();
        } catch (SQLException ex) {
            Logger.getLogger(Register.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
