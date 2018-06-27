package semi.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import semi.dbutils.DBUtils;

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

}
