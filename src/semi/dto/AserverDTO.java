package semi.dto;

public class AserverDTO {
   private String board_seq;
   private String seller_id;
   private String buyer_id;
   private String hold_price;
   private String status;
   
   public AserverDTO(String board_seq, String seller_id, String buyer_id, String hold_price, String status) {
      super();
      this.board_seq = board_seq;
      this.seller_id = seller_id;
      this.buyer_id = buyer_id;
      this.hold_price = hold_price;
      this.status = status;
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

   public String getHold_price() {
      return hold_price;
   }

   public void setHold_price(String hold_price) {
      this.hold_price = hold_price;
   }

   public String getStatus() {
      return status;
   }

   public void setStatus(String status) {
      this.status = status;
   }
   
}