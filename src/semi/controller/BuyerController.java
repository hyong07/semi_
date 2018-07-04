package semi.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

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
			
//			JSONArray array = new JSONArray();
//			JSONObject o = new JSONObject();
//			o.put("id", seller_id);
//			o.put("productInfo", buyInfo);
//			array.add(o);
			
			
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
			String seller_id = "hello";          	// �Ǹ��� ���� ID �� bdao.getSeller_id(board_no);
			String buyer_id = "test";  			   	// ������  ����  ID ��			
			ProductDTO buyProduct = new ProductDTO();		
			for(int i =0; i<p_seq.length; i++) {				
				String product_seq = p_seq[i];				
				buyProduct = pdao.buyProduct(product_seq);				
				String product_count = p_count[i];				
				BuyerDTO buyerdto = new BuyerDTO(0,board_no,product_seq,seller_id,buyer_id,contact,buyProduct.getSell_price(),product_count,"","");
				buydao.insertBuyer(buyerdto);
			}
			
			System.out.println("buyer ���̺� ���� ����");
			//String buyTotal = buydao.totalPrice(board_no);
			//BuyserverDTO buyServerdto = new BuyserverDTO(board_no,seller_id,buyer_id,buyTotal,"���Ŵ����");
			//bsdao.insertBuyserver(buyServerdto);
			System.out.println("buyserver ���̺� ���� ����");
			//int pointUpdate = mdao.usePoint(buyer_id,buyTotal);
			System.out.println("member ���̺� point ���");
			System.out.println("���� �Ϸ�� ��ǰ��  Product���̺��� Update");
			
			System.out.println("���� ���� �Ϸ�");
		}		
		
		
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
