package semi.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import semi.dao.BoardDAO;
import semi.dao.CategoryDAO;
import semi.dao.FileDAO;
import semi.dao.ProductDAO;
import semi.dto.BoardDTO;
import semi.dto.FileDTO;
import semi.dto.ProductDTO;

@WebServlet("*.bo")
public class Board_ProductContoller extends HttpServlet {

	 private List<ProductDTO> product_info = new ArrayList<>();
	   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
		try {
			String requestURI = request.getRequestURI();
			String contextPath = request.getContextPath();	
			String command = requestURI.substring(contextPath.length());

			response.setCharacterEncoding("utf8");

			
			FileDAO filedao = new FileDAO();
			ProductDAO productdao = new ProductDAO();
			BoardDAO boarddao = new BoardDAO();
			CategoryDAO category_dao = new CategoryDAO();
	
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
			
			
			
			
			else if(command.equals("/category.bo")) {
		     
		         String main_category = request.getParameter("test");  
		         System.out.println(main_category);     
		         List<String> result = category_dao.main_categoryGet(main_category);
		
		         response.setCharacterEncoding("utf8");
		         response.setContentType("application/json");   
		         System.out.println("2");
		         new Gson().toJson(result, response.getWriter());   
		         
		         return;
		      }
			
			
			
			 else if(command.equals("/sell_type.bo")) {    
		    	  System.out.println("3");
		          String sell_type = request.getParameter("sell_type");         
		          response.setCharacterEncoding("utf8");   
		          response.setContentType("application/json");         
		          new Gson().toJson(sell_type, response.getWriter());    
		          
		          return;
		       }
			
			
			 else if(command.equals("/write.bo")) {
		         System.out.println("글작성!");
		         int board_no = boarddao.checkboardNo();
		         String id = (String) request.getSession().getAttribute("loginid");
		         String title = request.getParameter("title");
		         String contents = request.getParameter("contents");
		         String sell_type = request.getParameter("sell_type");         
		         String end_date = request.getParameter("end_date");
		         int insertBoard = boarddao.addBoard(board_no,id,title,contents,sell_type,end_date);
		         //int insertProduct = boardProduct_dao.addProduct(board_no, category, detail_category, sell_price, sell_count);         
		      }
			
			 else if(command.equals("/productInfo.bo")) {
		         System.out.println("나는 물품이다");
		         String category = request.getParameter("category");
		         String sub_category = request.getParameter("sub_category");
		         String product_name = request.getParameter("product_name");
		         String sell_price = request.getParameter("sell_price");
		         String sell_count = request.getParameter("sell_count");
		         
		         ProductDTO product_dto = new ProductDTO();
		         product_dto.setCategory(category);
		         product_dto.setDetail_category(sub_category);
		         product_dto.setP_name(product_name);
		         product_dto.setSell_price(sell_price);
		         product_dto.setSell_count(sell_count);
		      
		         product_info.add(product_dto);
		         for(int i =0; i<product_info.size(); i++) {
		            System.out.println(product_info.get(i).getP_name());
		         }
		      }
			
			  else if(command.equals("/productInfoDelete.bo")) {
			         System.out.println("물품 삭제할꺼다");;
			         String product_name = request.getParameter("product_name");
			         boolean check = false;
			         int count = 0;
			         for(ProductDTO tmp :product_info) {
			            if(product_name.equals(tmp.getP_name())) {
			               product_info.remove(count);      
			               for(int i =0; i<product_info.size(); i++) {
			                  System.out.println(product_info.get(i).getCategory());
			                  System.out.println(product_info.get(i).getDetail_category());
			                  System.out.println(product_info.get(i).getP_name());
			               }     
			               break;
			            }
			            count++;
			         }         
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
