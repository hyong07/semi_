package semi.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.dao.CommentDAO;
import semi.dao.CommunityDAO;
import semi.dto.CommentDTO;
import semi.dto.CommunityDTO;


@WebServlet("*.co1")
public class Comment_Controller extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			response.setCharacterEncoding("utf8");
			request.setCharacterEncoding("utf8");
			String requestURI = request.getRequestURI();
			String contextPath = request.getContextPath();	
			String command = requestURI.substring(contextPath.length());

			PrintWriter out = response.getWriter();

			System.out.println(requestURI+ contextPath + command);
			
			CommentDAO dao1 = new CommentDAO();
			CommentDTO dto1 = new CommentDTO();
			

			CommunityDAO dao = new CommunityDAO();
			CommunityDTO dto = new CommunityDTO();
			boolean isRedirect = true;
			String dst = null;
			
			if(command.equals("/CommentWrite.co1")) {
				
				int article_no = Integer.parseInt(request.getParameter("seq"));	
				String comment_text= request.getParameter("comment_text");
	
				String writer = (String) request.getSession().getAttribute("loginid");
			    String ip = request.getRemoteAddr();
			    
				int result = dao1.commentInsertData(article_no, comment_text, writer, ip);				
				
				
				if(result>0) {
				request.setAttribute("result", result);
				request.setAttribute("seq", article_no);
				isRedirect = false;
				dst = "CommunityArticleView.do";
				
				}
			}
			else if(command.equals("/CommentDelete.co1")) {
					int comment_seq = Integer.parseInt(request.getParameter("comment_seq"));
					int result = dao1.commentdelete(comment_seq);
					
					if(result>0) {
					isRedirect = false;
					dst = "CommunityArticleView.do";
					}
			
//			}else if(command.equals("/CommentModify.co")) {
//				
//				int seq = Integer.parseInt(request.getParameter("seq"));	
//				int article_no = Integer.parseInt(request.getParameter("seq"));	
//				CommentDAO dao2 = new CommentDAO();
//				List<CommentDTO> result = dao2.commentOutputData(article_no);
//
//				dto = dao.articleView(article_no);
//	
//				request.setAttribute("dto", dto);
//				request.setAttribute("seq", article_no);
//				request.setAttribute("seq", seq);
//				request.setAttribute("result", result);
//				
//				isRedirect = false;
//				dst = "commentmodify.jsp";
//					
//			}else if(command.equals("/CommentModifyproc.co")) {
//				
//				int comment_seq = Integer.parseInt(request.getParameter("comment_seq"));
//				String comment_text= request.getParameter("comment_text");
//				
//				dto.setTitle(comment_text);
//				
//				
//				int result = dao1.commentmodify(dto, comment_seq);
//				
//			if(result > 0) {
//					request.setAttribute("seq", comment_seq);
//					isRedirect = false;
//					dst = "CommunityArticleView.do";
//			}	
				
			
		}
			if(isRedirect) {
				response.sendRedirect(dst);

			}else {
				RequestDispatcher rd = request.getRequestDispatcher(dst);
				rd.forward(request, response);
			}

		}catch(Exception e) {
			e.printStackTrace();
			response.sendRedirect("error.html");
		}

	}


	



	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
