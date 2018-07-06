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
             System.out.println(boardlist.size()+ " 갯수!!!");
             ArrayList<FileDTO> filelist = filedao.fileForBoard(category, category2);
             ArrayList<String> pricelist = productdao.priceForBoard(category,category2);
             System.out.println(filelist.size());
             System.out.println(boardlist.size());
             System.out.println(pricelist.size());
             
             List<String> filespath = new ArrayList<>();
             for(int i=0; i<filelist.size(); i++) {
             	String filepath = "image/" + filelist.get(i).getBoard_no() + "/" + filelist.get(i).getSystem_file_name();
             	System.out.println(filepath + " : " + i);
             	filespath.add(filepath);
             }
            
             request.setAttribute("path", filespath);
             
            
             request.setAttribute("boardlist", boardlist);
             request.setAttribute("pricelist", pricelist);
             isRedirect=false;
             System.out.println(category + " :111111 " + category2 );
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
                List<String> filespath = new ArrayList<>();
                for(int i=0; i<filelist.size(); i++) {
                	String filepath = "image/" + filelist.get(i).getBoard_no() + "/" + filelist.get(i).getSystem_file_name();
                	System.out.println(filepath + " : " + i);
                	filespath.add(filepath);
                }
               
                request.setAttribute("path", filespath);
                request.setAttribute("boardlist", boardlist);
                request.setAttribute("pricelist", pricelist);
                isRedirect=false;
                System.out.println(category + " :22222222222 " + category2 );
                request.setAttribute("ca1", category);
                request.setAttribute("ca2", category2);
                dst = "auctionView.jsp";
          }
          else if(command.equals("/buyitnow.bo")){
        	  System.out.println("똑같이보내는데왜안나요");
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
                
                List<String> filespath = new ArrayList<>();
                
                for(int i=0; i<filelist.size(); i++) {
                	String filepath = "image/" + filelist.get(i).getBoard_no() + "/" + filelist.get(i).getSystem_file_name();
                	System.out.println(filepath + " : " + i);
                	filespath.add(filepath);
                }
               
                request.setAttribute("path", filespath);
                request.setAttribute("boardlist", boardlist);
                request.setAttribute("pricelist", pricelist);
                isRedirect=false;
                System.out.println(category + " :3333333 " + category2 );
                request.setAttribute("ca1", category);
                request.setAttribute("ca2", category2);
                dst = "buyitnow.jsp";
          }
         
          else if(command.equals("/main.bo")) {
        	  BidderDAO bidderdao = new BidderDAO();
        	  
        	  List<String> mainp_name = new ArrayList<>();
        	  mainp_name = productdao.getfastestEnddate();
        	  
        	  List<String> maincurrent =  new ArrayList<>();
        	  maincurrent = bidderdao.getFatestCurrent();
        	  
        	  request.setAttribute("mainp_name", mainp_name);
        	  request.setAttribute("maincurrent", maincurrent);
        	  
        	  isRedirect = false;
        	  dst = "mainpage.jsp";
        	  
        	  
          }
         else if(command.equals("/getboardseq.bo")) {
        	 String board_no = boarddao.checkboardNo();
        	 request.setAttribute("board_no", board_no);
        	 
        	 isRedirect=false;
        	 dst = "saleInput.jsp";
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
           System.out.println(mainfilename);
            mainfileMap.put(board_no, mainfilename);           
            return;            
         }
      

              
         else if(command.equals("/write.bo")) {
            System.out.println("�씪�씠�듃蹂�!");
            String board_no = request.getParameter("seq");            
//            String sell_type = request.getParameter("sell_typeTest");
//            String sell_type1 = request.getParameter("sell_type");
//            System.out.println(board_no);
//            System.out.println(sell_type +" : " + sell_type1);
            List<FileDTO> fileList = new ArrayList<>();            
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
            
            String id = (String)request.getSession().getAttribute("loginid");
           
            String sell_type = mr.getParameter("sell_type");
            System.out.println(board_no+" : " +sell_type);
            String title = mr.getParameter("title");
            System.out.println(title + " title");
            String contents = mr.getParameter("contents");
            String end_date = null;
            
            if(sell_type.equals("s")) {
               end_date = "1";
            }
            else if(sell_type.equals("a")){
               end_date = end_dateMap.get(board_no);
            } 
            
            
            BoardDTO bdto = new BoardDTO(board_no,id,title,contents,"",sell_type,"",end_date,"","","");            
            System.out.println(bdto.getEnd_date());
               System.out.println("�뼱�뵒源뚯��굹�삤�뒗嫄곕깘");
            int insertBoard = boarddao.addBoard(bdto);
            System.out.println(insertBoard);
                       
  
            fileList = filedao.searchFileName(realPath, board_no);
            int insertFile = filedao.insertFile(fileList);
            String mainfilename = mainfileMap.get(board_no);
            System.out.println("硫붿씤�뙆�씪�씠癒몃깘~~~~~~~~~~" + mainfilename);
            int mainfileupdate = filedao.updateFile(board_no,mainfilename);            
            
            System.out.println("" + mainfileupdate + " 硫붿씤�뙆�씪�뾽�뜲�씠�듃!");
            System.out.println("" + insertFile + "�씤�꽕�듃�뙆�씪!");
            System.out.println("�슦�뿿");
            
            dst = "articleView.bo?seq="+board_no+"&sell_type="+sell_type;
         }
  
         else if(command.equals("/productInfo.bo")) {            
            System.out.println("�슂湲곕뱾�뼱�샂");
            String sell_type = request.getParameter("sell_type");
            String category = request.getParameter("category");
            String sub_category = request.getParameter("sub_category");
            String product_name = request.getParameter("product_name");
            String sell_price = request.getParameter("sell_price");
            String sell_count = request.getParameter("sell_count");
            String board_no = request.getParameter("board_no");
            System.out.println("諛붽퓭�뼲" + board_no);
             System.out.println(category+" 1: "+sub_category + " 2: " + product_name + " 3: " + sell_price + "�뀪�뀪 : " + sell_count);
            
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
				
				System.out.println("요기도들어옴");
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
		              System.out.println("경매쪽도 다 들어가게됨 ");
		            System.out.println(product_dto.getSell_price());
				new Gson().toJson(product_name, response.getWriter());
				return;
			}
         

         else if(command.equals("/productInfoDelete.bo")) {
            System.out.println("臾쇳뭹 �궘�젣�븷爰쇰떎");;
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
         

         else if(command.equals("/articleView.bo")) { 
            System.out.println("z_z");

            String seq = request.getParameter("seq");
            String sell_type =request.getParameter("sell_type");
            
            System.out.println(seq +" : " + sell_type);
            BoardDTO bdto = new BoardDTO();
            bdto = boarddao.selectOneBoard(seq);
            System.out.println(bdto.getContents());
            ProductDTO pdto = new ProductDTO();            
            pdto = productdao.mainProduct(seq);
            System.out.println(pdto.getDetail_category());
            List<FileDTO> flist = new ArrayList<>();
            List<ProductDTO> result = new ArrayList<>();
            result = productdao.selectProduct(seq);
            flist = filedao.selectFile(seq);
            System.out.println(flist.size());

            request.setAttribute("bdto",bdto);
            request.setAttribute("pdto", pdto);            
            request.setAttribute("result", result);
            request.setAttribute("flist", flist);
         
            
            BoardDAO bdao = new BoardDAO();
            String endhour = bdao.getEndHour(seq);
            System.out.println(endhour);
            Date today = new Date();
            SimpleDateFormat date = new SimpleDateFormat("MM/dd, hh:mm a");
   
            String sysdate = date.format(today);
            System.out.println(sysdate);
            request.setAttribute("endhour", endhour);
            request.setAttribute("sysdate", sysdate);
            List<String> path = new ArrayList<>();
            for(FileDTO dto : flist) {
               System.out.println("�뿬湲�?");
               path.add("image/"+seq+"/"+dto.getSystem_file_name());
            }
            
            request.setAttribute("path", path);
            
            request.setAttribute("files", path);
            String mainfile = "image/"+seq+"/"+ mainfileMap.get(seq);
            request.setAttribute("mainfile", mainfile);
            
            
            
            isRedirect=false;
            if(sell_type.equals("a")) {
               dst = "auctionarticleview.jsp";
            }
            else {
               dst = "salearticleview.jsp";
            }

         }
         
         else if(command.equals("/ArticleCount.bo")) {
        	 System.out.println("오긴와용");
             
             String board_seq = request.getParameter("seq");   
             String sell_type =request.getParameter("type");
             int count = Integer.parseInt(request.getParameter("count"));
             
             System.out.println(board_seq + " : " + sell_type + " : " + count);
             
             boarddao.countData(board_seq, count, sell_type);
//             request.setAttribute("seq", board_seq);
//             request.setAttribute("sell_type", sell_type);
             isRedirect = false;
             dst = "articleView.bo?seq="+board_seq+"&sell_type="+sell_type;
             
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