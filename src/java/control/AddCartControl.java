/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import dao.DAO;
import entity.Account;
import entity.Cart;
import entity.Product;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(name = "AddCartControl", urlPatterns = {"/addCart"})
public class AddCartControl extends HttpServlet {

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
        try {
            int productID = Integer.parseInt(request.getParameter("pid"));
            String pid = request.getParameter("pid");
            HttpSession session = request.getSession();
            Account a = (Account) session.getAttribute("acc");
            if (a == null) {
                response.sendRedirect("login");
                return;
            }
            int accountID = a.getId();
            int amount = Integer.parseInt(request.getParameter("quantity"));
            String size = request.getParameter("size");

            DAO dao = new DAO();
            Cart cartExisted = dao.checkCartExist(accountID, productID);
            Product product = dao.getProductByID(pid);
            int amountExisted;
            String sizeExisted;
            int stock = product.getStock();
            if (cartExisted != null) {
                amountExisted = cartExisted.getAmount();
//                if (amountExisted <= 3) {
//                    amount += 1;
                    dao.editAmountAndSizeCart(accountID, productID, (amountExisted + amount), size);
                    request.setAttribute("mess", "Da tang so luong san pham!");
                    request.getRequestDispatcher("managerCart").forward(request, response);
//                } else if (amountExisted > 3) {
//                    amountExisted = cartExisted.getAmount();
//                    amount += 2;
//                    dao.editAmountAndSizeCart(accountID, productID, (amountExisted + amount), size);
//                    request.setAttribute("mess", "Da tang so luong san pham2!");
//                    request.getRequestDispatcher("managerCart").forward(request, response);
//                }
            } else if (cartExisted == null && amount <= stock) {
//                amount += 1;
                dao.insertCart(accountID, productID, amount, size);
                request.setAttribute("mess", "Da them san pham vao gio hang!");
                request.getRequestDispatcher("managerCart").forward(request, response);
            } else {
                String errorMessage = "Hiện tại cửa hàng chỉ còn có " + stock + " sản phẩm trong kho. Vui lòng chờ chúng tôi cập nhật thêm hoặc mua với số lượng ít hơn. Xin lỗi vì sự bất tiện này!";
                request.setAttribute("errorMessage", errorMessage);
//                response.sendRedirect("ViewCart");
                request.getRequestDispatcher("shop").forward(request, response);
            }
        } catch (NumberFormatException | IOException e) {
            response.sendRedirect("./404.html");
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
