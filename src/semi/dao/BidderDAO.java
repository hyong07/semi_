package semi.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import semi.dbutils.DBUtils;
import semi.dto.BidderDTO;

public class BidderDAO {
    
   public List<BidderDTO> bidderSelect(String bodder_seq) throws Exception{
      Connection con = DBUtils.getConnection();
      String sql = "SELECT * FORM BIDDER WHERE BODDER_SEQ=?";
      PreparedStatement pstat = con.prepareStatement(sql);
      pstat.setString(1, bodder_seq);
      ResultSet rs = pstat.executeQuery();
      
      List<BidderDTO> list = new ArrayList<>();
      
      while(rs.next()) {
         String bidder_seq = rs.getString(1);
         String board_seq = rs.getString(2);
         String seller_id = rs.getString(3);
         String buyer_id = rs.getString(4);
      
         String bidprice = rs.getString(5);
         String biddate = rs.getString(6);
         String state = rs.getString(7);
         
         BidderDTO bidderdto = new BidderDTO(bidder_seq, board_seq, seller_id, buyer_id, bidprice, biddate, state);
         list.add(bidderdto);
      }  con.commit();
      con.close();
      pstat.close();
      return list;
   }
   
   public String getCurrentPrice(String seq) throws Exception {
	   System.out.println("커런트들어와?");
	   Connection con = DBUtils.getConnection();
	      String sql = "SELECT max(to_number(bidprice)) from BIDDER WHERE board_seq=? and state = '입찰' ";
	      PreparedStatement pstat = con.prepareStatement(sql);
	      pstat.setString(1, seq);
	      ResultSet rs = pstat.executeQuery();
	      String result= null;
	      if(rs.next()) {
	    	 result = rs.getString(1);
	      }
	      
	      System.out.println(result);
	      con.commit();
	      con.close();
	      pstat.close();
	      
	      return result;
   }
   public int insertBidder(BidderDTO dto) throws Exception{
	   System.out.println("들어오니?");
	      Connection con = DBUtils.getConnection();
	      String sql = "INSERT INTO BIDDER VALUES(BIDDER_SEQ.NEXTVAL,?,?,?,?,sysdate,DEFAULT)";
	      PreparedStatement pstat = con.prepareStatement(sql);
	    
	      System.out.println(dto.getBoard_seq()+":"+dto.getSeller_id()+":"+dto.getBuyer_id()+":"+dto.getBidprice());
	      pstat.setString(1, dto.getBoard_seq());
	      pstat.setString(2, dto.getSeller_id());
	      pstat.setString(3, dto.getBuyer_id());
	      pstat.setString(4, dto.getBidprice());
	      int result = pstat.executeUpdate();
	      con.commit();
	      con.close();
	      pstat.close();
	      
	      System.out.println("요기까지 인설트 비더라고 ! " +result);
	      return result;
	   }
   
   public String prebid(String seq, String buyer_id) throws Exception{
	      Connection con = DBUtils.getConnection();
	      String sql = "select max(bidprice) from bidder where board_seq = ? and buyer_id = ?";
	      PreparedStatement pstat = con.prepareStatement(sql);
	      pstat.setString(1, seq);
	      pstat.setString(2, buyer_id);
	      
	      ResultSet rs = pstat.executeQuery();
	      String result = null;
	      
	      if(rs.next()) {
	          result = rs.getString(1);
	          System.out.println(result + " 비드한적있니~~ 있으면 최고비드는 얼마니");
	      }
	      if(result==null){
	    	  System.out.println("여기니");
	         return "0";
	      }
	      else {
	    	  System.out.println("요기니?");
	         return result;
	      }
	   }
   
   public int bidderCancel(String seq, String buyer_id) throws Exception{
	      Connection con = DBUtils.getConnection();
	      String sql ="UPDATE BIDDER SET STATE='취소' WHERE BOARD_SEQ=? AND BUYER_ID=?";
	       PreparedStatement pstat = con.prepareStatement(sql);
	      
	       pstat.setString(1, seq);
	       pstat.setString(2, buyer_id);
	       
	       int result = pstat.executeUpdate();
	      
	       con.commit();
	       con.close();
	       pstat.close();
	       return result;
	   }
 
   public int successBid(String seq, String crrent) throws Exception{
	      Connection con = DBUtils.getConnection();
	      String sql = "update bidder set state = case when bidprice = ? then '낙찰' else '마감' end where board_seq=?";
	      PreparedStatement pstat = con.prepareStatement(sql);
	      
	      pstat.setString(1, seq);
	      pstat.setString(2, crrent);
	      
	      int result = pstat.executeUpdate();
	      
	      con.commit();
	      con.close();
	      pstat.close();
	      return result;
	   }
   
}