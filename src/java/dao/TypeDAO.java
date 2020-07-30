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
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Food;
import model.TypeFood;

/**
 *
 * @author admin
 */
public class TypeDAO extends DBContext {

    public ArrayList<TypeFood> getListType() {
        String sql = "SELECT [tid]\n" +
            "      ,[name]\n" +
            "  FROM [type_food]";
        ArrayList<TypeFood> types = new ArrayList<>();
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                TypeFood tf = new TypeFood();
                tf.setId(rs.getInt("tid"));
                tf.setName(rs.getString("name"));
                types.add(tf);
            }
        } catch (SQLException ex) {
            Logger.getLogger(TypeDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return types;
    }
}
