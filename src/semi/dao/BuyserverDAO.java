package semi.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import semi.dbutils.DBUtils;
import semi.dto.BuyserverDTO;

public class BuyserverDAO {
	public int insertBuyserver(BuyserverDTO bsdto) throws Exception{
		Connection con = DBUtils.getConnection();
		String sql = "insert into buyserver values(?,?,?,?,?)";
		PreparedStatement pstat = con.prepareStatement(sql);
		pstat.setString(1, bsdto.getBoard_no());
		pstat.setString(2, bsdto.getSeller_id());
		pstat.setString(3, bsdto.getBuyer_id());
		pstat.setString(4, bsdto.getBuy_price());
		pstat.setString(5, bsdto.getStatus());
		int result = pstat.executeUpdate();
		con.commit();
		con.close();
		pstat.close();
		
		return result;
	}
}
