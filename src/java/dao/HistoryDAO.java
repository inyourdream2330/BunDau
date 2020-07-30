/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import DBContext.DBContext;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.History;

/**
 *
 * @author Miracle-
 */
public class HistoryDAO extends DBContext {

    public void insert(History history) {
        String sql = "INSERT INTO [history]\n"
                + "           ([username]\n"
                + "           ,[fid]\n"
                + "           ,[date]\n"
                + "           ,[total]\n"
                + "           ,[address]\n"
                + "           ,[tongtien])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?)";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, history.getUsername());
            statement.setInt(2, history.getFid());
            statement.setDate(3, history.getDate());
            statement.setInt(4, history.getTotal());
            statement.setString(5, history.getAddress());
            statement.setInt(6,history.getTongtien());
            statement.execute();
        } catch (SQLException ex) {
            Logger.getLogger(HistoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
}
