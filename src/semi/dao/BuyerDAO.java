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
		pstat.setString(1, dto.getBoard_no());	 	// ���� �۹�ȣ		
		pstat.setString(2, dto.getProduct_no());		// ��ǰ ��ȣ		
		pstat.setString(3, dto.getSeller_id());		// �Ǹ��� ���̵�		
		pstat.setString(4, dto.getBuyer_id());		// ������ ���̵�		
		pstat.setString(5, dto.getBuyer_contact());		// ������ ����ó		
		pstat.setString(6, dto.getBuy_price());		// ����� ��ǰ ����		
		pstat.setString(7, dto.getBuy_count());		// ����� ��ǰ ����		
		pstat.setString(8, "����");		// ���� ����		
		pstat.setString(9, "���");		// ���� ���� or ����		
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
