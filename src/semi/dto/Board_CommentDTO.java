package semi.dto;

public class Board_CommentDTO {
	  
	private String article_no;
	private String comment_seq;
	private String comment_contents;
	private String writer;
	private String writedate;
	private String ip;
	
	public Board_CommentDTO(String article_no, String comment_seq, String comment_contents, String writer,
			String writedate, String ip) {
		super();
		this.article_no = article_no;
		this.comment_seq = comment_seq;
		this.comment_contents = comment_contents;
		this.writer = writer;
		this.writedate = writedate;
		this.ip = ip;
	}
	
	public Board_CommentDTO() {
		
	}

	public String getArticle_no() {
		return article_no;
	}

	public void setArticle_no(String article_no) {
		this.article_no = article_no;
	}

	public String getComment_seq() {
		return comment_seq;
	}

	public void setComment_seq(String comment_seq) {
		this.comment_seq = comment_seq;
	}

	public String getComment_contents() {
		return comment_contents;
	}

	public void setComment_contents(String comment_contents) {
		this.comment_contents = comment_contents;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getWritedate() {
		return writedate;
	}

	public void setWritedate(String writedate) {
		this.writedate = writedate;
	}

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}
	
	
	
	
}
