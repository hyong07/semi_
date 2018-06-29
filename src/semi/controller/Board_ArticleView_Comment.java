package semi.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.dao.Board_CommentDAO;

@WebServlet("*.co")
public class Board_ArticleView_Comment extends HttpServlet {
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			
			String id = (String)request.getSession().getAttribute("loginid");
			String ip = request.getRemoteAddr();
			String requestURI = request.getRequestURI();
			String contextPath = request.getContextPath();	
			String command = requestURI.substring(contextPath.length());

			response.setCharacterEncoding("utf8");
			
			Board_CommentDAO board_comment = new Board_CommentDAO();
			
			boolean isRedirect = true;
			String dst = null;

			if(command.equals("/comment.co")) {
				String board_seq = request.getParameter("seq");
				String contents = request.getParameter("contents");
				System.out.println(board_seq + " : " + contents);
				int result = board_comment.insertBoard_Comment(id, board_seq,contents,ip);
				request.setAttribute("seq",board_seq);

				isRedirect = false;
				dst = "saleView.bo";
				
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
