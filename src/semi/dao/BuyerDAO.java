package semi.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import semi.dbutils.DBUtils;
import semi.dto.BuyerDTO;

public class BuyerDAO {
	public int insertBuyer(BuyerDTO dto) throws Exception{
		Connection con = DBUtils.getConnection();
		String sql = "insert into buyer values(buyer_seq.nextval,?,?,?,?,?,?,?,?,?)";
		PreparedStatement pstat = con.prepareStatement(sql);		
		pstat.setString(1, dto.getBoard_no());	 	// 보드 글번호		
		pstat.setString(2, dto.getProduct_no());		// 상품 번호		
		pstat.setString(3, dto.getSeller_id());		// 판매자 아이디		
		pstat.setString(4, dto.getBuyer_id());		// 구매자 아이디		
		pstat.setString(5, dto.getBuyer_contact());		// 구매자 연락처		
		pstat.setString(6, dto.getBuy_price());		// 살려는 물품 가격		
		pstat.setString(7, dto.getBuy_count());		// 살려는 물품 수량		
		pstat.setString(8, "진행");		// 구매 상태		
		pstat.setString(9, "대기");		// 구매 성공 or 실패		
		int result = pstat.executeUpdate();
		con.commit();
		con.close();
		pstat.close();
		
		return result;
	}
	
	public String totalPrice(String board_no) throws Exception{
		Connection con = DBUtils.getConnection();
		String sql = "select sum(buy_price) from buyer where board_no =?";
		PreparedStatement pstat = con.prepareStatement(sql);
		pstat.setString(1, board_no);
		ResultSet rs = pstat.executeQuery();
		String result = null;
		while(rs.next()) {
			result = rs.getString(1);
		}
		con.commit();
		con.close();
		pstat.close();
		return result;
	}
	
//	public List<BuyerDTO> buyComplete() throws Exception{
//		Connection con = DBUtils.getConnection();
//		String sql = "select * from buyer where board_no=?";
//		PreparedStatement pstat = con.prepareStatement(sql);
//		pstat.setString(1, x);
//	}
}
