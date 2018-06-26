package semi.dto;

public class ProductDTO {
	private String board_no;
	private String category;
	private String detail_category;
	private String p_name;
	private String sell_price;
	private String sell_count;
	
	public ProductDTO() {
		super();
	}
	
	public ProductDTO(String board_no, String category, String detail_category, String p_name, String sell_price,
			String sell_count) {
		super();
		this.board_no = board_no;
		this.category = category;
		this.detail_category = detail_category;
		this.p_name = p_name;
		this.sell_price = sell_price;
		this.sell_count = sell_count;
	}
	public String getBoard_no() {
		return board_no;
	}
	public void setBoard_no(String board_no) {
		this.board_no = board_no;
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
	
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
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
