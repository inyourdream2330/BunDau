/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import DBContext.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.TypeFood;

/**
 *
 * @author admin
 */
public class TypeFoodDAO extends DBContext{
    
    
    public ArrayList<TypeFood> getListId() {
        ArrayList<TypeFood> list = new ArrayList<>();
        try {
            String sql = "select * from type_food";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            
            while(rs.next()) {
                int id = rs.getInt(1);
                String name = rs.getString(2);
                list.add(new TypeFood(id, name));
            }
        } catch (SQLException ex) {
            Logger.getLogger(TypeFoodDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    
}
