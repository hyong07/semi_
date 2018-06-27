package semi.api;

import java.util.Date;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import semi.dao.MemberDAO;

public class SendMail {
	private int num;
	private String id=null;
	private String email;
	private String certification;

	public SendMail() {
		super();
	}
	
	
	public SendMail(int num, String id, String email) {
		super();// ���̵� ã��
		this.num = num;
		this.id = id;
		this.email = email;
	}	
	
	public SendMail(String email, String certification) {
		super();  //��й�ȣ ã��
		this.email = email;
		this.certification = certification;
	}
	
	public void sendmail() {
         	
	        Properties p = System.getProperties();
	        p.put("mail.smtp.starttls.enable", "true");     // gmail�� ������ true ����
	        p.put("mail.smtp.host", "smtp.gmail.com");      // smtp ���� �ּ�
	        p.put("mail.smtp.auth","true");                 // gmail�� ������ true ����
	        p.put("mail.smtp.port", "587");                 // gmail ��Ʈ
	           
	        Authenticator auth = new MyAuthentication();
	         
	        //session ���� ��  MimeMessage����
	        Session sessionMail = Session.getDefaultInstance(p, auth);
	        MimeMessage msg = new MimeMessage(sessionMail);
	         
	        try{
	            //���������ð�
	            msg.setSentDate(new Date());
	             
	            InternetAddress from = new InternetAddress() ;
	             
	             
	            from = new InternetAddress("<SemiauctionGo@gmail.com>");
	             
	            // �̸��� �߽���
	            msg.setFrom(from);
	             
	             
	            // �̸��� ������
	            InternetAddress to = new InternetAddress(email);
	            msg.setRecipient(Message.RecipientType.TO, to);
	             
	            // �̸��� ����
	            msg.setSubject("ã���ô� ���~", "UTF-8");
	             
	            // �̸��� ���� 1�� ��� 2�� ���̵�
	            System.out.println(id);
	            if(id==null) {
	            	MemberDAO dao = new MemberDAO();
	            	try {
						dao.findPw(email, id);
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
	            msg.setText("�ӽ� ��й�ȣ : " + certification , "UTF-8");
	            }else {
	            	  msg.setText("���� : " + id, "UTF-8");
	            }
	            // �̸��� ���
	            msg.setHeader("content-Type", "text/html");
	             
	            //���Ϻ�����
	            javax.mail.Transport.send(msg);
	             
	        }catch (AddressException addr_e) {
	            addr_e.printStackTrace();
	        }catch (MessagingException msg_e) {
	            msg_e.printStackTrace();
	        }
	    }
	 
	}
	 
	 
	class MyAuthentication extends Authenticator {
	      
	    PasswordAuthentication pa;
	    
	 
	    public MyAuthentication(){
	         
	        String id = "SemiauctionGo";       // ���� ID
	        String pw = "cnlgoTwh";          // ���� ��й�ȣ
	 
	        // ID�� ��й�ȣ�� �Է��Ѵ�.
	        pa = new PasswordAuthentication(id, pw);
	      
	    }
	    // �ý��ۿ��� ����ϴ� ��������
	    public PasswordAuthentication getPasswordAuthentication() {
	        return pa;
	    }
}


