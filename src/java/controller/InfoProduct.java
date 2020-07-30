/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Food;
import dao.FoodDAO;
import dao.HistoryDAO;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.History;
/**
 *
 * @author admin
 */
@WebServlet(name = "InfoProduct", urlPatterns = {"/InfoProduct"})
public class InfoProduct extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            FoodDAO foodDB = new FoodDAO();
            int fid = Integer.parseInt(request.getParameter("fid"));
            Food food = foodDB.getFoodById(fid);
            request.setAttribute("food", food);
            request.getRequestDispatcher("infoProduct.jsp").forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        java.util.Date utilDate = new Date();
        java.sql.Date date = new java.sql.Date(utilDate.getTime());
        int fid = Integer.parseInt(request.getParameter("fid"));
        int sl = Integer.parseInt(request.getParameter("sl"));
        String address = request.getParameter("address");
        int price = Integer.parseInt(request.getParameter("gia"));
        String username = (String) request.getSession().getAttribute("username");
        History h = new History();
        h.setAddress(address);
        h.setFid(fid);
        h.setDate(date);
        h.setUsername(username);
        h.setTotal(sl);
        h.setTongtien(price * sl);
        HistoryDAO hisDB = new HistoryDAO();
        hisDB.insert(h);
        String mess = "Đặt hàng thành công,Tổng giá tiền là"+price*sl;
        request.setAttribute("mess",mess);
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
