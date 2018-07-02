package semi.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import semi.dbutils.DBUtils;
import semi.dto.Board_CommentDTO;

public class Board_CommentDAO {
	
	
	
	public int insertBoard_Comment(String id, String seq, String contents, String ip) throws Exception {
		  Connection con = DBUtils.getConnection();
	      String sql = "insert into board_comment values(?, board_comment_seq.nextval,?,?,sysdate,?)";         
	      PreparedStatement  pstat = con.prepareStatement(sql);
	      
	      pstat.setString(1, seq);
	      pstat.setString(2, contents);
	      pstat.setString(3, id);   
	      pstat.setString(4, ip);
	      
	 

	      int result =  pstat.executeUpdate();
	      System.out.println(result);
	      
	      con.commit();   
	      pstat.close();   
	      con.close();

	      return result;

		
	}
	
	public List<Board_CommentDTO> selectCommentList(String seq) throws Exception {
		Connection con = DBUtils.getConnection();
		 String sql = "select * from board_comment where article_no = ?";
		 PreparedStatement  pstat = con.prepareStatement(sql);
		 pstat.setString(1, seq);
		 ResultSet rs =  pstat.executeQuery();
		 List<Board_CommentDTO> list = new ArrayList<>();
		 
		 while(rs.next()) {
			 Board_CommentDTO dto = new Board_CommentDTO();
			 dto.setArticle_no(seq);
			 dto.setComment_seq(rs.getString(2));
			 dto.setComment_contents(rs.getString(3));
			 dto.setWriter(rs.getString(4));
			 dto.setWritedate(rs.getString(5));
			 dto.setIp(rs.getString(6));
			
			 list.add(dto);			 
		 }
		 
		 con.commit();
		 con.close();
		 pstat.close();
		 
		 return list;
		
	}

}
