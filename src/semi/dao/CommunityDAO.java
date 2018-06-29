package semi.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import semi.dbutils.DBUtils;
import semi.dto.CommunityDTO;


public class CommunityDAO {

	public List<CommunityDTO> communityoutput() throws Exception{

		Connection con = DBUtils.getConnection();
		String sql = "select * from Community order by seq desc"; 

		PreparedStatement pstat = con.prepareStatement(sql);
		

		ResultSet rs = pstat.executeQuery();

		List<CommunityDTO> result = new ArrayList<>();
		System.out.println(1);
		while(rs.next()) {
			System.out.println(2);
			CommunityDTO dto = new CommunityDTO();
			
			dto.setSeq(rs.getInt(1));
			dto.setTitle(rs.getString(2));
			dto.setContents(rs.getString(3));
			dto.setWriter(rs.getString(4));
			dto.setWritedate(rs.getString(5));
			dto.setViewcount(rs.getString(6));
			dto.setIp(rs.getString(7));
			System.out.println(dto.getSeq());
			System.out.println(dto.getTitle());
			System.out.println(dto.getIp());
			result.add(dto);
		}

		con.commit();
		pstat.close();	
		con.close();
		return result;
	}

	
	public int communityinsert(String title, String contents, String writer,  String ip) throws Exception{

		Connection con = DBUtils.getConnection();
		String sql = "insert into Community values(Community_seq.nextval,?,?,?,sysdate,default,?)";

		PreparedStatement  pstat = con.prepareStatement(sql);
		
		
		pstat.setString(1, title);
		pstat.setString(2, contents);
		pstat.setString(3, writer);	
		pstat.setString(4, ip );


		int result =  pstat.executeUpdate();

		con.commit();	
		pstat.close();	
		con.close();

		return result;
	}
	
	public CommunityDTO articleView(int seq) throws Exception{

		CommunityDTO dto = new CommunityDTO();

		Connection con = DBUtils.getConnection();
		String sql = "select * from Community where seq= ?";		
		PreparedStatement pstat = con.prepareStatement(sql);	
		pstat.setInt(1, seq);

		ResultSet rs = pstat.executeQuery();	

		while(rs.next()) {
			dto.setSeq(rs.getInt("seq"));
			dto.setTitle(rs.getString("title"));
			dto.setContents(rs.getString("contents"));
			dto.setWriter(rs.getString("writer"));
			dto.setWritedate(rs.getString("writedate"));
			dto.setViewcount(rs.getString("viewcount"));
			dto.setIp(rs.getString("ip"));

		}	


		con.commit();
		pstat.close();	
		con.close();

		return dto;

	}
	
	public int communitydelete(int seq) throws Exception{
		Connection con = DBUtils.getConnection();

		String sql = "delete from Community where seq = ?";

		PreparedStatement pstat = con.prepareStatement(sql);

		pstat.setInt(1, seq);



		int result = pstat.executeUpdate();
		con.commit();
		pstat.close();
		con.close();

		return result;
	}

	public int communitymodify(CommunityDTO dto, int seq) throws Exception{

		Connection con = DBUtils.getConnection();
		String sql = "update Community set title = ?, contents = ? where seq = ?";		
		PreparedStatement pstat = con.prepareStatement(sql);

		pstat.setString(1, dto.getTitle());
		pstat.setString(2, dto.getContents());
		pstat.setInt(3, seq);

		int result =  pstat.executeUpdate();


		con.commit();
		pstat.close();	
		con.close();

		return result;
	}
	
	
	public void countData(int seq, int count) throws Exception{

		Connection con = DBUtils.getConnection();
		String sql = "update Community set viewcount= ? where seq = ?";		
		PreparedStatement pstat = con.prepareStatement(sql);

		pstat.setInt(1, ++count);
		pstat.setInt(2, seq);


		pstat.executeUpdate();


		con.commit();
		pstat.close();	
		con.close();

	}
	
	
	
	
	
}
