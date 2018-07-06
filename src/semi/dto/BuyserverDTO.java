package semi.dto;

public class BuyserverDTO {
   private String board_no;
   private String seller_id;
   private String buyer_id;
   private String buy_price;
   private String status;
   
   public BuyserverDTO() {
      super();
   }
   
   public BuyserverDTO(String board_no, String seller_id, String buyer_id, String buy_price, String status) {
      super();
      this.board_no = board_no;
      this.seller_id = seller_id;
      this.buyer_id = buyer_id;
      this.buy_price = buy_price;
      this.status = status;
   }
   public String getBoard_no() {
      return board_no;
   }
   public void setBoard_no(String board_no) {
      this.board_no = board_no;
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
   public String getBuy_price() {
      return buy_price;
   }
   public void setBuy_price(String buy_price) {
      this.buy_price = buy_price;
   }
   public String getStatus() {
      return status;
   }
   public void setStatus(String status) {
      this.status = status;
   }
   
   
   
}