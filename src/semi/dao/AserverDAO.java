package semi.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import semi.dbutils.DBUtils;
import semi.dto.AserverDTO;

public class AserverDAO {
 
	public int insertServer(AserverDTO dto) throws Exception {
		Connection con = DBUtils.getConnection();
		System.out.println("�����������ִ��� �˻��Ұſ���~~~~~");
		String selectsql = "select * from aserver where board_seq = ? and buyer_id = ?";
		PreparedStatement selpstat = con.prepareStatement(selectsql);
		selpstat.setString(1,dto.getBoard_seq());
		selpstat.setString(2,dto.getBuyer_id());
		ResultSet rs = selpstat.executeQuery();
		int result = 0;
		if(rs.next()) {
			System.out.println("���������� �־ ������ų�ſ���~");
			String updatesql = "update aserver set hold_price=? where board_seq = ? and buyer_id = ? ";
			PreparedStatement uppstat = con.prepareStatement(updatesql);
			uppstat.setString(1,dto.getHold_price());
			uppstat.setString(2, dto.getBoard_seq());
			uppstat.setString(3,dto.getBuyer_id());
			result = uppstat.executeUpdate();
			System.out.println("�������ߴ�? " + result);
			uppstat.close();

		}

		else {
			System.out.println("���������� ��� �μ�Ʈ ��ų�ſ���~");
			String insertsql = "insert into aserver values(?,?,?,?,'����')";
			PreparedStatement inpstat = con.prepareStatement(insertsql);
			inpstat.setString(1, dto.getBoard_seq());
			inpstat.setString(2, dto.getSeller_id());
			inpstat.setString(3, dto.getBuyer_id());
			inpstat.setString(4, dto.getHold_price());

			result = inpstat.executeUpdate();
			System.out.println("�μ�Ʈ ���ߴ� ?" + result);
			inpstat.close();
		}


		con.commit();
		con.close();


		return result;

	}
	
	 public String getHold_price(String seq, String buyer_id) throws Exception{
	      Connection con = DBUtils.getConnection();
	      String sql = "SELECT HOLD_PRICE from ASERVER WHERE board_SEQ=? AND BUYER_ID=?";
	      PreparedStatement pstat = con.prepareStatement(sql);
	      
	      pstat.setString(1, seq);
	      pstat.setString(2, buyer_id);
	      
	      ResultSet rs = pstat.executeQuery();
	      
	      String result = null;
	      
	      if(rs.next()) {
	          result = rs.getString(1);
	      }

	      con.commit();
	      con.close();
	      pstat.close();
	      return result;
	   }
	 
	 public int serverCancel(String seq, String buyer_id) throws Exception{
	      Connection con = DBUtils.getConnection();
	      String sql ="UPDATE ASERVER SET STATUS='���', HOLD_PRICE='0' WHERE BOARD_SEQ=? AND BUYER_ID=?";
	       PreparedStatement pstat = con.prepareStatement(sql);
	      
	       pstat.setString(1, seq);
	       pstat.setString(2, buyer_id);
	       
	       int result = pstat.executeUpdate();
	      
	       con.commit();
	       con.close();
	       pstat.close();
	       return result;
	   }
	 
	 public int successBid(String seq, String current) throws Exception {
	      Connection con = DBUtils.getConnection();
	      String sql ="update aserver set status = case when hold_price = ? then '����' else '���' end where board_seq=?";
	       PreparedStatement pstat = con.prepareStatement(sql);
	       
	       pstat.setString(1, current);
	       pstat.setString(2, seq);
	       
	       int result = pstat.executeUpdate();
	       
	       con.commit();
	       con.close();
	       pstat.close();
	       return result;
	   }
	 
	 public int holdToZero(String seq) throws Exception{
	      Connection con = DBUtils.getConnection();
	      String sql = "update aserver set hold_price ='0' where board_seq=? ";
	      PreparedStatement pstat = con.prepareStatement(sql);
	      
	      pstat.setString(1, seq);
	      
	      int result = pstat.executeUpdate();
	      
	      con.commit();
	      con.close();
	      pstat.close();
	      return result;
	   }
	 
	
	 public String sellerid(String seq) throws Exception{
		 Connection con = DBUtils.getConnection();
		 String sql = "select seller_id from aserver where board_seq = ?";
  PreparedStatement pstat = con.prepareStatement(sql);
	      
	      pstat.setString(1, seq);
	      
	      ResultSet rs = pstat.executeQuery();
	      String id  =  null;
	      if(rs.next()) {
	    	  id = rs.getString(1);
	      }
	      
	      return id;
	      
		 
	 }
	 
	   public String winnerBuyer(String seq) throws Exception{
		      Connection con = DBUtils.getConnection();
		      String sql = "SELECT BUYER_ID WHERE BOARD_SEQ=? and STATUS='����'";
		      PreparedStatement pstat = con.prepareStatement(sql);
		      
		      pstat.setString(1, seq);
		      
		      ResultSet rs = pstat.executeQuery();
		      String result = null;
		      
		      if(rs.next()) {
		         result = rs.getString(1);
		      }
		      
		      con.commit();
		      con.close();
		      pstat.close();
		      return result;
		   }
	 
}
