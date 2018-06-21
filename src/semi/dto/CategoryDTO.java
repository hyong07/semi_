package semi.dto;

public class CategoryDTO {
	private String main_category;
	private String sub_category;
	
	public CategoryDTO() {
		
	}
	
	public CategoryDTO(String main_category, String sub_category) {
		super();
		this.main_category = main_category;
		this.sub_category = sub_category;
	}
	public String getMain_category() {
		return main_category;
	}
	public void setMain_category(String main_category) {
		this.main_category = main_category;
	}
	public String getSub_category() {
		return sub_category;
	}
	public void setSub_category(String sub_category) {
		this.sub_category = sub_category;
	}
	
	
}
