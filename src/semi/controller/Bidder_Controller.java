package semi.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import semi.dao.AserverDAO;
import semi.dao.BidderDAO;
import semi.dto.AserverDTO;
import semi.dto.BidderDTO;

@WebServlet("*.bid")
public class Bidder_Controller extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {

			request.setCharacterEncoding("utf8");
			response.setCharacterEncoding("utf8");

			String requestURI = request.getRequestURI();
			String contextPath = request.getContextPath();
			String command = requestURI.substring(contextPath.length());
			response.setCharacterEncoding("utf8");

			boolean isRedirect = true;
			String dst = null;
			BidderDAO bidderdao = new BidderDAO();
			AserverDAO serverdao = new AserverDAO();


			if(command.equals("/bidsubmit.bid")) {

				String seq = request.getParameter("seq");
				String bidprice = request.getParameter("mybid");
				String seller_id = request.getParameter("seller_id");

				String buyer_id = (String)request.getSession().getAttribute("loginid");
				System.out.println(seq + " : " + bidprice + " : " + buyer_id + seller_id);

				BidderDTO bidderdto = new BidderDTO("",seq,seller_id,buyer_id,bidprice,"","");
				AserverDTO  serverdto = new AserverDTO(seq,seller_id,buyer_id,bidprice,"");

				String prebid = bidderdao.prebid(seq,buyer_id);

				int insertbidder = bidderdao.insertBidder(bidderdto);
				System.out.println(insertbidder);
				int insertserver = serverdao.insertServer(serverdto);
				System.out.println(insertserver+"�������μ�Ʈ�ƴ�~");




				int bidprice1 = Integer.parseInt(bidprice) - Integer.parseInt(prebid);

				isRedirect = false;
				dst = "minuspoint.mem?id="+buyer_id+"&bidprice="+bidprice1+"&seq="+seq;


			}
			if(command.equals("/iscancel.bid")) {

				String seq = request.getParameter("seq");
				String buyer_id = (String)request.getSession().getAttribute("loginid");
				String current = bidderdao.getCurrentPrice(seq);
				String hold_price = serverdao.getHold_price(seq, buyer_id);
				String resttime = request.getParameter("resttime");
				int restday = Integer.parseInt(resttime.split("d")[0]);  
				int resthour = Integer.parseInt(resttime.split("d ")[1].split("h")[0]);
				System.out.println(restday + " : " + resthour + " : �ð�������.......");
				boolean result = true;
				System.out.println(current + " : " + hold_price);
				if(current.equals(hold_price)) {
					if(restday == 0 && resthour < 12) {
						result = false;
					}
				}

				new Gson().toJson(result, response.getWriter());
				return;







				//				 new Gson().toJson(result, response.getWriter());
				//				return;
				//				
			}

			if(command.equals("/cancelbid.bid")) {
				String buyer_id = (String)request.getSession().getAttribute("loginid");
				String seq = request.getParameter("seq");
				String hold_price = serverdao.getHold_price(seq, buyer_id);

				int bidderresult = bidderdao.bidderCancel(seq,buyer_id);
				System.out.println("���������Ʈ �ߴ�?" + bidderresult);
				int serverresult = serverdao.serverCancel(seq,buyer_id);
				System.out.println("����������Ʈ�ߴ�?");

				isRedirect = false;
				dst = "returnpoint.mem?id="+buyer_id+"&point="+hold_price;


			} 

			if(command.equals("/endbid.bid")) {
				String seq = request.getParameter("seq");
				String current = request.getParameter("current");
				
				int bidderSuccess = bidderdao.successBid(seq,current);
				int serverSuccess = serverdao.successBid(seq,current);
				int holdtozero = serverdao.holdToZero(seq);

				String sellerid = serverdao.sellerid(seq);
				
				System.out.println(bidderSuccess + " : "  + serverSuccess + " : " + holdtozero + " : " + sellerid);
				
				dst = "endbid.mem?plusid="+sellerid+"&point="+current;
				

			}




			if(isRedirect) {
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
