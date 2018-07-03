package semi.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import semi.dbutils.DBUtils;

public class Board_ProductDAO {
	
	public boolean checkSell_type(String board_no) throws Exception{
		Connection con = DBUtils.getConnection();
		String sql = "select * from board where board_no=? and sell_type=?";
		PreparedStatement pstat = con.prepareStatement(sql);
		pstat.setString(1, board_no);
		pstat.setString(2, "s");
		ResultSet rs = pstat.executeQuery();
		boolean result = rs.next();
		con.commit();
		pstat.close();
		con.close();		
		return result;		
	}
	
//	public List<BoardDTO> view_AucBoard(String board_no) throws Exception{
//		Connection con = DBUtils.getConnection();
//		String sql = "select from board where board_seq=?";
//		PreparedStatement pstat = con.prepareStatement(sql);
//		pstat.setString(1, board_no);
//		ResultSet rs = pstat.executeQuery();
//	}
//	
//	
//	
//	public List<BoardDTO> view_SellBoard(String board_no) throws Exception{
//		Connection con = DBUtils.getConnection();
//		String sql = "select from board where board_seq =?";
//		PreparedStatement pstat = con.prepareStatement(sql);
//		pstat.setString(1, board_no);
//		ResultSet rs = pstat.executeQuery();
//		List<BoardDTO> result = new ArrayList<>();
//		while(rs.next()) {
//			BoardDTO tmp = new BoardDTO();
//			
//		}
//	}
	
	public int checkboardNo() throws Exception{
		Connection con = DBUtils.getConnection();
		String sql = "select board_seq.nextval from dual";
		PreparedStatement pstat = con.prepareStatement(sql);
		ResultSet rs = pstat.executeQuery();
		int result = 0;
		while(rs.next()) {
			result = rs.getInt(1);
		}
		con.commit();
		pstat.close();
		con.close();
		return result;
	}
	
	public int addBoard(int board_no, String id, String title, String contents, String sell_type) throws Exception{
		Connection con = DBUtils.getConnection();
		String sql = "insert into board values(?,?,?,?,sysdate,?,'p','','')";
		PreparedStatement pstat = con.prepareStatement(sql);
		pstat.setInt(1, board_no);
		pstat.setString(2, id);
		pstat.setString(3, title);
		pstat.setString(4, contents);
		pstat.setString(5, sell_type);		
		int result = pstat.executeUpdate();
		con.commit();
		pstat.close();
		con.close();
		return result;
	}
	
	public int addProduct(int board_no, String category, String detail_category, String sell_price, String sell_count, String p_name) throws Exception{
		Connection con = DBUtils.getConnection();
		String sql = "insert into product values(?,product_seq.nextval,?,?,?,?,'',?)";
		PreparedStatement pstat = con.prepareStatement(sql);
		pstat.setInt(1, board_no);
		pstat.setString(2, category);
		pstat.setString(3, detail_category);
		pstat.setString(4, sell_price);
		pstat.setString(5, sell_count);
		pstat.setString(6, p_name);
		int result = pstat.executeUpdate();
		con.commit();
		pstat.close();
		con.close();
		
		return result;
	}
	
	
	
	
}
