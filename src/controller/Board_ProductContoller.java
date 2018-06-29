package controller;

import java.awt.Image;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.imageio.ImageIO;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import semi.dao.Board_ProductDAO;
import semi.dao.CategoryDAO;
import semi.dao.FileDAO;
import semi.dto.FileDTO;
import semi.dto.ProductDTO;

@WebServlet("*.bo")
public class Board_ProductContoller extends HttpServlet {
	private List<ProductDTO> product_info = new ArrayList<>();	
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
			List<FileDTO> fileList = new ArrayList<>();
			int board_no = boardProduct_dao.checkboardNo();
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
			fileList = file_dao.searchFileName(realPath, board_no);
			String title = mr.getParameter("title");
			String contents = mr.getParameter("contents");
			String sell_type = mr.getParameter("sell_type");
			System.out.println(sell_type);
			int insertBoard = boardProduct_dao.addBoard(board_no,id,title,contents,sell_type);
			System.out.println("글번호" + board_no+"인 글 작성완료");
			for(int i=0; i<product_info.size(); i++) {				
					String category = product_info.get(i).getCategory();
					String detail_category = product_info.get(i).getDetail_category();
					String p_name = product_info.get(i).getP_name();
					String sell_price = product_info.get(i).getSell_count();
					String sell_count = product_info.get(i).getSell_price();					
					int insertProduct = boardProduct_dao.addProduct(board_no, category, detail_category, sell_price, sell_count, p_name);
			}
			System.out.println(board_no+"의 글에 등록된 상품은 : " + product_info.size());
			int insertFile = file_dao.insertFile(fileList);
			System.out.println("" + insertFile + "개의 파일이 등록됨");
			System.out.println("값다받음");
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
		}
		
		else if(command.equals("/productInfoDelete.bo")) {
			System.out.println("물품 삭제할꺼다");;
			String product_name = request.getParameter("product_name");
			boolean check = false;
			int count = 0;
			System.out.println(product_name);
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
		
		else if(command.equals("/sell_type.bo")) {			
			String sell_type = request.getParameter("sel");			
			response.setCharacterEncoding("utf8");	
			response.setContentType("application/json");	
			System.out.println("sell_type.bo 들어옴");
			System.out.println(sell_type);
			new Gson().toJson(sell_type, response.getWriter());			
		}			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
