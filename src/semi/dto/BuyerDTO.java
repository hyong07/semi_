package semi.dto;

public class BuyerDTO {
	private int buyer_seq;
	private String board_no;
	private String product_no;
	private String seller_id;
	private String buyer_id;
	private String buyer_contact;
	private String buy_price;
	private String buy_count;
	private String buy_state;
	private String buy_success;
	
	public BuyerDTO() {
		super();
	}
	
	public BuyerDTO(int buyer_seq, String board_no, String product_no, String seller_id, String buyer_id,
			String buyer_contact, String buy_price, String buy_count, String buy_state, String buy_success) {
		super();
		this.buyer_seq = buyer_seq;
		this.board_no = board_no;
		this.product_no = product_no;
		this.seller_id = seller_id;
		this.buyer_id = buyer_id;
		this.buyer_contact = buyer_contact;
		this.buy_price = buy_price;
		this.buy_count = buy_count;
		this.buy_state = buy_state;
		this.buy_success = buy_success;
	}
	public int getBuyer_seq() {
		return buyer_seq;
	}
	public void setBuyer_seq(int buyer_seq) {
		this.buyer_seq = buyer_seq;
	}
	public String getBoard_no() {
		return board_no;
	}
	public void setBoard_no(String board_no) {
		this.board_no = board_no;
	}
	public String getProduct_no() {
		return product_no;
	}
	public void setProduct_no(String product_no) {
		this.product_no = product_no;
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
	public String getBuyer_contact() {
		return buyer_contact;
	}
	public void setBuyer_contact(String buyer_contact) {
		this.buyer_contact = buyer_contact;
	}
	public String getBuy_price() {
		return buy_price;
	}
	public void setBuy_price(String buy_price) {
		this.buy_price = buy_price;
	}
	public String getBuy_count() {
		return buy_count;
	}
	public void setBuy_count(String buy_count) {
		this.buy_count = buy_count;
	}
	public String getBuy_state() {
		return buy_state;
	}
	public void setBuy_state(String buy_state) {
		this.buy_state = buy_state;
	}
	public String getBuy_success() {
		return buy_success;
	}
	public void setBuy_success(String buy_success) {
		this.buy_success = buy_success;
	}
	
	
	
}
