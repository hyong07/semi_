package semi.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.dao.BoardDAO;
import semi.dao.FileDAO;
import semi.dao.ProductDAO;
import semi.dto.BoardDTO;
import semi.dto.FileDTO;
import semi.dto.ProductDTO;

@WebServlet("*.bo")
public class Board_ProductContoller extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
		try {
			String requestURI = request.getRequestURI();
			String contextPath = request.getContextPath();	
			String command = requestURI.substring(contextPath.length());

			response.setCharacterEncoding("utf8");

			
			FileDAO filedao = new FileDAO();
			ProductDAO productdao = new ProductDAO();
			BoardDAO boarddao = new BoardDAO();

			boolean isRedirect = true;
			String dst = null;

			if(command.equals("/board.bo")) {
				String category = request.getParameter("ca1");
				String category2 = request.getParameter("ca2");
				
				System.out.println(category + " : " + category2);
				ArrayList<FileDTO> filelist = filedao.fileForBoard(category, category2);
				ArrayList<BoardDTO> boardlist = boarddao.boardForBoard(category, category2);
				ArrayList<String> pricelist = productdao.priceForBoard(category,category2);
				System.out.println(filelist.size());
				System.out.println(boardlist.size());
				System.out.println(pricelist.size());
				request.setAttribute("filelist", filelist);
				request.setAttribute("boardlist", boardlist);
				request.setAttribute("pricelist", pricelist);
				isRedirect=false;
				dst = "board.jsp";

			}

		
			
			if(isRedirect) {
				response.sendRedirect(dst);

			}else {
				RequestDispatcher rd = request.getRequestDispatcher(dst);
				rd.forward(request, response);
			}

		}catch(Exception e) {
			response.sendRedirect("error.html");
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
