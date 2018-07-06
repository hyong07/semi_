package semi.controller;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("*.su")
public class Summernote extends HttpServlet {

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
			
			  if(command.equals("/upload.su")) {
			    System.out.println("들어오니?");
			         String realPath = request.getServletContext().getRealPath("/summer/");
			   System.out.println(realPath);
			         File f = new File(realPath);
			         if(!f.exists()){
			            f.mkdir();
			         }
			         
			         realPath = realPath + 4000;
			         System.out.println(realPath);
			         File f1 = new File(realPath);
			         if(!f1.exists()){
			            f1.mkdir();
			         }
			         
			         int maxSize = 1024 * 1024 * 100; 
			         String enc = "utf8";

			         MultipartRequest mr = new MultipartRequest(request, realPath, maxSize, enc, new DefaultFileRenamePolicy());
			       
			         realPath = contextPath + "/summer/";
			      
			         JSONObject json = new JSONObject();
			        
			         json.put("url", realPath);
			       
			         response.setCharacterEncoding("utf8");
			         response.setContentType("application/json");
			         response.getWriter().println(json.toJSONString());
			         response.getWriter().flush();
			         response.getWriter().close();
return;
			  }
			
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}
