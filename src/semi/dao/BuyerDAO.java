package semi.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
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
		pstat.setString(8, "��۴����");		// ���� ����		
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
	
	
	public List<BuyerDTO> buyComplete(String board_no, String buyer_id) throws Exception{
		Connection con = DBUtils.getConnection();
		String sql = "select * from buyer where board_no=? and buyer_id=?";
		PreparedStatement pstat = con.prepareStatement(sql);
		pstat.setString(1, board_no);
		pstat.setString(2, buyer_id);
		ResultSet rs = pstat.executeQuery();
		List<BuyerDTO> result = new ArrayList<>();
		while(rs.next()) {
			BuyerDTO tmp = new BuyerDTO();
			tmp.setBuyer_seq(rs.getInt(1));
			tmp.setBoard_no(rs.getString(2));
			tmp.setProduct_no(rs.getString(3));
			tmp.setSeller_id(rs.getString(4));
			tmp.setBuyer_id(rs.getString(5));
			tmp.setBuyer_contact(rs.getString(6));
			tmp.setBuy_price(rs.getString(7));
			tmp.setBuy_count(rs.getString(8));
			tmp.setBuy_state(rs.getString(9));
			tmp.setBuy_success(rs.getString(10));			
			result.add(tmp);
		}		
		con.commit();
		con.close();
		pstat.close();		
		return result;
	}
	
	public int productDelivery(String board_no, String buyer_id) throws Exception{
		Connection con = DBUtils.getConnection();
		String sql = "update buyer set buy_state ='�����' where board_no=? and buyer_id=?";
		PreparedStatement pstat = con.prepareStatement(sql);
		pstat.setString(1, board_no);
		pstat.setString(2, buyer_id);
		int result = pstat.executeUpdate();
		con.commit();
		con.close();
		pstat.close();		
		return result;
	}	
	
	
   public String selectbuyproduct(String product_seq) throws Exception{
	   Connection con = DBUtils.getConnection();
	   String sql = "select p_name from product where product_seq=?";
	   PreparedStatement pstat = con.prepareStatement(sql);
	   pstat.setString(1, product_seq);
	   ResultSet rs = pstat.executeQuery();
	   
	   String name = null;
	   
	   while(rs.next()) {        
		     name = rs.getString(1);
		}
	   
	   con.commit();
	   con.close();
	   pstat.close();      
	   return name;
	   
   }
   
   public List<BuyerDTO> selectBuyer(String id) throws Exception{
	   	  Connection con = DBUtils.getConnection();
	      String sql = "select * from buyer where buyer_id=?";
	      PreparedStatement pstat = con.prepareStatement(sql);
	      pstat.setString(1, id);
	      
	      ResultSet rs = pstat.executeQuery();
		     
		   List<BuyerDTO> result = new ArrayList<>();
		      
		   while(rs.next()) {
		      BuyerDTO tmp = new BuyerDTO();
		      tmp.setBuyer_seq(rs.getInt(1));
		      tmp.setBoard_no(rs.getString(2));
		      tmp.setProduct_no(rs.getString(3));
		      tmp.setSeller_id(rs.getString(4));
		      tmp.setBuyer_id(rs.getString(5));
		      tmp.setBuyer_contact(rs.getString(6));
		      tmp.setBuy_price(rs.getString(7));
		      tmp.setBuy_count(rs.getString(8));
		      tmp.setBuy_state(rs.getString(9));
		      tmp.setBuy_success(rs.getString(10));         
		      result.add(tmp);
		   }      
		   
		      con.commit();
		      con.close();
		      pstat.close();      
		      return result;
   }
   
   public List<String> selectBoardNo(String id)throws Exception{
	   Connection con = DBUtils.getConnection();
	   String sql = "select DISTINCT board_no from buyer where buyer_id=?";
	   PreparedStatement pstat = con.prepareStatement(sql);
	   pstat.setString(1, id);
	   ResultSet rs = pstat.executeQuery();
	   
	   List<String> result = new ArrayList<>();
	   
	   while(rs.next()) {        
		      result.add(rs.getString(1));
		}
	   con.commit();
	   con.close();
	   pstat.close();      
	   return result;
   }
   
   public String selectproductname(String id) throws Exception{
	   Connection con = DBUtils.getConnection();
	   String sql = "select p_name from product where buyer_id=?";
	   PreparedStatement pstat = con.prepareStatement(sql);
	   pstat.setString(1, id);
	   ResultSet rs = pstat.executeQuery();
	   
	   String name = null;
	   
	   while(rs.next()) {        
		     name = rs.getString(1);
		}
	   
	   con.commit();
	   con.close();
	   pstat.close();      
	   return name;
	   
   }
   public List<String> selectbuyerid(String board_seq) throws Exception{
	   Connection con = DBUtils.getConnection();
	   String sql = "select DISTINCT buyer_id from buyer where board_no=?";
	   PreparedStatement pstat = con.prepareStatement(sql);
	   pstat.setString(1, board_seq);
	   ResultSet rs = pstat.executeQuery();
	   
	   List<String> result = new ArrayList<>();
	   
	   while(rs.next()) {        
		      result.add(rs.getString(1));
		}
	   con.commit();
	   con.close();
	   pstat.close();      
	   return result;
	   
   }
   public List<BuyerDTO> selectBuyerList(String board_seq) throws Exception{
	   Connection con = DBUtils.getConnection();
	   String sql = "select * from buyer where board_no=?";
	   PreparedStatement pstat = con.prepareStatement(sql);
	   pstat.setString(1, board_seq);
	   ResultSet rs = pstat.executeQuery();
	     
	   List<BuyerDTO> result = new ArrayList<>();
	      
	   while(rs.next()) {
	      BuyerDTO tmp = new BuyerDTO();
	      tmp.setBuyer_seq(rs.getInt(1));
	      tmp.setBoard_no(rs.getString(2));
	      tmp.setProduct_no(rs.getString(3));
	      tmp.setSeller_id(rs.getString(4));
	      tmp.setBuyer_id(rs.getString(5));
	      tmp.setBuyer_contact(rs.getString(6));
	      tmp.setBuy_price(rs.getString(7));
	      tmp.setBuy_count(rs.getString(8));
	      tmp.setBuy_state(rs.getString(9));
	      tmp.setBuy_success(rs.getString(10));         
	      result.add(tmp);
	   }      
	   
	      con.commit();
	      con.close();
	      pstat.close();      
	      return result;
   }
}