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
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Food;
import model.TypeFood;

/**
 *
 * @author admin
 */
public class FoodDAO extends DBContext{

    

    public ArrayList<Food> getAll() {
        ArrayList<Food> foods = new ArrayList<>();
        try {
            String sql = "SELECT [fid]\n" +
                    "      ,[name]\n" +
                    "      ,[tid]\n" +
                    "      ,[title]\n" +
                    "      ,[price]\n" +
                    "      ,[sold]\n" +
                    "      ,[img]\n" +
                    "  FROM [food]";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            
            while (rs.next()) {
                Food f = new Food();
                f.setFid(rs.getInt("fid"));
                f.setName(rs.getString("name"));
                f.setTid(rs.getInt("tid"));
                f.setPrice(rs.getInt("price"));
                f.setTitle(rs.getString("title"));
                f.setSold(rs.getInt("sold"));
                f.setImg(rs.getString("img"));
                foods.add(f);
            }

        } catch (SQLException ex) {
            Logger.getLogger(FoodDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return foods;
    }

//    public ArrayList<Food> getFoodByType(int typeId) throws SQLException {
//        String sql = "select * from food\n"
//                + "where food.food_id=?";
//        PreparedStatement statement = connection.prepareStatement(sql);
//        statement.setInt(1, typeId);
//        ResultSet rs = statement.executeQuery();
//        ArrayList<Food> result = new ArrayList<>();
//        while (rs.next()) {
//            String name = rs.getString(1);
//            int foodId = rs.getInt(2);
//            String title = rs.getString(3);
//            double price = rs.getDouble(4);
//            int sold = rs.getInt(5);
//            String img = rs.getString(7);
//            int size = rs.getInt(8);
//
//            result.add(new Food(name, title, img, sold, typeId, foodId, size, price));
//        }
//        return result;
//    }
//
//    public HashMap<String, ArrayList<Food>> getListType() throws Exception {
//        String sql = "select * from type_food";
//        ArrayList<TypeFood> listType = new TypeDAO().getListType();
//        System.out.println(listType.size());
//        HashMap<String, ArrayList<Food>> result = new HashMap<>();
//        for (TypeFood type : listType) {
//            if (type.getName() == null) {
//                continue;
//            }
//            ArrayList<Food> listFood = getFoodByType(type.getId());
//            for(Food food : listFood) {
//                System.out.println(food.getId() + " " + food.getName());
//            }
//            result.put(type.getName(), listFood);
//        }
//        return result;
//    }
    
    

    public Food getFoodById(int fid) {
        try {
            String sql = "SELECT [fid]\n" +
                "      ,[name]\n" +
                "      ,[tid]\n" +
                "      ,[title]\n" +
                "      ,[price]\n" +
                "      ,[sold]\n" +
                "      ,[img]\n" +
                "  FROM [food] where fid = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, fid);
            ResultSet rs = statement.executeQuery();
            Food f = new Food();
            if(rs.next()) {
                f.setFid(fid);
                f.setName(rs.getString("name"));
                f.setTid(rs.getInt("tid"));
                f.setPrice(rs.getInt("price"));
                f.setTitle(rs.getString("title"));
                f.setSold(rs.getInt("sold"));
                f.setImg(rs.getString("img"));
                return f;
                
            }
                    } catch (SQLException ex) {
            Logger.getLogger(FoodDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    
}
