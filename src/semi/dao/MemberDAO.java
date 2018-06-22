package semi.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import semi.dto.MemberDTO;

public class MemberDAO {
	// ======= DB Connection 
	private Connection getConnection() throws Exception {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String dbId = "kh";
		String dbPw = "kh";
		
		return DriverManager.getConnection(url, dbId, dbPw);
	}
	
	public boolean isIdExist(String id) throws Exception{
		Connection con = this.getConnection();
		String sql = "SELECT * FROM MEMBERS WHERE ID =?";
		PreparedStatement pstat = con.prepareStatement(sql);
		pstat.setString(1, id);
		ResultSet rs = pstat.executeQuery();
		
		boolean result = rs.next();
		
		con.commit();
		pstat.close();
		con.close();

		return result;
	}
	
	public int insertMember(String id, String pw, String name, String phone, String email, String address) throws Exception{
		Connection con = this.getConnection();
		String sql = "INSERT INTO MEMBER VALUES(?,?,?,?,?,?)";
		PreparedStatement pstat = con.prepareStatement(sql);
		pstat.setString(1, id);
		pstat.setString(2, pw);
		pstat.setString(3, name);
		pstat.setString(4, phone);
		pstat.setString(5, email);
		pstat.setString(6, address);
		
		int result = pstat.executeUpdate(); 
		
		con.commit();
		con.close();
		pstat.close();
		
		return result;
	}
	
	public boolean idpwcheck(String id, String pw) throws Exception {
		Connection con = this.getConnection();
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
		
		return result;
	}
	
	public List<MemberDTO> selectMember() throws Exception{
		Connection con = this.getConnection();
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
