package semi.controller;

import java.io.IOException;
import java.io.PrintWriter;
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


@WebServlet("*.do")
public class Community_Controller extends HttpServlet {

   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      try {
         response.setCharacterEncoding("utf8");
         request.setCharacterEncoding("utf8");
         String requestURI = request.getRequestURI();
         String contextPath = request.getContextPath();   
         String command = requestURI.substring(contextPath.length());

         PrintWriter out = response.getWriter();

         System.out.println(requestURI+ contextPath + command);

         
         CommunityDAO dao = new CommunityDAO();
         CommunityDTO dto = new CommunityDTO();
         boolean isRedirect = true;
         String dst = null;

         if(command.equals("/CommunityMain.do")) {
         List<CommunityDTO> result = dao.communityoutput();
         
            System.out.println(result.size());

            request.setAttribute("result", result);
             isRedirect = false;
            dst = "communitymain.jsp";

         
         }else if(command.equals("/ComunityWrite.do")) {
            
         
            String title = request.getParameter("title");
            String contents = request.getParameter("contents");
            
            String writer = (String) request.getSession().getAttribute("loginid");
             String ip = request.getRemoteAddr();
            
            int result = dao.communityinsert(title, contents, writer, ip);
            
            
            if(result>0) {
            request.setAttribute("result", result);
            isRedirect = false;
            dst = "CommunityMain.do";
            }
         
         }else if(command.equals("/CommunityArticleView.do")) {
            
            int seq = Integer.parseInt(request.getParameter("seq"));   
            int article_no = Integer.parseInt(request.getParameter("seq"));   
            CommentDAO dao1 = new CommentDAO();
            List<CommentDTO> result = dao1.commentOutputData(article_no);

            dto = dao.articleView(article_no);
   
            request.setAttribute("dto", dto);
            request.setAttribute("seq", article_no);
            request.setAttribute("seq", seq);
            request.setAttribute("result", result);
            
            isRedirect = false;
            dst = "communityarticleview.jsp";
      
         }else if(command.equals("/CommunityDelete.do")) {
            
            int seq = Integer.parseInt(request.getParameter("seq"));
            String writer = (String) request.getSession().getAttribute("loginid");
            
            int result = dao.communitydelete(seq);
            isRedirect = false;
            dst = "CommunityMain.do";
            
         
         }else if(command.equals("/ComunityModify.do")) {
            
            int seq = Integer.parseInt(request.getParameter("seq"));
            
            dto = dao.articleView(seq);
            request.setAttribute("dto", dto);
            request.setAttribute("seq", seq);
            
            isRedirect = false;
            dst = "communitymodify.jsp";
         
         }else if(command.equals("/ComunityModifyproc.do")) {
            
            int seq = Integer.parseInt(request.getParameter("seq"));
            String title = request.getParameter("title");
            String contents = request.getParameter("contents");
            
            dto.setTitle(title);
            dto.setContents(contents);
            
            int result = dao.communitymodify(dto,seq);
            
         if(result > 0) {
               request.setAttribute("seq", seq);
               isRedirect = false;
               dst = "CommunityArticleView.do";
         }
         
      }else if(command.equals("/ArticleCount.do")) {
         
         int seq = Integer.parseInt(request.getParameter("seq"));
         int count = Integer.parseInt(request.getParameter("count"));
         dao.countData(seq, count);
         
         request.setAttribute("seq", seq);
         isRedirect = false;
         dst = "CommunityArticleView.do";
   
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
      // TODO Auto-generated method stub
      doGet(request, response);
   }

}