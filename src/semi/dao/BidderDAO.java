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
      String sql = "SELECT * FORM BIDDER WHERE BODDER_SEQ=?";
      PreparedStatement pstat = con.prepareStatement(sql);
      ResultSet rs = pstat.executeQuery();
      
      List<BidderDTO> list = new ArrayList<>();
      
      while(rs.next()) {
         String bidder_seq = rs.getString(1);
         String board_seq = rs.getString(2);
         String seller_id = rs.getString(3);
         String buyer_id = rs.getString(4);
         String bidder_id = rs.getString(5);
         String bidprice = rs.getString(6);
         String biddate = rs.getString(7);
         String state = rs.getString(8);
         
         BidderDTO bidderdto = new BidderDTO(bidder_seq, board_seq, seller_id, buyer_id, bidder_id, bidprice, biddate, state);
         list.add(bidderdto);
      }
      return list;
   }
   
}