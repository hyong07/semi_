package semi.dto;

public class BidderDTO {
   private String bidder_seq;
   private String board_seq;
   private String seller_id;
   private String buyer_id;
   private String bidder_id;
   private String bidprice;
   private String biddate;
   private String state;
   
   public BidderDTO() {}
   
   public BidderDTO(String bidder_seq, String board_seq, String seller_id, String buyer_id, String bidder_id,
         String bidprice, String biddate, String state) {
      super();
      this.bidder_seq = bidder_seq;
      this.board_seq = board_seq;
      this.seller_id = seller_id;
      this.buyer_id = buyer_id;
      this.bidder_id = bidder_id;
      this.bidprice = bidprice;
      this.biddate = biddate;
      this.state = state;
   }
   
   public String getBidder_seq() {
      return bidder_seq;
   }
   public void setBidder_seq(String bidder_seq) {
      this.bidder_seq = bidder_seq;
   }
   public String getBoard_seq() {
      return board_seq;
   }
   public void setBoard_seq(String board_seq) {
      this.board_seq = board_seq;
   }
   public String getSeller_id() {
      return seller_id;
   }
   public void setSeller_id(String seller_id) {
      this.seller_id = seller_id;
   }
   public String getBuyer_id() {
      return buyer_id;
   }
   public void setBuyer_id(String buyer_id) {
      this.buyer_id = buyer_id;
   }
   public String getBidder_id() {
      return bidder_id;
   }
   public void setBidder_id(String bidder_id) {
      this.bidder_id = bidder_id;
   }
   public String getBidprice() {
      return bidprice;
   }
   public void setBidprice(String bidprice) {
      this.bidprice = bidprice;
   }
   public String getBiddate() {
      return biddate;
   }
   public void setBiddate(String biddate) {
      this.biddate = biddate;
   }
   public String getState() {
      return state;
   }
   public void setState(String state) {
      this.state = state;
   }   
}
