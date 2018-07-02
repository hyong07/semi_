package semi.controller;

import java.io.File;
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
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

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
				ArrayList<BoardDTO> boardlist = boarddao.boardForBoard(category, category2);
				
				
				
				ArrayList<FileDTO> filelist = filedao.fileForBoard(category, category2);
				ArrayList<String> pricelist = productdao.priceForBoard(category,category2);
				System.out.println(filelist.size());
				System.out.println(boardlist.size());
				System.out.println(pricelist.
						size());
				request.setAttribute("filelist", filelist);
				request.setAttribute("boardlist", boardlist);
				request.setAttribute("pricelist", pricelist);
				isRedirect=false;
				dst = "board.jsp";

			}
			
		
			else if(command.equals("/category.bo")) {
		     
		         String main_category = request.getParameter("test");  
		           
		         List<String> result = category_dao.main_categoryGet(main_category);
		
		         response.setCharacterEncoding("utf8");
		         response.setContentType("application/json");   
		      
		         new Gson().toJson(result, response.getWriter());   
		         
		         return;
		      }
			
			
			
			 else if(command.equals("/sell_type.bo")) {    
		    	
		          String sell_type = request.getParameter("sell_type");         
		          response.setCharacterEncoding("utf8");   
		          response.setContentType("application/json");         
		          new Gson().toJson(sell_type, response.getWriter());    
		          
		          return;
		       }
			
			
			 else if(command.equals("/write.bo")) {
					System.out.println("�뜝�룞�삕�뜝�룞�삕�듃�뜝�룞�삕!");			
					List<FileDTO> fileList = new ArrayList<>();
					String board_no = boarddao.checkboardNo();
					String realPath = request.getServletContext().getRealPath("/image/"+(board_no));
					System.out.println(realPath);			
					File f = new File(realPath);
					if(!f.exists()) {
						f.mkdir();
					}
					int maxSize = 1024 * 1024 * 100;
					String enc = "utf8";			
					MultipartRequest mr = new MultipartRequest(request, realPath, maxSize, enc, new DefaultFileRenamePolicy());	
					System.out.println(board_no);
					String id = (String) request.getSession().getAttribute("loginid");			
					fileList = filedao.searchFileName(realPath, board_no);
					String title = mr.getParameter("title");
					String contents = mr.getParameter("contents");
					String sell_type = mr.getParameter("sell_type");
					int insertBoard = boarddao.addBoard(board_no,id,title,contents,sell_type);
					System.out.println("�뜝�룞�삕�뜝�룞�삕嶸뺝뜝占�!" + board_no+"�뜝�릧");
					for(int i=0; i<product_info.size(); i++) {				
							String category = product_info.get(i).getCategory();
							String detail_category = product_info.get(i).getDetail_category();
							String p_name = product_info.get(i).getP_name();
							String sell_price = product_info.get(i).getSell_count();
							String sell_count = product_info.get(i).getSell_price();					
							int insertProduct = productdao.addProduct(board_no, category, detail_category, sell_price, sell_count, p_name);
					}
					System.out.println(board_no+"�뜝�룞�삕�뜝�룞�삕嶸뺝뜝占� : " + product_info.size());
					int insertFile = filedao.insertFile(fileList);
					System.out.println("" + insertFile + "�뜝�떥�눦�삕�듃�뜝�룞�삕�뜝�룞�삕!");
					System.out.println("�뜝�룞�삕�뜝�릧");
					
					isRedirect=false;
					dst = "saleView.bo";
			 }
			
			 else if(command.equals("/productInfo.bo")) {
		  
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
		         
		         return;
		      }
			
			  else if(command.equals("/productInfoDelete.bo")) {
			         System.out.println("�뜝�룞�삕�뭹 �뜝�룞�삕�뜝�룞�삕�뜝���먯삕�뜝�룞�삕");;
			         String product_name = request.getParameter("product_name");
			         System.out.println(product_name);
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
			         
			         return;
			      }
			
				else if(command.equals("/sell_type.bo")) {			
					String sell_type = request.getParameter("sell_type");			
					response.setCharacterEncoding("utf8");	
					response.setContentType("application/json");			
					new Gson().toJson(sell_type, response.getWriter());	
					
					return;
				}
			
			  else if(command.equals("/saleView.bo")) {
				  System.out.println("z_z");
				  
				  String seq = request.getParameter("seq");
				  String sell_type =request.getParameter("type");
				  
				  BoardDTO bdto = new BoardDTO();
				  bdto = boarddao.selectOneBoard(seq);
				  ProductDTO pdto = new ProductDTO();
				  pdto = productdao.mainProduct(seq);
				  FileDTO fdto = new FileDTO();
				  fdto = filedao.mainFile(seq);
				  
				  request.setAttribute("fdto", fdto);
				  request.setAttribute("bdto",bdto);
				  request.setAttribute("pdto", pdto);
			
				  isRedirect=false;
				  if(sell_type.equals("a")) {
					  dst = "auctionarticleview.jsp";
				  }
				  else {
					  dst = "salearticleview.jsp";
				  }

			  }
			
			 else if(command.equals("/productinfo.bo")) {
				 	String product_seq = request.getParameter("product_seq");	
				 	
				 	ProductDAO pdao = new ProductDAO();
				 	ProductDTO pdto = pdao.selectProduct(product_seq);
				 	
				 	response.setCharacterEncoding("utf8");	
					response.setContentType("application/json");			
					new Gson().toJson(pdto, response.getWriter());
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