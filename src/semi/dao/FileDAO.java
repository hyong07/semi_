package semi.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import semi.dbutils.DBUtils;
import semi.dto.FileDTO;
import semi.dto.ProductDTO;

public class FileDAO {

	public ArrayList<FileDTO> fileForBoard(String category, String category2) throws Exception{
		Connection con = DBUtils.getConnection();
		System.out.println(category2);
		
		String sql = null;
		PreparedStatement pstat = null;
		System.out.println("file 요기!!");
		if(!(category2==null)) {
			System.out.println("file 요기");
			
			sql =
					"select f.* from board b, product p, files f where (p.category =?) and (p.DETAIL_CATEGORY=?) and (p.main_product='y') and  (f.main_files='y') and (p.BOARD_NO = b.BOARD_SEQ) and (f.BOARD_NO=b.board_seq)";
			
			pstat = con.prepareStatement(sql);
			pstat.setString(1, category);
			pstat.setString(2, category2);
			
		}

		else {
			System.out.println("file 요기??");
			sql =
					"select f.* from board b, product p, files f where (p.category =?) and (p.main_product='y') and  (f.main_files='y') and (p.BOARD_NO = b.BOARD_SEQ) and (f.BOARD_NO=b.board_seq)";
			pstat = con.prepareStatement(sql);
			pstat.setString(1, category);
		}

		ResultSet rs = pstat.executeQuery();

		ArrayList<FileDTO> list = new ArrayList<>();

		while(rs.next()) {		
			String file_seq = rs.getString(1);
			String board_no = rs.getString(2);
			String original_file_name = rs.getString(3);
			String system_file_name = rs.getString(4);
			String main_files = rs.getString(5);
			FileDTO filedto = new FileDTO(file_seq,board_no,original_file_name,system_file_name,main_files);
			list.add(filedto);

		}
		System.out.println(list.size());

		return list;
	}
	
	   public FileDTO mainFile(String seq) throws Exception{
		   Connection con = DBUtils.getConnection();
		   String sql = "select * from files where board_no=? and main_files = 'y'";
		   PreparedStatement pstat = con.prepareStatement(sql);
		   pstat.setString(1, seq);
		   ResultSet rs = pstat.executeQuery();
		   FileDTO dto = new FileDTO();
		   
		   while(rs.next()) {
			   
			   dto.setFile_seq(rs.getString(1));
			   dto.setBoard_no(seq);
			   dto.setOriginal_file_name(rs.getString(3));
			   dto.setSystem_file_name(rs.getString(4));
			   dto.setMain_files(rs.getString(5));
	
		   }
		  
		   return dto;
	   }

}
