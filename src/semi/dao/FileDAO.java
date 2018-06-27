package semi.dao;

import java.io.File;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;

import semi.dbutils.DBUtils;
import semi.dto.FileDTO;

public class FileDAO {
	public List<FileDTO> searchFileName(String path, int board_no) throws Exception{
		List<FileDTO> dto = new ArrayList<>();
		File file = new File(path);
		File[] fileList = file.listFiles();		
		for(File tmp : fileList) {
			FileDTO dtoTemp = new FileDTO();
			dtoTemp.setBoard_no(board_no);
			dtoTemp.setOriginal_file_name(tmp.getName());
			dtoTemp.setSystem_file_name(tmp.getName());
			dto.add(dtoTemp);
		}
		
		return dto;		
	}
	
	public int insertFile(List<FileDTO> dto) throws Exception{
		Connection con = DBUtils.getConnection();
		int result = 0;
		for(int i =0; i<dto.size(); i++) {
			String sql = "insert into files values(file_seq.nextval,?,?,?,'')";
			PreparedStatement pstat = con.prepareStatement(sql);
			pstat.setInt(1, dto.get(i).getBoard_no());
			pstat.setString(2, dto.get(i).getOriginal_file_name());
			pstat.setString(3, dto.get(i).getSystem_file_name());
			result += pstat.executeUpdate();			
		}
		return result;
	}
	
	
}
