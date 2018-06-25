package semi.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import semi.dbutils.DBUtils;
import semi.dto.BoardDTO;
import semi.dto.ProductDTO;

public class ProductDAO {
	public ArrayList<String> priceForBoard(String category, String category2) throws Exception{
		Connection con = DBUtils.getConnection();
		
		String sql = null;
		PreparedStatement pstat = null;

		if(!(category2==null)) {
			sql =
					"select p.sell_price from board b, product p, files f where (p.category =?) and (p.DETAIL_CATEGORY=?) and (p.main_product='y') and  (f.main_files='y') and (p.BOARD_NO = b.BOARD_SEQ) and (f.BOARD_NO=b.board_seq)";
			
			pstat = con.prepareStatement(sql);
			pstat.setString(1, category);
			pstat.setString(2, category2);
		}

		else {
			
			sql =
					"select p.sell_price from board b, product p, files f where (p.category =?) and (p.main_product='y') and  (f.main_files='y') and (p.BOARD_NO = b.BOARD_SEQ) and (f.BOARD_NO=b.board_seq)";
			pstat = con.prepareStatement(sql);
			pstat.setString(1, category);
			
		}
		ResultSet rs = pstat.executeQuery();
		ArrayList<String> pricelist = new ArrayList<>();

		while(rs.next()) {
			String sell_price = rs.getString(1);
			pricelist.add(sell_price);
		}
		return pricelist;
	}


}
