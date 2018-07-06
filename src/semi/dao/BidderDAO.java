package semi.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import semi.dbutils.DBUtils;
import semi.dto.BidderDTO;

public class BidderDAO {
   
   DBUtils DBUtils= new DBUtils();
    
   public List<BidderDTO> bidderSelect(String bodder_seq) throws Exception{
      Connection con = DBUtils.getConnection();
      String sql = "SELECT * FroM BIDDER WHERE Board_SEQ=?";
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
         
         BidderDTO bidderdto = new BidderDTO(bidder_seq, board_seq, seller_id, buyer_id,  bidprice, biddate, state);
         list.add(bidderdto);
      }
      return list;
      
   }
  
}