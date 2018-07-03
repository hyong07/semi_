package semi.dto;

public class BoardDTO {
   private String board_seq;
   private String seller_id;
   private String title;
   private String contents;
   private String write_date;
   private String sell_type;
   private String sell_status;
   private String end_date;
   private String viewcount;
   private String bidunit;
   
   private String bidcnt;
   
   public BoardDTO() {
      super();
   }
   
   public BoardDTO(String board_seq, String seller_id, String title, String contents, String write_date, String sell_type,
         String sell_status, String end_date, String viewcount, String bidunit, String bidcnt) {
      super();
      this.board_seq = board_seq;
      this.seller_id = seller_id;
      this.title = title;
      this.contents = contents;
      this.write_date = write_date;
      this.sell_type = sell_type;
      this.sell_status = sell_status;
      this.end_date = end_date;
      this.viewcount = viewcount;
      this.bidunit = bidunit;
      this.bidcnt = bidcnt;
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
   public String getTitle() {
      return title;
   }
   public void setTitle(String title) {
      this.title = title;
   }
   public String getContents() {
      return contents;
   }
   public void setContents(String contents) {
      this.contents = contents;
   }
   public String getWrite_date() {
      return write_date;
   }
   public void setWrite_date(String write_date) {
      this.write_date = write_date;
   }
   public String getSell_type() {
      return sell_type;
   }
   public void setSell_type(String sell_type) {
      this.sell_type = sell_type;
   }
   public String getSell_status() {
      return sell_status;
   }
   public void setSell_status(String sell_status) {
      this.sell_status = sell_status;
   }
   public String getEnd_date() {
      return end_date;
   }
   public void setEnd_date(String end_date) {
      this.end_date = end_date;
   }
   
   public String getViewcount() {
      return viewcount;
   }
   public void setViewcount(String viewcount) {
      this.viewcount = viewcount;
   }

   public String getBidunit() {
      return bidunit;
   }

   public void setBidunit(String bidunit) {
      this.bidunit = bidunit;
   }

   public String getBidcnt() {
      return bidcnt;
   }

   public void setBidcnt(String bidcnt) {
      this.bidcnt = bidcnt;
   }

   
   
}