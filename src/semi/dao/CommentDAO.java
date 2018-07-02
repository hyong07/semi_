package semi.dao;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import semi.dbutils.DBUtils;
import semi.dto.CommentDTO;
import semi.dto.CommunityDTO;

public class CommentDAO {

	public int commentInsertData(int article_no, String comment_text, String writer,  String ip) throws Exception{
		Connection con = DBUtils.getConnection();
		String sql = "insert into Community_comment values(?,Community_comment_seq.nextval,?,?,sysdate,?)";			
		PreparedStatement  pstat = con.prepareStatement(sql);

		pstat.setInt(1, article_no);
		pstat.setString(2, comment_text);
		pstat.setString(3, writer);	
		pstat.setString(4, ip);
	

		int result =  pstat.executeUpdate();
		
		con.commit();	
		pstat.close();	
		con.close();

		return result;
	}
	
	
	public List<CommentDTO> commentOutputData(int seq) throws Exception{
			

		Connection con = DBUtils.getConnection();
			String sql = "select * from Community_comment where article_no = ? order by comment_seq desc";
			
			PreparedStatement pstat = con.prepareStatement(sql);
			pstat.setInt(1, seq);
			ResultSet rs = pstat.executeQuery();
			
			List<CommentDTO>result = new ArrayList<>();
			
	
			
		while(rs.next()) {
			CommentDTO dto = new CommentDTO();
			dto.setArticle_no(rs.getInt(1));
			dto.setComment_seq(rs.getInt(2));
			dto.setComment_text(rs.getString(3));
			dto.setWriter(rs.getString(4));
			dto.setWritedate(rs.getString(5));
			dto.setIp(rs.getString(6));
			result.add(dto);
		}
			
			con.commit();	
			pstat.close();	
			con.close();
			return result;
		}
	
	public int commentdelete(int comment_seq) throws Exception{
		Connection con = DBUtils.getConnection();

		String sql = "delete from Community_comment where comment_seq = ?";

		PreparedStatement pstat = con.prepareStatement(sql);

		pstat.setInt(1, comment_seq);



		int result = pstat.executeUpdate();
		con.commit();
		pstat.close();
		con.close();

		return result;
	}
	
	public int commentmodify(String comment_text, int comment_seq) throws Exception{

		Connection con = DBUtils.getConnection();
		String sql = "update Community_comment set comment_text = ? where comment_seq = ?";		
		PreparedStatement pstat = con.prepareStatement(sql);

		
		pstat.setString(1, comment_text);
		pstat.setInt(2, comment_seq);

		int result =  pstat.executeUpdate();


		con.commit();
		pstat.close();	
		con.close();

		return result;
	}
	
	
}
