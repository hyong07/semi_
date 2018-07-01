package controller;

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
String sell_type;
String mainfilename;
String mainpname;
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
				System.out.println(pricelist.size());
				request.setAttribute("filelist", filelist);
				request.setAttribute("boardlist", boardlist);
				request.setAttribute("pricelist", pricelist);
				isRedirect=false;
				dst = "board.jsp";

			}
			
			else if(command.equals("/sell_type.bo")) {			
				sell_type = request.getParameter("sell_type");
				System.out.println(sell_type);
				request.setAttribute("sell_type", sell_type);
				response.setCharacterEncoding("utf8");	
				response.setContentType("application/json");			
				new Gson().toJson(sell_type, response.getWriter());	

				return;
			}


			else if(command.equals("/category.bo")) {
				System.out.println("들어옴");
				String main_category = request.getParameter("test");  
				System.out.println(main_category);
				
				List<String> result =category_dao.main_categoryGet(main_category);
				
				System.out.println(result.size());
				response.setCharacterEncoding("utf8");
				response.setContentType("application/json");   
				System.out.println(response);

				new Gson().toJson(result, response.getWriter());   

				return;
			}
			
			
			else if(command.equals("/mainfilename.bo")) {
				mainfilename = request.getParameter("name");
				System.out.println(mainfilename);
				return;
				
			}
			else if(command.equals("/mainpname.bo")) {
				mainpname = request.getParameter("name");
				System.out.println(mainpname);
				return;
				
			}
			
		



			else if(command.equals("/sell_type.bo")) {    

				String sell_type = request.getParameter("sell_type");    
				System.out.println(sell_type);
				response.setCharacterEncoding("utf8");   
				response.setContentType("application/json");         
				new Gson().toJson(sell_type, response.getWriter());    

				return;
			}


			else if(command.equals("/write.bo")) {
				System.out.println("라이트보!");			
				List<FileDTO> fileList = new ArrayList<>();
				String board_no = boarddao.checkboardNo();
				String main_pname = request.getParameter("mainp");
				System.out.println(main_pname);
				System.out.println("메인 물품을 찾았따");
				
				String realPath = request.getServletContext().getRealPath("/image/");
				
				System.out.println(realPath);			
				File f = new File(realPath);
				if(!f.exists()) {
					f.mkdir();
				}
				
				realPath = realPath + board_no;
				File f1 = new File(realPath);
				if(!f1.exists()) {
					f1.mkdir();
				}
				
				int maxSize = 1024 * 1024 * 100;
				String enc = "utf8";			
				MultipartRequest mr = new MultipartRequest(request, realPath, maxSize, enc, new DefaultFileRenamePolicy());	
				System.out.println(board_no);
				String id = (String)request.getSession().getAttribute("loginid");			
				
				
				String title = mr.getParameter("title");
				String contents = mr.getParameter("contents");
				
				BoardDTO bdto = new BoardDTO(board_no,id,title,contents,"",sell_type,"","","");
				
				int insertBoard = boarddao.addBoard(bdto);
				

				for(int i=0; i<product_info.size(); i++) {				
					String category = product_info.get(i).getCategory();
					String detail_category = product_info.get(i).getDetail_category();
					String p_name = product_info.get(i).getP_name();
					String sell_price = product_info.get(i).getSell_count();
					String sell_count = product_info.get(i).getSell_price();	
					
					ProductDTO pdto = new ProductDTO(board_no,"", category, detail_category, sell_price, sell_count,"", p_name);
					int insertProduct = productdao.addProduct(sell_type,pdto);
				}
				fileList = filedao.searchFileName(realPath, board_no);
				String mainfile_seq =null;
//				for(FileDTO dto : fileList) {
//					System.out.println("요기맞지? " +mainfilename + " : " + dto.getOriginal_file_name());
//					if(dto.getOriginal_file_name().equals(mainfilename)) {
//						System.out.println("왜 안들어오지?");
//						mainfile_no = dto.getBoard_no();
//						System.out.println(mainfile_seq + " : " + mainfilename);
//						break;
//					}
//					
//				}
			
				System.out.println(board_no+"보드넘버 : " + product_info.size());
				int insertFile = filedao.insertFile(fileList);
				
				int mainfileupdate = filedao.updateFile(board_no,mainfilename);
				
				System.out.println("" + insertFile + "인설트파일!");
				System.out.println("우헿");

				return;
			}

			else if(command.equals("/productInfo.bo")) {
				
				System.out.println("요기들어옴");

				String category = request.getParameter("category");
				String sub_category = request.getParameter("sub_category");
				String product_name = request.getParameter("product_name");
				String sell_price = request.getParameter("sell_price");
				String sell_count = request.getParameter("sell_count");
				String main_product = request.getParameter("mainp");
				
				 System.out.println(category+" : "+sub_category + " : " + product_name + " : " + sell_price + " : " + sell_count);

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
				new Gson().toJson(product_name, response.getWriter());
				return;
			}

			else if(command.equals("/productInfoDelete.bo")) {
				System.out.println("물품 삭제할꺼다");;
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
			else if(command.equals("/mainProductCheck.bo")) {
				System.out.println("메인물품확인 들어옴!");
				String main_productName = request.getParameter("productCheck");
				boolean mainProductCheck = false;
				for(int i=0; i<product_info.size(); i++) {
					if(main_productName.equals(product_info.get(i).getP_name())) {
						mainProductCheck = true;
						product_info.get(i).setMain_product("y");
						break;
					}
				}
				System.out.println("메인정하기 완료!!");
				new Gson().toJson(main_productName, response.getWriter());
				
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
