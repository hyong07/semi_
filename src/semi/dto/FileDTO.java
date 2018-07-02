package semi.dto;

public class FileDTO {
	private String file_seq;
	private String board_no;
	private String original_file_name;
	private String system_file_name;
	private String main_files;
	
	public FileDTO() {
		super();
	}
	  
	public FileDTO(String file_seq, String board_no, String original_file_name, String system_file_name, String main_files) {
		super();
		this.file_seq = file_seq;
		this.board_no = board_no;
		this.original_file_name = original_file_name;
		this.system_file_name = system_file_name;
		this.main_files = main_files;
	}

	public String getFile_seq() {
		return file_seq;
	}

	public void setFile_seq(String file_seq) {
		this.file_seq = file_seq;
	}

	public String getBoard_no() {
		return board_no;
	}

	public void setBoard_no(String board_no) {
		this.board_no = board_no;
	}

	public String getOriginal_file_name() {
		return original_file_name;
	}

	public void setOriginal_file_name(String original_file_name) {
		this.original_file_name = original_file_name;
	}

	public String getSystem_file_name() {
		return system_file_name;
	}

	public void setSystem_file_name(String system_file_name) {
		this.system_file_name = system_file_name;
	}
	
	public String getMain_files() {
		return main_files;
	}

	public void setMain_files(String main_files) {
		this.main_files = main_files;
	}
	
	
}
