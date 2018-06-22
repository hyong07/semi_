package semi.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import semi.dbutils.DBUtils;
import semi.dto.BoardDTO;

public class Board_ProductDAO {
	
	public boolean checkSell_type(String board_no) throws Exception{
		Connection con = DBUtils.getConnection();
		String sql = "select * from board where board_no=? and sell_type=?";
		PreparedStatement pstat = con.prepareStatement(sql);
		pstat.setString(1, board_no);
		pstat.setString(2, "s");
		ResultSet rs = pstat.executeQuery();
		boolean result = rs.next();
		pstat.close();
		con.close();		
		return result;		
	}
	
	public List<BoardDTO> view_AucBoard(String board_no) throws Exception{
		Connection con = DBUtils.getConnection();
		String sql = "select from board where board_seq=?";
		PreparedStatement pstat = con.prepareStatement(sql);
		pstat.setString(1, board_no);
		ResultSet rs = pstat.executeQuery();
	}
	
	
	
	public List<BoardDTO> view_SellBoard(String board_no) throws Exception{
		Connection con = DBUtils.getConnection();
		String sql = "select from board where board_seq =?";
		PreparedStatement pstat = con.prepareStatement(sql);
		pstat.setString(1, board_no);
		ResultSet rs = pstat.executeQuery();
		List<BoardDTO> result = new ArrayList<>();
		while(rs.next()) {
			BoardDTO tmp = new BoardDTO();
			
		}
	}
	
	public int addBoard() throws Exception{
		Connection con = DBUtils.getConnection();
		String sql = "insert into board values(board_seq.nextval,?,?,?,sysdate,?,?,?)";
		PreparedStatement pstat = con.prepareStatement(sql);
		int result = pstat.executeUpdate();
		pstat.close();
		con.close();		
		return result;
	}
	
	public int addProduct() throws Exception{
		Connection con = DBUtils.getConnection();
		String sql = "insert into board values()";
	}
	
	
	
}
