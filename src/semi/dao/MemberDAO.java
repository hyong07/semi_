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
	
	public MemberDTO selectMember(String id) throws Exception{
		Connection con = DBUtils.getConnection();
		String sql = "SELECT * FROM MEMBER WHERE ID=?";
		PreparedStatement pstat = con.prepareStatement(sql);
		pstat.setString(1, id);
		ResultSet rs = pstat.executeQuery();
		
		MemberDTO dto = new MemberDTO();
		
		while(rs.next()) {
			dto.setId(rs.getString("id"));
			dto.setName(rs.getString("name"));
			dto.setPhone(rs.getString("phone"));
			dto.setEmail(rs.getString("email"));
			dto.setAddress(rs.getString("address"));
			dto.setPoint(rs.getString("point"));
			
		}
		return dto;
	}
	
	public int modifymember(String id,String name,String email,String phone,String address) throws Exception{
		Connection con = DBUtils.getConnection();
		String sql = "UPDATE MEMBER SET NAME=?,EMAIL=?,PHONE=?,ADDRESS=? WHERE ID=?";
		PreparedStatement pstat = con.prepareStatement(sql);
		pstat.setString(1, name);
		pstat.setString(2, email);
		pstat.setString(3, phone);
		pstat.setString(4, address);
		pstat.setString(5, id);
		
		
		int result = pstat.executeUpdate(); 
		
		con.commit();
		con.close();
		pstat.close();
		
		return result;
	}
	public int changepw(String id,String pw) throws Exception{
		Connection con = DBUtils.getConnection();
		String sql = "UPDATE MEMBER SET PW=? WHERE ID=?";
		PreparedStatement pstat = con.prepareStatement(sql);
		pstat.setString(1, pw);
		pstat.setString(2, id);
		
		int result = pstat.executeUpdate(); 
		
		con.commit();
		con.close();
		pstat.close();
		
		return result;
	}
	
	public int leaveMember(String id) throws Exception{
		Connection con = DBUtils.getConnection();
		String sql = "delete from member where id=?";
		PreparedStatement pstat = con.prepareStatement(sql);
		
		pstat.setString(1, id);
		
		int result = pstat.executeUpdate(); 
		
		con.commit();
		con.close();
		pstat.close();
		
		return result;
	}
	
	public String getPoint(String id) throws Exception{
	      Connection con = DBUtils.getConnection();
	      String sql = "SELECT point FROM member WHERE ID=?";
	      PreparedStatement pstat = con.prepareStatement(sql);
	      pstat.setString(1, id);
	      
	      ResultSet result = pstat.executeQuery();
	      String mypoint=null;
	      
	      if(result.next()) {
	    	  mypoint = result.getString(1);
	      }
	      con.commit();
	      con.close();
	      pstat.close();
	      return mypoint;
	   }
	
	 public int minusPoint(String id, String bid) throws Exception{
         Connection con = DBUtils.getConnection();
         String sql = "UPDATE MEMBER SET POINT=((SELECT POINT FROM MEMBER WHERE ID=?)-?) WHERE id=?";
         PreparedStatement pstat = con.prepareStatement(sql);
         
         pstat.setString(1, id);
         pstat.setString(2, bid);
         pstat.setString(3, id);
         
         int result = pstat.executeUpdate();
         
         con.commit();
         con.close();
         pstat.close();
         return result;
      }
	 
	 public int returnPoint(String id, String point) throws Exception{
         Connection con = DBUtils.getConnection();
         String sql = "UPDATE MEMBER SET POINT=((SELECT POINT FROM MEMBER WHERE ID=?)+?) WHERE ID=?";
         PreparedStatement pstat = con.prepareStatement(sql);
         
         pstat.setString(1, id);
         pstat.setString(2, point);
         pstat.setString(3, id);
         
         int result = pstat.executeUpdate();
         
         con.commit();
         con.close();
         pstat.close();
         return result;
      }
	 
	 public int usePoint(String id,String totalPrice) throws Exception{
	      Connection con = DBUtils.getConnection();
	      String sql = "update member set point = (select point from member where id=?)-? where id=?";
	      PreparedStatement pstat = con.prepareStatement(sql);
	      pstat.setString(1, id);
	      pstat.setString(2, totalPrice);
	      pstat.setString(3, id);
	      
	      int result = pstat.executeUpdate();
	      con.commit();
	      con.close();
	      pstat.close();
	      
	      return result;
	      
	   }
	  public String getContact(String id) throws Exception{
	      Connection con = DBUtils.getConnection();
	      String sql = "select phone from member where id=?";
	      PreparedStatement pstat = con.prepareStatement(sql);
	      pstat.setString(1, id);
	      ResultSet rs = pstat.executeQuery();
	      String result = null;
	      while(rs.next()) {
	         result = rs.getString(1);
	      }
	      con.commit();
	      con.close();
	      pstat.close();
	      
	      return result;
	   }

}
