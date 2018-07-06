package semi.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.dao.Board_CommentDAO;
import semi.dto.Board_CommentDTO;

@WebServlet("*.co1")
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

			if(command.equals("/comment.co1")) {
				String board_seq = request.getParameter("seq");
				String contents = request.getParameter("contents");
				String sell_type = request.getParameter("sell_type");
				System.out.println(board_seq + " : " + contents + " : " +id + " : " + ip);
				
		 		int result = board_comment.insertBoard_Comment(id, board_seq,contents,ip);
				System.out.println("result" + result);
				
				request.setAttribute("result",result);
				request.setAttribute("seq",board_seq);
				
				isRedirect = false;
				dst = "articleView.bo";
			
			}else if(command.equals("/CommentDelete.co1")) {
				System.out.println("�ù߾�");
				int comment_seq = Integer.parseInt(request.getParameter("comment_seq"));
				int result = board_comment.commentdelete(comment_seq);
				
				if(result>0) {
				isRedirect = false;
				dst = "articleView.bo";
				}
			
			}else if(command.equals("/CommentModify.co1")) {
				int board_seq = Integer.parseInt(request.getParameter("seq"));
//				String board_seq = request.getParameter("seq");
//				int article_no = Integer.parseInt(request.getParameter("article_no"));
				int comment_seq = Integer.parseInt(request.getParameter("comment_seq"));
				String sell_type= request.getParameter("sell_type");
				String comment_contents= request.getParameter("comment_contents");
					
				
				int result = board_comment.commentmodify(comment_contents, comment_seq);
				
				if(result > 0) {
						
						isRedirect = false;
						dst = "articleView.bo?seq="+board_seq+"&sell_type="+sell_type;
				}	
				
				
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
