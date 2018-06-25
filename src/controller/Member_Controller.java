package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import semi.dao.MemberDAO;

@WebServlet("*.mem")
public class Member_Controller extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			request.setCharacterEncoding("utf8");
			String requestURI = request.getRequestURI();
			String contextPath = request.getContextPath();
			String command = requestURI.substring(contextPath.length());
			MemberDAO dao = new MemberDAO();
			boolean isRedirect = true;
			String dst = "null";
			response.setCharacterEncoding("utf8");
			PrintWriter out = response.getWriter();
			HttpSession session = request.getSession();
			
			if(command.equals("/login.mem")){
				String id = request.getParameter("loginid");
				String pw = request.getParameter("password");
				boolean result = dao.idpwcheck(id, pw);
				
				
				if(result) {
					request.getSession().setAttribute("loginid", id);
					dst = "mainpage.jsp";
				}
				else {
				
				dst = "login.jsp";
				}
				request.setAttribute("result", result);
			}
			else if(command.equals("/logout.mem")) {
				session.invalidate();
				dst = "mainpage.jsp";
			}
			else if(command.equals("/join.mem")) {
		
				String id = request.getParameter("id");
				String pw = request.getParameter("password");
				String name = request.getParameter("name");
				String email = request.getParameter("email");
				String phone = request.getParameter("phone");
				String address = request.getParameter("addresspost")+request.getParameter("address")+request.getParameter("address2");
				int result = dao.insertMember(id, pw, name, email, phone, address);
				
				if(result > 0) {
					dst = "login.jsp";
				}
				
				
			}else if(command.equals("/idCheck.mem")) {
				String checkId = request.getParameter("checkId");
				
				boolean result = dao.isIdExist(checkId);
				
				
				if(result) {
				out.println("0");
				}else {
					out.println("1");
				}
			return;
			}
			
			if(isRedirect) {
				response.sendRedirect(dst);
			}else {
				RequestDispatcher rd = request.getRequestDispatcher(dst);
				rd.forward(request, response);
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
