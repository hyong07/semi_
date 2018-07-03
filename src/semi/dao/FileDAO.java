package semi.dao;

import java.io.File;
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
      con.commit();
		pstat.close();
		con.close();
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
         con.commit();
 		pstat.close();
 		con.close();
         return dto;
      }
      
      
      public List<FileDTO> searchFileName(String path, String board_no) throws Exception{
         List<FileDTO> list = new ArrayList<>();
         File file = new File(path);
         File[] fileList = file.listFiles();      
         for(File tmp : fileList) {
            FileDTO dtoTemp = new FileDTO();
         
            dtoTemp.setBoard_no(board_no);
            dtoTemp.setOriginal_file_name(tmp.getName());
            dtoTemp.setSystem_file_name(tmp.getName());
            list.add(dtoTemp);
         }
         
         return list;      
      }
      
      public int insertFile(List<FileDTO> dto) throws Exception{
         Connection con = DBUtils.getConnection();
         int result = 0;
         PreparedStatement pstat=null;
         for(int i =0; i<dto.size(); i++) {
            String sql = "insert into files values(file_seq.nextval,?,?,?,default)";
           pstat = con.prepareStatement(sql);
            pstat.setString(1, dto.get(i).getBoard_no());
            pstat.setString(2, dto.get(i).getOriginal_file_name());
            pstat.setString(3, dto.get(i).getSystem_file_name());
            result += pstat.executeUpdate();         
         }
         con.commit();
 		pstat.close();
 		con.close();
         return result;
      }
      
      public int updateFile(String board_no, String mainfilename) throws Exception{
         System.out.println("업데이트");
         
         Connection con = DBUtils.getConnection();
         String sql = "update files set main_files = 'y' where board_no = ? and original_file_name=?";
          PreparedStatement pstat = con.prepareStatement(sql);
          pstat.setString(1, board_no);
          pstat.setString(2, mainfilename);
         
          int result = pstat.executeUpdate();
         System.out.println(result); 
         con.commit();
 		pstat.close();
 		con.close();
          return result;
      }
      
      
        public List<FileDTO> selectFile(String seq) throws Exception{
            Connection con = DBUtils.getConnection();
            String sql = "select * from files where board_no=?";
            PreparedStatement pstat = con.prepareStatement(sql);
            pstat.setString(1, seq);
            ResultSet rs = pstat.executeQuery();
            
            List<FileDTO> list = new ArrayList<>();
            while(rs.next()) {
               FileDTO dto = new FileDTO();
               dto.setFile_seq(rs.getString(1));
               dto.setBoard_no(seq);
               dto.setOriginal_file_name(rs.getString(3));
               dto.setSystem_file_name(rs.getString(4));
               dto.setMain_files(rs.getString(5));
               
               list.add(dto);
      
            }
            con.commit();
    		pstat.close();
    		con.close();
            return list;
         }
      

}