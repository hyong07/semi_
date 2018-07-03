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
import semi.dao.ProductDAO;
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
		
		if(command.equals("/selectbuyproduct.buy")){
			System.out.println("구매신청 시작 들어왔다!!");
			String[] productSeq = request.getParameterValues("buyProduct");
			String[] buyProductCount = request.getParameterValues("productCount");
			List<ProductDTO> buyInfo = new ArrayList<>();
			int totalPrice = 0;
			for(int i=0; i<productSeq.length; i++) {
				String productNo = productSeq[i];
				String productCount = buyProductCount[i];
				buyInfo.add(pdao.buyProduct(productNo));
			}
			
			for(int i=0; i<buyInfo.size(); i++) {
				int product_price = Integer.parseInt(buyInfo.get(i).getSell_price());
				int buy_count = Integer.parseInt(buyProductCount[i]);
				totalPrice += product_price*buy_count;				
			}
			
			System.out.println(totalPrice);
			request.setAttribute("totalPrice", totalPrice);
			request.setAttribute("productInfo", buyInfo);
			
//			dst ?   isDirect ? 
			
		}
		
		else if(command.equals("/totalPrice.buy")) {
			System.out.println("물품 총합 구하기 들어옴!!");
			String product_seq = request.getParameter("product_seq");
			System.out.println(product_seq);
			ProductDTO test = new ProductDTO();
			test = pdao.buyProduct(product_seq);
			String price = test.getSell_price();
			new Gson().toJson(price, response.getWriter());
		}
		
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
