package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import semi.dao.CategoryDAO;

@WebServlet("*.bo")
public class Board_ProductContoller extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {					
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = requestURI.substring(contextPath.length());	
		
		CategoryDAO category_dao = new CategoryDAO();
		if(command.equals("/category.bo")) {
			System.out.println("컨트롤");
			String main_category = request.getParameter("test");			
			List<String> result = category_dao.main_categoryGet(main_category);
			response.setCharacterEncoding("utf8");
			response.setContentType("application/json");	
			System.out.println("컨트롤");
			new Gson().toJson(result, response.getWriter());	
		}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
