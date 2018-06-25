package semi.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import semi.dbutils.DBUtils;
import semi.dto.BoardDTO;

public class BoardDAO { 

	public ArrayList<BoardDTO> boardForBoard(String category, String category2) throws Exception{
		Connection con = DBUtils.getConnection();
		String sql = null;
		PreparedStatement pstat = null;

		if(!(category2==null)) {
			
			sql =
					"select b.* from board b, product p, files f where (p.category =?) and (p.DETAIL_CATEGORY=?) and (p.main_product='y') and  (f.main_files='y') and (p.BOARD_NO = b.BOARD_SEQ) and (f.BOARD_NO=b.board_seq)";
			
			pstat = con.prepareStatement(sql);
			pstat.setString(1, category);
			pstat.setString(2, category2);
		}

		else {
			
			sql =
					"select b.* from board b, product p, files f where (p.category =?) and (p.main_product='y') and  (f.main_files='y') and (p.BOARD_NO = b.BOARD_SEQ) and (f.BOARD_NO=b.board_seq)";
			pstat = con.prepareStatement(sql);
			pstat.setString(1, category);
			
		}


		ResultSet rs = pstat.executeQuery();
		ArrayList<BoardDTO> list = new ArrayList<>();

		while(rs.next()) {		
			String board_seq = rs.getString(1);
			String seller_id = rs.getString(2);
			String title = rs.getString(3);
			String contents = rs.getString(4);
			String write_date = rs.getString(5);
			String sell_type = rs.getString(6);
			String sell_status = rs.getString(7);
			String end_date = rs.getString(8);
			String viewcount = rs.getString(9);

			BoardDTO boarddto = new BoardDTO(board_seq, seller_id, title, contents, write_date, sell_type,sell_status ,end_date,viewcount);
			list.add(boarddto);

		}
		return list;
	}

}