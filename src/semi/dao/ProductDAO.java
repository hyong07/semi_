package semi.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

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
	
	public int addProduct(String board_no, String category, String detail_category, String sell_price, String sell_count, String p_name) throws Exception{
		Connection con = DBUtils.getConnection();
		String sql = "insert into product values(?,product_seq.nextval,?,?,?,?,'',?)";
		PreparedStatement pstat = con.prepareStatement(sql);
		pstat.setString(1, board_no);
		pstat.setString(2, category);
		pstat.setString(3, detail_category);
		pstat.setString(4, sell_price);
		pstat.setString(5, sell_count);
		pstat.setString(6, p_name);
		int result = pstat.executeUpdate();
		pstat.close();
		con.close();
		
		return result;
	}
	   
	   public ProductDTO mainProduct(String seq) throws Exception{
		   Connection con = DBUtils.getConnection();
		   String sql = "select * from product where board_no=?";
		   PreparedStatement pstat = con.prepareStatement(sql);
		   pstat.setString(1, seq);

		   ResultSet rs = pstat.executeQuery();
		   ProductDTO dto = new ProductDTO();
		   
		   while(rs.next()) {
			  
			   dto.setBoard_no(seq);
			   dto.setProduct_seq(rs.getString(2));
			   dto.setCategory(rs.getString(3));
			   dto.setDetail_category(rs.getString(4));
			   dto.setSell_price(rs.getString(5));
			   dto.setSell_count(rs.getString(6));
			   dto.setMain_product(rs.getString(7));
			   dto.setP_name(rs.getString(8));

		   }
		
		   return dto;
	   }
	   
	   public ProductDTO selectProduct(String product_seq) throws Exception{
		   Connection con = DBUtils.getConnection();
		   String sql = "select * from product where product_seq=?";
		   PreparedStatement pstat = con.prepareStatement(sql);
		   pstat.setString(1, product_seq);

		   ResultSet rs = pstat.executeQuery();
		   ProductDTO dto = new ProductDTO();
		   
		   while(rs.next()) {
			  
			   dto.setBoard_no(rs.getString(1));
			   dto.setProduct_seq(rs.getString(2));
			   dto.setCategory(rs.getString(3));
			   dto.setDetail_category(rs.getString(4));
			   dto.setSell_price(rs.getString(5));
			   dto.setSell_count(rs.getString(6));
			   dto.setMain_product(rs.getString(7));
			   dto.setP_name(rs.getString(8));

		   }
		
		   return dto;
	   }
	   




}
