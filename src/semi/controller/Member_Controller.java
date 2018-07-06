package semi.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import semi.api.SendMail;
import semi.dao.BidderDAO;
import semi.dao.MemberDAO;
import semi.dto.BidderDTO;
import semi.dto.MemberDTO;


@WebServlet("*.mem")
public class Member_Controller extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {

			request.setCharacterEncoding("utf8");
			response.setCharacterEncoding("utf8");

			String requestURI = request.getRequestURI();
			String contextPath = request.getContextPath();
			String command = requestURI.substring(contextPath.length());
			MemberDAO dao = new MemberDAO();
			boolean isRedirect = true;
			String dst = "null";

			HttpSession session = request.getSession();

			PrintWriter out = response.getWriter();

			if(command.equals("/login.mem")){
				String id = request.getParameter("loginid");
				String pw = request.getParameter("password");

				boolean result = dao.idpwcheck(id, pw);
				System.out.println(result);


				if(result) {
					request.getSession().setAttribute("loginid", id);
					System.out.println(request.getSession().getAttribute("loginid"));
					dst = "mainpage.jsp";
				}
				else {

					dst = "login.jsp";
				}
				request.setAttribute("result", result);
			}
			else if(command.equals("/logout.mem")) {
				session.invalidate();
				dst = "mainpage.jsp";
			}
			else if(command.equals("/join.mem")) {

				String id = request.getParameter("id");
				String pw = request.getParameter("password");
				String name = request.getParameter("name");
				String email = request.getParameter("email");
				String phone = request.getParameter("phone");
				String address = request.getParameter("addresspost")+request.getParameter("address")+request.getParameter("address2");
				MemberDTO dto = new MemberDTO(id, pw, name, email, phone, address,"");
				int result = dao.insertMember(dto);

				if(result > 0) {
					dst = "login.jsp";
				}

			}

			else if(command.equals("/idCheck.mem")) {
				String checkId = request.getParameter("checkId");

				boolean result = dao.isIdExist(checkId);

				if(result) {
					out.println("0");
				}else {
					out.println("1");
				}
				return;
			}

			else if(command.equals("/mypage_modify.mem")) {
				String loginid = (String) request.getSession().getAttribute("loginid");
				MemberDTO dto = dao.selectMember(loginid);

				request.setAttribute("dto", dto);
				isRedirect = false;
				dst = "mypage_modify.jsp";
			}

			else if(command.equals("/pwcheck.mem")) {
				System.out.println("pwcheck 들어옴");
				String pw = request.getParameter("pw");
				String loginid = (String)request.getSession().getAttribute("loginid");
				System.out.println(pw + " : " + loginid);		
				boolean result = dao.idpwcheck(loginid,pw);

				if(result) {
					isRedirect = false;
					dst = "mypage_info.mem";
				}
				else {

					dst="mypage_pwcheck.jsp";
				}



			}


			else if(command.equals("/mypage_info.mem")) {

				String loginid = (String) request.getSession().getAttribute("loginid");
				MemberDTO dto = dao.selectMember(loginid);

				request.setAttribute("dto", dto);

				isRedirect = false;
				dst = "mypage_info.jsp";
			}
			else if(command.equals("/pwcheck2.mem")) {
				String pw = request.getParameter("pw");
				String loginid = (String)request.getSession().getAttribute("loginid");

				boolean result = dao.idpwcheck(loginid,pw);

				if(result) {
					isRedirect = false;
					dst = "mypage_leave.jsp";
				}
			}
			else if(command.equals("/member_modify.mem")) {
				String id = request.getParameter("id");
				String name = request.getParameter("name");
				String email = request.getParameter("email");
				String phone = request.getParameter("phone");
				String address = request.getParameter("address");

				int result = dao.modifymember(id,name,email,phone,address);

				MemberDTO dto = dao.selectMember(id);

				if(result > 0) {
					request.setAttribute("result", result);
					request.setAttribute("dto", dto);
					isRedirect = false;
					dst = "mypage_info.mem";
				}else {
					request.setAttribute("result", result);
					isRedirect = false;
					dst = "error.html";
				}
			}
			else if(command.equals("/currentpwcheck.mem")) {
				String pw = request.getParameter("pw");
				String loginid = (String)request.getSession().getAttribute("loginid");

				boolean result = dao.idpwcheck(loginid,pw);

				response.setCharacterEncoding("utf8");
				response.setContentType("application/json");

				new Gson().toJson(result,response.getWriter());

				return;

			}

			else if(command.equals("/pwchange.mem")) {
				String pw = request.getParameter("pw");
				String loginid = (String)request.getSession().getAttribute("loginid");

				int result = dao.changepw(loginid, pw);
				MemberDTO dto = dao.selectMember(loginid);

				if(result > 0) {
					isRedirect = false;
					dst = "mypage_info.mem";
				}else {
					isRedirect = false;
					dst = "error.html";
				}

			}
			else if(command.equals("/leavemember.mem")) {
				System.out.println("들어옴");
				String loginid = (String)request.getSession().getAttribute("loginid");
				int result = dao.leaveMember(loginid);
				System.out.println("!");
				if(result > 0) {
					System.out.println("!");
					session.invalidate();
					isRedirect = false;
					dst = "memberout.jsp";
				}
			}

			//이메일로 계정, 비번찾기

			else if(command.equals("/idFind.mem")){





				String email = request.getParameter("email");

				String name = request.getParameter("name");

				System.out.println(email);

				System.out.println(name);

				String result = dao.findId(email, name);



				if(!(result.equals("1"))) {

					SendMail sendmail = new SendMail(1,result,email);

					sendmail.sendmail();

					request.setAttribute("result", 1);

				}else {

					request.setAttribute("result", 3);

				}


  
				isRedirect =false;



				dst = "find.jsp";

			}

			else if(command.equals("/pwFind.mem")){

				String email = request.getParameter("email");

				String id= request.getParameter("id");

				System.out.println(email);

				System.out.println(id);

				String result = dao.findPw(email,id);


				if(result!=null) {



					SendMail sendmail = new SendMail(email,result);

					sendmail.sendmail();

					request.setAttribute("result", 2);

				}

				else {

					request.setAttribute("result", 3);

				}

				isRedirect =false;



				dst = "find.jsp";

			}
			
			//문자인증 
			else if(command.equals("/sms.mem")) {
				 
				 String  pswd = "";
				 
		           StringBuffer sb1 = new StringBuffer();
		 
		           // ���� 5���
		           for( int i = 0; i<5; i++) {
		 
		               sb1.append((char)((Math.random() * 10)+48)); //�ƽ�Ű��ȣ 48(1) ���� 10�
		           }
		 
		           
		 
		           pswd = sb1.toString();
		 
				 
		        String to = "82"+request.getParameter("phone");
		 
		        String from="33644643087";
		 
		        String message = pswd;  
		        
		 
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
		 
		        System.out.println(result);
		 
		        con.disconnect();
		 
		        out.print(message);
		        
		        return;
		 
		 
		      }
		 



			if(isRedirect) {
				response.sendRedirect(dst);
			}else {
				RequestDispatcher rd = request.getRequestDispatcher(dst);
				rd.forward(request, response);
			}

		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
