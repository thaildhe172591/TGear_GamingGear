package control;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import dao.DAO;

import entity.Account;
import entity.Email;
import entity.EmailUtils;
import entity.Cart;
import entity.Product;
import entity.SoLuongDaBan;
import entity.TongChiTieuBanHang;

/**
 * Servlet implementation class ForgotPasswordControl
 */
@WebServlet(name = "OrderControl", urlPatterns = {"/order"})
public class OrderControl extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Account a = (Account) session.getAttribute("acc");
        if (a == null) {
            response.sendRedirect("login");
            return;
        }
        int accountID = a.getId();
        DAO dao = new DAO();
        List<Cart> list = dao.getCartByAccountID(accountID);
        List<Product> list2 = dao.getAllProduct();
        double totalMoney = 0;
        for (Cart c : list) {
            for (Product p : list2) {
                if (c.getProductID() == p.getId()) {
                    totalMoney = totalMoney + (p.getPrice() * c.getAmount());
                }
            }
        }
        double totalMoneyVAT = totalMoney + totalMoney * 0.1;

        double tongTienBanHangThem = 0;
        int sell_ID;
        for (Cart c : list) {
            for (Product p : list2) {
                if (c.getProductID() == p.getId()) {
                    tongTienBanHangThem = 0;
                    sell_ID = dao.getSellIDByProductID(p.getId());
                    tongTienBanHangThem = tongTienBanHangThem + (p.getPrice() * c.getAmount());
                    TongChiTieuBanHang t2 = dao.checkTongChiTieuBanHangExist(sell_ID);
                    if (t2 == null) {
                        dao.insertTongChiTieuBanHang(sell_ID, 0, tongTienBanHangThem);
                    } else {
                        dao.editTongBanHang(sell_ID, tongTienBanHangThem);
                    }
                }
            }
        }

        for (Cart c : list) {
            for (Product p : list2) {
                if (c.getProductID() == p.getId()) {
                    SoLuongDaBan s = dao.checkSoLuongDaBanExist(p.getId());
                    if (s == null) {
                        dao.insertSoLuongDaBan(p.getId(), c.getAmount());
                    } else {
                        dao.editSoLuongDaBan(p.getId(), c.getAmount());
                    }
                }
            }
        }

        dao.insertInvoice(accountID, totalMoneyVAT);
        TongChiTieuBanHang t = dao.checkTongChiTieuBanHangExist(accountID);
        if (t == null) {
            dao.insertTongChiTieuBanHang(accountID, totalMoneyVAT, 0);
        } else {
            dao.editTongChiTieu(accountID, totalMoneyVAT);
        }

        request.getRequestDispatcher("DatHang.jsp").forward(request, response);
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
     * response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        try {
            String emailAddress = request.getParameter("email");
            String name = request.getParameter("name");
            String phoneNumber = request.getParameter("phoneNumber");
            String deliveryAddress = request.getParameter("deliveryAddress");
//            String id = request.getParameter("pid");

            HttpSession session = request.getSession();
            Account a = (Account) session.getAttribute("acc");
            if (a == null) {
                response.sendRedirect("login");
                return;
            }

            int accountID = a.getId();
            DAO dao = new DAO();
//            int cateIDProductDetail = dao.getCateIDByProductID(name);
            List<Cart> list = dao.getCartByAccountID(accountID);
            List<Product> list2 = dao.getAllProduct();

            double totalMoney = 0;
            for (Cart c : list) {
                for (Product p : list2) {
                    if (c.getProductID() == p.getId()) {
                        totalMoney = totalMoney + (p.getPrice() * c.getAmount());
                    }
                }
            }
            double totalMoneyVAT = totalMoney + totalMoney * 0.1;

            for (Cart c : list) {
                for (Product p : list2) {
                    if (c.getProductID() == p.getId()) {
                        dao.updateStock(p.getId(), p.getStock() - c.getAmount());
                    }
                }
            }
            //old code
            Email email = new Email();
            email.setFrom("thaitho1242003@gmail.com");
            email.setFromPassword("xnxgtidqquszgarr"); //chinh lai email quan tri tai day [chu y dung email con hoat dong]
            //email.setFromPassword("odsu hcoy hdwf yyhi");
            email.setTo(emailAddress);
            email.setSubject("Dat hang thanh cong tu LDT Gear");
            StringBuilder sb = new StringBuilder();
//            sb.append("");
            sb.append("<!DOCTYPE html>");
//            sb.append("<%@page contentType=\"text/html\" pageEncoding=\"UTF-8\"%>");
//            sb.append("<%@ taglib prefix=\"c\" uri=\"http://java.sun.com/jsp/jstl/core\" %>");
            sb.append("<html lang=\"en\">");
            sb.append("<head>");
            sb.append("<meta charset=\"UTF-8\">");
            sb.append("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">");
            sb.append("<title>Order Confirmation</title>");
            sb.append("<style>");
            sb.append("body {font-family: Arial, sans-serif; line-height: 1.6; margin: 0; padding: 0;}");
            sb.append(".container {max-width: 600px; margin: 0 auto; padding: 20px; border: 1px solid #ddd; border-radius: 10px; background-color: #f9f9f9;}");
            sb.append("h2 {color: #333;}");
            sb.append("p {margin: 10px 0;}");
            sb.append(".order-details {margin-top: 20px;}");
            sb.append(".order-item {margin-bottom: 10px;}");
            sb.append(".signature {text-align: right; margin-top: 20px;}");
            sb.append("</style>");
            sb.append("<style>");
            sb.append(".product {margin-bottom: 20px; }");
            sb.append(".product img { max-width: 350px; height: auto; margin-right: 20px; }");
            sb.append(".product-details { flex: 1; }");
            sb.append(".product-details h3 { margin: 0; }");
            sb.append(".product-details p { margin: 5px 0; }");
            sb.append("</style>");
            sb.append("</head>");
            sb.append("<body>");
            sb.append("<div class=\"container\">");
            sb.append("<h2>Xác nhận đơn hàng</h2>");
            sb.append("Dear, ").append(name).append("<br>");
            sb.append("Bạn vừa đặt hàng thành công từ TGear. <br> ");
            sb.append("Địa chỉ: <b>").append(deliveryAddress).append(" </b> <br>");
            sb.append("Số điện thoại: <b>").append(phoneNumber).append(" </b> <br>");
            sb.append("Thông tin đơn hàng: <br>");
            for (Cart c : list) {
                for (Product p : list2) {
                    if (c.getProductID() == p.getId()) {
                        //sb.append(p.getName()).append(" | ").append("Price:").append(p.getPrice()).append("$").append(" | ").append("Amount:").append(c.getAmount()).append(" | ").append("Size:").append(c.getSize()).append("<br>");                    
                        sb.append("<div class=\"product\">");
                        sb.append("<img src=\"").append(p.getImage()).append("\" alt=\"").append(p.getName()).append("\">");
//                        sb.append("<img src=\"images/z5566742380043_23d8c3ad032551431ceac76a7d3ee4f1.jpg\" alt=\"alt\"/>");
                        sb.append("<div class=\"product-details\">");
                        sb.append("<p><b>").append(p.getName()).append("</b></p>");
                        sb.append("<p>").append("Price: $").append(p.getPrice()).append("</p>");
                        sb.append("<p>").append("Amount: ").append(c.getAmount()).append("</p>");
//                        sb.append("<c:if test=\"${cateID != 4}\">");
//                        if (cateIDProductDetail != 4) {
                        sb.append("<p>").append("Mode: ").append(c.getSize()).append("</p>");
//                        }
//                        sb.append("</c:if>");
                        sb.append("</div></div>");
                    }
                }
            }
            sb.append("Tổng tiền: ").append(String.format("%.02f", totalMoneyVAT)).append("$").append("<br>");
            sb.append("Cảm ơn bạn đã tin tưởng và đặt hàng bên LDT Gear<br>");
            sb.append("Trân trọng<br>");
            sb.append("<div class=\"signature\">");
            sb.append("<p><b>CEO TGear</b></p>");
            sb.append("<p>Bui Van Chuan</p>");
            sb.append("</div>");
            sb.append("</div>");
            sb.append("</body>");
            sb.append("</html>");

            email.setContent(sb.toString());
            EmailUtils.send(email);
            request.setAttribute("mess", "Đặt hàng thành công!");

            dao.deleteCartByAccountID(accountID);

            //new code
//				request.setAttribute("email", emailAddress);
//				request.getRequestDispatcher("ThongTinDatHang.jsp").forward(request, response);
        } catch (Exception e) {
            request.setAttribute("error", "Đặt hàng thất bại!");
            e.printStackTrace();
        }

        request.getRequestDispatcher("DatHang.jsp").forward(request, response);
    }

}
