package semi.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import semi.dao.BoardDAO;
import semi.dao.CategoryDAO;
import semi.dao.FileDAO;
import semi.dao.MemberDAO;
import semi.dao.ProductDAO;

@WebServlet("*.bid")
public class Bidder_Controller extends HttpServlet {

   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      try {

         request.setCharacterEncoding("utf8");
         response.setCharacterEncoding("utf8");

         String requestURI = request.getRequestURI();
         String contextPath = request.getContextPath();
         String command = requestURI.substring(contextPath.length());
         response.setCharacterEncoding("utf8");

         boolean isRedirect = true;
         String dst = null;
         
         if(command.equals("/bidsubmit.bid")) {
            
            String bidaccount = request.getParameter("bidaccount");
            String seq = request.getParameter("seq");
            String currentprice = request.getParameter("currentprice");
            
         }

      
         
         if(isRedirect) {
            response.sendRedirect(dst);

         }else {
            RequestDispatcher rd = request.getRequestDispatcher(dst);
            rd.forward(request, response);
         }
      }catch(Exception e) {
         e.printStackTrace();
      }
      
      
      
      
         
         
   }

   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
      doGet(request, response);
   }

}