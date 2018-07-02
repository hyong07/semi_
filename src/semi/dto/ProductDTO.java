package semi.dto;

public class ProductDTO {
	private String board_no;
	private String product_seq;
	private String category;
	private String detail_category;

	private String sell_price;
	private String sell_count;
	private String main_product;
	private String p_name;


	
	
	public ProductDTO() {
		super();
	}
	   
	public ProductDTO(String board_no, String product_seq,String category, String detail_category, String sell_price,
			String sell_count, String main_product,String p_name) {
		super();
		this.board_no = board_no;
		this.product_seq = product_seq;
		this.category = category;
		this.detail_category = detail_category;
	
		this.sell_price = sell_price;
		this.sell_count = sell_count;
		this.main_product = main_product;
		this.p_name = p_name;
	}

	public String getBoard_no() {
		return board_no;
	}

	public void setBoard_no(String board_no) {
		this.board_no = board_no;
	}

	public String getProduct_seq() {
		return product_seq;
	}

	public void setProduct_seq(String product_seq) {
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

	public String getMain_product() {
		return main_product;
	}

	public void setMain_product(String main_product) {
		this.main_product = main_product;
	}

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	
}