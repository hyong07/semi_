package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import semi.dao.Board_ProductDAO;
import semi.dao.CategoryDAO;
import semi.dao.FileDAO;

@WebServlet("*.bo")
public class Board_ProductContoller extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {					
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = requestURI.substring(contextPath.length());	
		
		CategoryDAO category_dao = new CategoryDAO();
		Board_ProductDAO boardProduct_dao = new Board_ProductDAO();
		FileDAO file_dao = new FileDAO();
		if(command.equals("/category.bo")) {
			System.out.println("컨트롤");
			String main_category = request.getParameter("test");			
			List<String> result = category_dao.main_categoryGet(main_category);
			response.setCharacterEncoding("utf8");
			response.setContentType("application/json");	
			System.out.println("컨트롤");
			new Gson().toJson(result, response.getWriter());	
		}
		else if(command.equals("/write.bo")) {
			System.out.println("글작성!");
			int board_no = boardProduct_dao.checkboardNo();
			String id = request.getParameter("id");
			String title = request.getParameter("title");
			String contents = request.getParameter("contents");
			String sell_type = request.getParameter("sell_type");			
			String end_date = request.getParameter("end_date");
			int insertBoard = boardProduct_dao.addBoard(board_no,id,title,contents,sell_type,end_date);
			//int insertProduct = boardProduct_dao.addProduct(board_no, category, detail_category, sell_price, sell_count);
			
		}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
