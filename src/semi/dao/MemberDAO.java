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
	
	//비밀번호 찾기, 난수로 비번 임의로 박아주고 이멜로 보내줌
	
	 public String findPw(String email, String id) throws Exception{
		 
	     Connection con =DBUtils.getConnection();
	 
	     String result=null;
	 
	     String certification = Integer.toString((int)(Math.random() * 9000 + 1000));               
	 
	     String sql = "update member set pw=? where email=? and id=?";
	 
	     PreparedStatement pstat = con.prepareStatement(sql);
	 
	     pstat.setString(1, certification);
	 
	     pstat.setString(2, email);
	 
	     pstat.setString(3, id);
	 
	     int success = pstat.executeUpdate();     
	 
	     if(success > 0) {
	 
	       result= certification;            
	 
	     } 
 
	     con.commit();
	 
	     pstat.close();
	 
	     con.close();
	 
	     return result;		 
	   }
	 //아이디 찾기
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
	 
	 
	
}