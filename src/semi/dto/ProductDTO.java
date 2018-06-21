package semi.dto;

public class ProductDTO {
	private int board_no;
	private int product_seq;
	private String category;
	private String detail_category;
	private String sell_price;
	private String sell_count;
	
	public ProductDTO() {
		super();
	}
	
	public ProductDTO(int board_no, int product_seq, String category, String detail_category, String sell_price,
			String sell_count) {
		super();
		this.board_no = board_no;
		this.product_seq = product_seq;
		this.category = category;
		this.detail_category = detail_category;
		this.sell_price = sell_price;
		this.sell_count = sell_count;
	}
	public int getBoard_no() {
		return board_no;
	}
	public void setBoard_no(int board_no) {
		this.board_no = board_no;
	}
	public int getProduct_seq() {
		return product_seq;
	}
	public void setProduct_seq(int product_seq) {
		this.product_seq = product_seq;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getDetail_category() {
		return detail_category;
	}
	public void setDetail_category(String detail_category) {
		this.detail_category = detail_category;
	}
	public String getSell_price() {
		return sell_price;
	}
	public void setSell_price(String sell_price) {
		this.sell_price = sell_price;
	}
	public String getSell_count() {
		return sell_count;
	}
	public void setSell_count(String sell_count) {
		this.sell_count = sell_count;
	}
	
	
	
}
