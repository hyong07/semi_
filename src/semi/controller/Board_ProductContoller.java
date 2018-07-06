package semi.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
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

import semi.dao.BidderDAO;
import semi.dao.BoardDAO;
import semi.dao.CategoryDAO;
import semi.dao.FileDAO;
import semi.dao.ProductDAO;
import semi.dto.BoardDTO;
import semi.dto.FileDTO;
import semi.dto.ProductDTO;

@WebServlet("*.bo")
public class Board_ProductContoller extends HttpServlet {
 
	HashMap<String, String> mainfileMap = new HashMap<String,String>();
	HashMap<String, String> end_dateMap = new HashMap<String,String>();
	HashMap<String, String> bidunitMap = new HashMap<String,String>();

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
	            String allandsale = request.getParameter("allandsale");

	            System.out.println(category + " : " + category2);
	            ArrayList<BoardDTO> boardlist = boarddao.boardForBoard(category, category2);
	            System.out.println(boardlist.size()+ " ����!!!");
	            ArrayList<FileDTO> filelist = filedao.fileForBoard(category, category2);
	            ArrayList<String> pricelist = productdao.priceForBoard(category,category2);
	            System.out.println(filelist.size());
	            System.out.println(boardlist.size());
	            System.out.println(pricelist.size());
	            request.setAttribute("filelist", filelist);
	            request.setAttribute("boardlist", boardlist);
	            request.setAttribute("pricelist", pricelist);
	            isRedirect=false;
	            request.setAttribute("ca1", category);
	            request.setAttribute("ca2", category2);
	            dst = "board.jsp";

	         }else if(command.equals("/listview.bo")){
	        	 	String category = request.getParameter("ca1");
		            String category2 = request.getParameter("ca2");
		            String allandsale = request.getParameter("allandsale");

		            System.out.println(category + " : " + category2);
		            ArrayList<BoardDTO> boardlist = boarddao.listviewForBoard(category, category2);
		            ArrayList<FileDTO> filelist = filedao.fileForBoard(category, category2);
		            ArrayList<String> pricelist = productdao.priceForBoard(category,category2);
		            System.out.println(filelist.size());
		            System.out.println("board size : " + boardlist.size());
		            System.out.println("board  : " + boardlist.get(0).getSeller_id());
		            System.out.println(pricelist.size());
		            request.setAttribute("filelist", filelist);
		            request.setAttribute("boardlist", boardlist);
		            request.setAttribute("pricelist", pricelist);
		            isRedirect=false;
		            request.setAttribute("ca1", category);
		            request.setAttribute("ca2", category2);
		            dst = "ListView.jsp";
	         }else if(command.equals("/buyitnow.bo")){
	        	 	String category = request.getParameter("ca1");
		            String category2 = request.getParameter("ca2");
		            String allandsale = request.getParameter("allandsale");

		            System.out.println(category + " : " + category2);
		            ArrayList<BoardDTO> boardlist = boarddao.buyitnowForBoard(category, category2);
		            ArrayList<FileDTO> filelist = filedao.fileForBoard(category, category2);
		            ArrayList<String> pricelist = productdao.priceForBoard(category,category2);
		            System.out.println(filelist.size());
		            System.out.println("board size : " + boardlist.size());
		            System.out.println("board  : " + boardlist.get(0).getSeller_id());
		            System.out.println(pricelist.size());
		            request.setAttribute("filelist", filelist);
		            request.setAttribute("boardlist", boardlist);
		            request.setAttribute("pricelist", pricelist);
		            isRedirect=false;
		            request.setAttribute("ca1", category);
		            request.setAttribute("ca2", category2);
		            dst = "buyitnow.jsp";
	         }
			
	         else if(command.equals("/sell_type.bo")) {    
		    	
		    	
		            String sell_type = request.getParameter("sell_type");
		            System.out.println(sell_type);
		            request.setAttribute("sell_type", sell_type);
		            response.setCharacterEncoding("utf8");   
		            response.setContentType("application/json");         
		            new Gson().toJson(sell_type, response.getWriter());
		            return;
		         }


			else if(command.equals("/category.bo")) {
				System.out.println("����");
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
			
			  else if(command.equals("/checkcount.bo")) {
		             String product_seq = request.getParameter("product_seq");             
		             String count = productdao.getproductcount(product_seq);
		             new Gson().toJson(count, response.getWriter());
		              return;
		          }
			
			
			 else if(command.equals("/mainfilename.bo")) {
		            String board_no = request.getParameter("board_no");
		        	String mainfilename = request.getParameter("name");                        
		            mainfileMap.put(board_no, mainfilename);
		            System.out.println(mainfileMap.get(board_no));
		            return;            
		         }
		


			else if(command.equals("/write.bo")) {
				System.out.println("����Ʈ��!");			
				List<FileDTO> fileList = new ArrayList<>();
				String board_no = request.getParameter("seq");
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
				
				 String sell_type = mr.getParameter("sell_type");
		        System.out.println(board_no+" : " +sell_type);
				String title = mr.getParameter("title");
				String contents = mr.getParameter("contents");
				String end_date = null;
				String bidunit = null;
				if(sell_type.equals("s")) {
					end_date = "1";
					bidunit ="1";
				}
				else if(sell_type.equals("a")){
					end_date = end_dateMap.get(board_no);
					bidunit = bidunitMap.get(board_no);
				}
			
		          System.out.println(end_date + " : ");  
				
				BoardDTO bdto = new BoardDTO(board_no,id,title,contents,"",sell_type,"",end_date,"",bidunit,"");
				System.out.println(bdto.getEnd_date());  
				int insertBoard = boarddao.addBoard(bdto);
				System.out.println(insertBoard);
				  
				
			
				fileList = filedao.searchFileName(realPath, board_no);
				System.out.println(fileList.size());
			
				int insertFile = filedao.insertFile(fileList);
				  String mainfilename = mainfileMap.get(board_no);
				int mainfileupdate = filedao.updateFile(board_no,mainfilename);
			     System.out.println("���������̸ӳ�~~~~~~~~~~" + mainfilename);
			     System.out.println("" + mainfileupdate + " �������Ͼ�����Ʈ!");
			     System.out.println("" + insertFile + "�μ�Ʈ����!");
				System.out.println("���m");
				
				dst = "articleView.bo?seq="+board_no+"&sell_type="+sell_type;
			}
  
			else if(command.equals("/productInfo.bo")) {
				
				System.out.println("������");
				 String sell_type = request.getParameter("sell_type");
				String category = request.getParameter("category");
				String sub_category = request.getParameter("sub_category");
				String product_name = request.getParameter("product_name");
				String sell_price = request.getParameter("sell_price");
				String sell_count = request.getParameter("sell_count");
				 System.out.println(category+" 1: "+sub_category + " 2: " + product_name + " 3: " + sell_price + "�Ф� : " + sell_count);
				 String board_no = request.getParameter("board_no");
				ProductDTO product_dto = new ProductDTO();
			       product_dto.setBoard_no(board_no);
				product_dto.setCategory(category);
				product_dto.setDetail_category(sub_category);
				product_dto.setP_name(product_name);
				product_dto.setSell_price(sell_price);
				product_dto.setSell_count(sell_count);

				  int result = productdao.addProduct(sell_type, product_dto);
				new Gson().toJson(product_name, response.getWriter());
				return;
			}
	else if(command.equals("/auctionproductInfo.bo")) {
				
				System.out.println("��⵵����");
				 String board_no = request.getParameter("board_no");
				 System.out.println(board_no);
				 String sell_type = request.getParameter("sell_type");
				String category = request.getParameter("category");
				String sub_category = request.getParameter("sub_category");
				String product_name = request.getParameter("product_name");
				String sell_price = request.getParameter("sell_price");
				String end_date = request.getParameter("end_date");
				String bidunit = request.getParameter("bidunit");
				 end_dateMap.put(board_no, end_date);
				 bidunitMap.put(board_no, bidunit);
				System.out.println(sell_price + " :::" +end_dateMap.get(board_no));
			
				ProductDTO product_dto = new ProductDTO();
				 product_dto.setBoard_no(board_no);
				product_dto.setCategory(category);
				product_dto.setDetail_category(sub_category);
				product_dto.setP_name(product_name);
				product_dto.setSell_price(sell_price);
			
				product_dto.setSell_count("");
				  
				  
				System.out.println(product_dto.getSell_price());
				   int result = productdao.addProduct(sell_type, product_dto);
		              System.out.println("����ʵ� �� ���Ե� ");
		            System.out.println(product_dto.getSell_price());
				new Gson().toJson(product_name, response.getWriter());
				return;
			}
		    
		    
	  else if(command.equals("/getboardseq.bo")) {
          String board_no = boarddao.checkboardNo();
          request.setAttribute("board_no", board_no);
          
          isRedirect=false;
          dst = "saleInput.jsp";
       }

	else if(command.equals("/productInfoDelete.bo")) {
        System.out.println("��ǰ �����Ҳ���");;
        String product_name = request.getParameter("product_name");
        String board_no = request.getParameter("board_no");
        
        int result = productdao.deleteProduct(board_no, product_name);
        new Gson().toJson(result, response.getWriter());
        return;
     }
    else if(command.equals("/mainProductCheck.bo")) {               
        String main_productName = request.getParameter("productCheck");
        String board_no = request.getParameter("board_no");
        System.out.println(main_productName +" : " + board_no);
        int resetMainP = productdao.resetMainP(board_no);
        int result  = productdao.updateMainP(board_no,main_productName);
        new Gson().toJson(main_productName, response.getWriter());
        return;
     }
			
    else if(command.equals("/pointCharge.bo")) {
        String point = request.getParameter("point");
        System.out.println(point);
        request.setAttribute("point", point);
        isRedirect=false;
        dst = "moneyTest.jsp";
     }        
		    
    else if(command.equals("/getEndHour.bo")) {
    	String seq = request.getParameter("seq");
    	String endhour = boarddao.getEndHour(seq);
		System.out.println(endhour);
		Date today = new Date();
		SimpleDateFormat date = new SimpleDateFormat("MM/dd, hh:mm a");

		String sysdate = date.format(today);
		String result = endhour + " (" +  sysdate + ")";
		System.out.println(sysdate);
		      if(endhour.equals("0d 0h 0m")) {
		    	  result = "����";
		      }
		  
		   new Gson().toJson(result, response.getWriter());
		 
		return;
    	  
    	
    }
  
		

			else if(command.equals("/articleView.bo")) { 
				System.out.println("z_z");

				String seq = request.getParameter("seq");
				String sell_type =request.getParameter("sell_type");
				System.out.println(seq + " : " +sell_type +"111111111111111");

				BoardDTO bdto = new BoardDTO();
				bdto = boarddao.selectOneBoard(seq);
				System.out.println(bdto.getContents());
				ProductDTO pdto = new ProductDTO();
				pdto = productdao.mainProduct(seq);
				System.out.println(pdto.getDetail_category());
				List<FileDTO> flist = new ArrayList<>();
				
		   		flist = filedao.selectFile(seq);
				System.out.println(flist.size());

				List<ProductDTO> result = new ArrayList<>();
	            result = productdao.selectProduct(seq);
				
				request.setAttribute("bdto",bdto);
				System.out.println(bdto.getBidunit() + " dyrjtdl............�¸�.......");
				request.setAttribute("pdto", pdto);
				request.setAttribute("flist", flist);
				 request.setAttribute("result", result);
				
				String end = boarddao.getEndHour(seq);
				request.setAttribute("end", end);
				Date today = new Date();
				SimpleDateFormat date = new SimpleDateFormat("MM/dd, hh:mm a");

				String sysdate = date.format(today);
				request.setAttribute("sysdate", sysdate);
				
				
				List<String> path = new ArrayList<>();
				for(FileDTO dto : flist) {
					System.out.println("����?");
					path.add("image/"+seq+"/"+dto.getSystem_file_name());
				}
				
				request.setAttribute("path", path);
				
				String mainfile = "image/"+seq+"/"+mainfileMap.get(seq);
	            request.setAttribute("mainfile", mainfile);
	            
	            
	            BidderDAO biddao = new BidderDAO();
	            String currentprice = pdto.getSell_price();
	            System.out.println(currentprice);
	            
	            if(! (bdto.getBidcnt().equals("0"))  ) { //bidcnt�� 0�̰ų� '����'������
	            	System.out.println("��?���");
	            	currentprice = biddao.getCurrentPrice(seq);
	            }
	            
	            System.out.println("��?" + currentprice);
	            
	            int num = Integer.parseInt(currentprice) + Integer.parseInt(bdto.getBidunit());
	            request.setAttribute("num", num);
	       
	            request.setAttribute("currentprice", currentprice);
	    		
				
				
				isRedirect=false;
				if(sell_type.equals("a")) {
					dst = "auctionarticleview.jsp";
				}
				else {
					dst = "salearticleview.jsp";
				}

			}
		    
			else if(command.equals("/bidcntplus.bo")) {
				String seq = request.getParameter("seq");
				int result = boarddao.plusbidcnt(seq);
				
				isRedirect = false;
				dst = "articleView.bo?seq="+seq+"&sell_type=a";
				
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
