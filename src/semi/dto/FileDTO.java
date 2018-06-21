package semi.dto;

public class FileDTO {
	private int file_seq;
	private int board_no;
	private String original_file_name;
	private String system_file_name;
	
	public FileDTO() {
		super();
	}
	
	public FileDTO(int file_seq, int board_no, String original_file_name, String system_file_name) {
		super();
		this.file_seq = file_seq;
		this.board_no = board_no;
		this.original_file_name = original_file_name;
		this.system_file_name = system_file_name;
	}

	public int getFile_seq() {
		return file_seq;
	}

	public void setFile_seq(int file_seq) {
		this.file_seq = file_seq;
	}

	public int getBoard_no() {
		return board_no;
	}

	public void setBoard_no(int board_no) {
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
	
	
}
