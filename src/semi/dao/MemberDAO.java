package semi.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import semi.dbutils.DBUtils;
import semi.dto.MemberDTO;

public class MemberDAO {
   
   public boolean isIdExist(String id) throws Exception{
      Connection con = DBUtils.getConnection();
      String sql = "SELECT * FROM MEMBER WHERE ID =?";
      PreparedStatement pstat = con.prepareStatement(sql);
      pstat.setString(1, id);
      ResultSet rs = pstat.executeQuery();
      
      boolean result = rs.next();
      
      con.commit();
      pstat.close();
      con.close();

      return result;
   }
   public String findId(String email, String name) throws Exception{
	   Connection con = DBUtils.getConnection();
	   String sql = "select id from member where email=? and name=?";
	   PreparedStatement pstat = con.prepareStatement(sql);
	   pstat.setString(1, email);
	   pstat.setString(2, name);
	   ResultSet rs = pstat.executeQuery();
	   String result = "1";
			   while(rs.next()) {
				  result=rs.getString(1); 
			   }
	   con.commit();
	   pstat.close();
	   con.close();
	   return result;
   }
   
   /*
    * 
    * ��й�ȣ ã�� , ���� ���� �� �ٲ� ��й�ȣ �ѱ� 
    * 
    */
   public String findPw(String email, String id) throws Exception{
	   Connection con =DBUtils.getConnection();
	   String result=null;
	   String  pswd = "";
	   StringBuffer sb = new StringBuffer();
	   StringBuffer sc = new StringBuffer("!#$%^&*-=?~");  // Ư������ ����, {}[] ���� ��ȣ�����ڴ� ��

	   // �빮�� 4���� ���� �߻� 
	   sb.append((char)((Math.random() * 26)+65));  // ù���ڴ� �빮��, ù���ں��� Ư������ ������ �� �̻�

	   for( int i = 0; i<3; i++) {
	      sb.append((char)((Math.random() * 26)+65));  // �ƽ�Ű��ȣ 65(A) ���� 26���� �߿��� ����
	   } 

	   // �ҹ��� 4���� ���ǹ߻�
	   for( int i = 0; i<4; i++) {
	       sb.append((char)((Math.random() * 26)+97)); // �ƽ�Ű��ȣ 97(a) ���� 26���� �߿��� ����
	   }  


	   // ���� 2���� ���� �߻�
	   for( int i = 0; i<2; i++) {
	       sb.append((char)((Math.random() * 10)+48)); //�ƽ�Ű��ȣ 48(1) ���� 10���� �߿��� ����
	   }


	   // Ư�����ڸ� �ΰ�  �߻����� �����ϰ� �߰��� ���� �ִ´� 
	   sb.setCharAt(((int)(Math.random()*3)+1), sc.charAt((int)(Math.random()*sc.length()-1))); //�빮��3���� �ϳ�   
	   sb.setCharAt(((int)(Math.random()*4)+4), sc.charAt((int)(Math.random()*sc.length()-1))); //�ҹ���4���� �ϳ�

	   pswd = sb.toString();

	      	   	 
	   String sql = "update member set pw=? where email=? and id=?";
	   PreparedStatement pstat = con.prepareStatement(sql);
	   
	   
	   pstat.setString(1, pswd);
	   pstat.setString(2, email);
	   pstat.setString(3, id);
	   int success = pstat.executeUpdate();	   
	   if(success > 0) {
		   result= pswd;		   		 
	   } 
	   con.commit();
	   pstat.close();
	   con.close();
	   return result;
   }
 
   
   
   public int insertMember(MemberDTO dto) throws Exception{
      Connection con = DBUtils.getConnection();
      String sql = "INSERT INTO MEMBER VALUES(?,?,?,?,?,?,default)";
      PreparedStatement pstat = con.prepareStatement(sql);
      pstat.setString(1, dto.getId());
      pstat.setString(2, dto.getPw());
      pstat.setString(3, dto.getName());
      pstat.setString(4, dto.getEmail());
      pstat.setString(5, dto.getPhone());
      pstat.setString(6, dto.getAddress());
      
      int result = pstat.executeUpdate(); 
      
      con.commit();
      con.close();
      pstat.close();
      
      return result;
   }
   
   public boolean idpwcheck(String id, String pw) throws Exception {
      System.out.println(id + " : " + pw);
      Connection con = DBUtils.getConnection();
      String sql = "SELECT * FROM MEMBER WHERE ID =? AND PW =?";
      PreparedStatement pstat = con.prepareStatement(sql);
      pstat.setString(1, id);
      pstat.setString(2, pw);
      ResultSet rs = pstat.executeQuery();
      
      boolean result = rs.next();
      con.commit();
      rs.close();
      con.close();
      pstat.close();
      System.out.println(result);
      return result;
   }
   
   public List<MemberDTO> selectMember() throws Exception{
      Connection con = DBUtils.getConnection();
      String sql = "SELECT * FROM MEMBER";
      PreparedStatement pstat = con.prepareStatement(sql);
      ResultSet rs = pstat.executeQuery();
      List<MemberDTO> list = new ArrayList<>();
      
      while(rs.next()) {
         MemberDTO dto = new MemberDTO();
         dto.setId(rs.getString("id"));
         dto.setName(rs.getString("name"));
         dto.setPhone(rs.getString("phone"));
         dto.setEmail(rs.getString("email"));
         dto.setAddress(rs.getString("address"));
         dto.setPoint(rs.getString("point"));
         
         list.add(dto);
      }
      return list;
   }
   
}