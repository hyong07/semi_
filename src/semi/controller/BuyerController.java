package semi.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
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
import semi.dao.BuyerDAO;
import semi.dao.BuyserverDAO;
import semi.dao.MemberDAO;
import semi.dao.ProductDAO;
import semi.dto.BuyerDTO;
import semi.dto.BuyserverDTO;
import semi.dto.ProductDTO;

@WebServlet("*.buy")
public class BuyerController extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      try {
         
      
      String requestURI = request.getRequestURI();
      String contextPath = request.getContextPath();   
      String command = requestURI.substring(contextPath.length());
      boolean isReDirect = true;
      String dst = null;
      response.setCharacterEncoding("utf8");
      
      ProductDAO pdao = new ProductDAO();
      BoardDAO bdao = new BoardDAO();
      BuyerDAO buydao = new BuyerDAO();
      BuyserverDAO bsdao = new BuyserverDAO();
      MemberDAO mdao = new MemberDAO();
      if(command.equals("/selectbuyproduct.buy")){
         System.out.println("���Ž�û ���� ���Դ�!!");
         String[] productSeq = request.getParameterValues("buyProduct");
         String[] buyProductCount = request.getParameterValues("productCount");
         String board_no = request.getParameter("board_no");
         System.out.println(board_no);                  
         
         List<ProductDTO> buyInfo = new ArrayList<>();
         int totalPrice = 0;
         for(int i=0; i<productSeq.length; i++) {
            String productNo = productSeq[i];   
            System.out.println(productNo);
            buyInfo.add(pdao.buyProduct(productNo));
         }
         
         for(int i=0; i<buyInfo.size(); i++) {
            int product_price = Integer.parseInt(buyInfo.get(i).getSell_price());
            int buy_count = Integer.parseInt(buyProductCount[i]);
            totalPrice += product_price*buy_count;            
         }         
         
         
         response.setCharacterEncoding("utf8");
         response.setContentType("application/json");
         
//         JSONArray array = new JSONArray();
//         JSONObject o = new JSONObject();
//         o.put("id", seller_id);
//         o.put("productInfo", buyInfo);
//         array.add(o);
         
         
         new Gson().toJson(buyInfo, response.getWriter());
         
      }
      
      else if(command.equals("/totalPrice.buy")) {
         System.out.println("��ǰ ���� ���ϱ� ����!!");
         String product_seq = request.getParameter("product_seq");         
         String currentPrice = request.getParameter("currentPrice");
         System.out.println(product_seq);
         System.out.println(currentPrice);
         ProductDTO priceValue = new ProductDTO();
         priceValue = pdao.buyProduct(product_seq);
         int current = 0;
         
         if(currentPrice == "") {
            current = 0;         
         }
         else {         
            current = Integer.parseInt(currentPrice);
         }
         
         int price = Integer.parseInt(priceValue.getSell_price());
         int totalPrice = current + price;
         new Gson().toJson(totalPrice, response.getWriter());
         return;
      }
      
      else if(command.equals("/totalPlus.buy")) {
         System.out.println("��ư ����������!!");
         int currentPrice = Integer.parseInt(request.getParameter("current"));         
         String product_seq = request.getParameter("product_seq");
         ProductDTO price = pdao.buyProduct(product_seq);   
         System.out.println("���� �߰�����");
         int salePrice = Integer.parseInt(price.getSell_price());         
         System.out.println("��ĥ���� ����");
         int totalPrice = currentPrice + salePrice;
         System.out.println(totalPrice);
         System.out.println("������ ����");
         new Gson().toJson(totalPrice, response.getWriter());
         return;
      }
      else if(command.equals("/totalMinus.buy")) {
         System.out.println(" - ��ư ����������!!");
         int currentPrice = Integer.parseInt(request.getParameter("current"));         
         String product_seq = request.getParameter("product_seq");
         ProductDTO price = pdao.buyProduct(product_seq);   
         System.out.println("���� �߰�����");
         int salePrice = Integer.parseInt(price.getSell_price());         
         System.out.println("��ĥ���� ����");
         int totalPrice = currentPrice - salePrice;
         System.out.println(totalPrice);
         System.out.println("������ ����");
         new Gson().toJson(totalPrice, response.getWriter());
         return;
      }
      
      else if(command.equals("/buyComplete.buy")) {
         System.out.println("���� ��û �ϷḦ ���� �������ܰ�");
         String board_no = request.getParameter("board_no");
         String productSeq = request.getParameter("product_seq");
         String productCount = request.getParameter("product_count");         
         String[] p_seq = productSeq.split(",", 20);
         String[] p_count = productCount.split(",",20);
         String contact = request.getParameter("contact");
         String seller_id = "hello";             // �Ǹ��� ���� ID �� bdao.getSeller_id(board_no);
         String buyer_id = "asd";                 // ������  ����  ID ��         
         ProductDTO buyProduct = new ProductDTO();      
         for(int i =0; i<p_seq.length; i++) {            
            String product_seq = p_seq[i];            
            buyProduct = pdao.buyProduct(product_seq);            
            String product_count = p_count[i];            
            BuyerDTO buyerdto = new BuyerDTO(0,board_no,product_seq,seller_id,buyer_id,contact,buyProduct.getSell_price(),product_count,"","");
            buydao.insertBuyer(buyerdto);
            int productUpdate = pdao.buyProductUpdate(product_seq, product_count);
         }
         System.out.println("��ǰ�������� �ٷ� ������Ʈ��!");
         System.out.println("buyer ���̺� ���� ����");
         String buyTotal = buydao.totalPrice(board_no);         
         BuyserverDTO buyServerdto = new BuyserverDTO(board_no,seller_id,buyer_id,buyTotal,"���Ŵ����");
         bsdao.insertBuyserver(buyServerdto);
         System.out.println("buyserver ���̺� ���� ����");
         int pointUpdate = mdao.usePoint(buyer_id,buyTotal);
         System.out.println("member ���̺� point ���");
         System.out.println("���� �Ϸ�� ��ǰ��  Product���̺��� Update");
         
         
         System.out.println("���� ���� �Ϸ�");
         
         String seller_contact = bdao.getSeller_id(board_no);
         request.setAttribute("seller_contact", seller_contact);
         request.setAttribute("buyer_contact", contact);
         request.setAttribute("board_no", board_no);
         request.setAttribute("buyer_id", buyer_id);
         isReDirect = false;
         dst = "buySMS.buy";
      }
      
      else if(command.equals("/delivery.buy")) {
         System.out.println("�Ǹ��ڰ� ��ǰ�� ��۽��ѹ�����!~~~ ��Ʈ�ѷ� ���͹�����!!");
         String board_no = request.getParameter("board_no");
         String buyer_id = request.getParameter("buyer_id");         
         System.out.println(board_no + " : " + buyer_id);
         int productDelivery = buydao.productDelivery(board_no, buyer_id);         
         isReDirect = false;
         dst = "mypage_sale_detail.mem?board_seq="+board_no;
      }
      
      
      else if(command.equals("/buySMS.buy")) {
         System.out.println("���� ���۵ɲ���!!");
         String seller_contact = mdao.getContact((String)request.getAttribute("seller_contact"));
         String buyer_contact = (String)request.getAttribute("buyer_contact");
         String board_no = (String)request.getAttribute("board_no");
         String buyer_id = (String)request.getAttribute("buyer_id");
         List<BuyerDTO> buyInfo = new ArrayList<>();         
         buyInfo = buydao.buyComplete(board_no, buyer_id);
         String[] p_name = new String[buyInfo.size()];
         String[] p_count = new String[buyInfo.size()];
         String msg = "";
         System.out.println(buyInfo.size());
         for(int i=0; i<buyInfo.size(); i++) {            
            p_name[i] = pdao.getProductName(buyInfo.get(i).getProduct_no());
            p_count[i] = buyInfo.get(i).getBuy_count();            
            msg +=  p_name[i] +" "+ p_count[i]+"��" +" / "; 
         }
         
         System.out.println(msg);
         
         System.out.println(seller_contact + " : " + buyer_contact);
         System.out.println("�׽�Ʈ �Ϸ� ");
         String to = "82"+seller_contact;
            String from="33644643087";
            String finalMsg = "�Ǹ��Ͻ� ��ǰ �߿��� "+msg+"���Ž�û�Ͽ����ϴ�. ��ǰ�� �߼����ּ���."
                  + "������ : " +buyer_contact;              
            
            String message = URLEncoder.encode(finalMsg, "UTF-8");
            
            String sendUrl = "https://www.proovl.com/api/send.php?user=6394162&token=mZJb0hlGqKxlgbpx4GqNTH4lX0aNAQ04";
            StringBuilder sb = new StringBuilder();
            sb.append(sendUrl);
            sb.append("&to="+to);
            sb.append("&from="+from);
            sb.append("&text="+message);
            System.out.println(sb.toString());
            URL url = new URL(sb.toString());
            HttpURLConnection con = (HttpURLConnection)url.openConnection();
            int result = con.getResponseCode();
            
            BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream()));
            String line = null;
            
            while((line = br.readLine())!=null) {
               System.out.println(line);
            }
            
            System.out.println(result);
            con.disconnect();            
            br.close();
          
            isReDirect = false;
            dst="articleView.bo?seq="+board_no+"&sell_type='s'";
      }
      
       if(isReDirect) {
               response.sendRedirect(dst);

            }else {
               RequestDispatcher rd = request.getRequestDispatcher(dst);
               rd.forward(request, response);
            }
      
      }catch(Exception e) {
         e.printStackTrace();
      }
   }
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      doGet(request, response);
   }

}