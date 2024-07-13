/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import dao.DAO;
import entity.Account;
import entity.Product;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(name = "SubAmountCartControl", urlPatterns = {"/subAmountCart"})
public class SubAmountCartControl extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
//        HttpSession session = request.getSession();
//        Account a = (Account) session.getAttribute("acc");
//        if (a == null) {
//            response.sendRedirect("login");
//            return;
//        }
//        int accountID = a.getId();
//        int productID = Integer.parseInt(request.getParameter("productID"));
//        int amount = Integer.parseInt(request.getParameter("amount"));
//        amount -= 1;
//        DAO dao = new DAO();
//        dao.editAmountCart(accountID, productID, amount);
//        request.setAttribute("mess", "Da giam so luong!");
//        request.getRequestDispatcher("managerCart").forward(request, response);
//
//        String pid = request.getParameter("productID");
//        Product product = dao.getProductByID(pid);
//        int stock = product.getStock();
//        if (amount <= stock) {
//            String errorMessage = "Hiện tại cửa hàng chỉ còn có " + stock + " sản phẩm trong kho. Vui lòng chờ chúng tôi cập nhật thêm hoặc mua với số lượng ít hơn. Xin lỗi vì sự bất tiện này!";
//            request.setAttribute("errorMessage", errorMessage);
////                response.sendRedirect("ViewCart");
//            request.getRequestDispatcher("shop").forward(request, response);
//        }
        HttpSession session = request.getSession();
        Account a = (Account) session.getAttribute("acc");
        if (a == null) {
            response.sendRedirect("login");
            return;
        }
        int accountID = a.getId();
        int productID = Integer.parseInt(request.getParameter("productID"));
        int amount = Integer.parseInt(request.getParameter("amount"));
        amount -= 1;
        DAO dao = new DAO();
        String pid = request.getParameter("productID");
        Product product = dao.getProductByID(pid);
        int stock = product.getStock();
        if (amount <= stock) {
            dao.editAmountCart(accountID, productID, amount);
            request.setAttribute("mess", "Da tang so luong!");
//        request.getRequestDispatcher("managerCart").forward(request, response);
            request.getRequestDispatcher("managerCart").forward(request, response);
        } else {
            String errorMessage = "Hiện tại cửa hàng chỉ còn có " + stock + " sản phẩm trong kho. Vui lòng chờ chúng tôi cập nhật thêm hoặc mua với số lượng ít hơn. Xin lỗi vì sự bất tiện này!";
            request.setAttribute("errorMessage", errorMessage);
//                response.sendRedirect("ViewCart");
            request.getRequestDispatcher("shop").forward(request, response);
        }
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
