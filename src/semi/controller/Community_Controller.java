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

import semi.dao.CommunityDAO;
import semi.dto.CommunityDTO;


@WebServlet("*.do")
public class Community_Controller extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			response.setCharacterEncoding("utf8");
			String requestURI = request.getRequestURI();
			String contextPath = request.getContextPath();	
			String command = requestURI.substring(contextPath.length());

	
			
			PrintWriter out = response.getWriter();

			System.out.println(requestURI+ contextPath + command);

			
			CommunityDAO dao = new CommunityDAO();
			CommunityDTO dto = new CommunityDTO();
			boolean isRedirect = true;
			String dst = null;

			if(command.equals("/CommunityController.do")) {
				List<CommunityDTO> result = dao.CommunityOutputData();
				System.out.println(result.size());
				request.setAttribute("result", result);
				isRedirect = false;
				dst = "community.jsp";

			}else if(command.equals("/ComunityWrite.do")) {
				
			
				String title = request.getParameter("title");
				String contents = request.getParameter("contents");
				String writer = request.getParameter("writer");
			    String ip = request.getRemoteAddr();
				
				int result = dao.CommunityInputData(title, contents, writer, ip);
				request.setAttribute("result", result);
				isRedirect = false;
				dst = "communityview.jsp";
				
				
				
			}
//------------------------------------------------

			
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
