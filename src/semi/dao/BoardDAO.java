package semi.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import semi.dbutils.DBUtils;
import semi.dto.BoardDTO;

public class BoardDAO { 

  
    public ArrayList<BoardDTO> boardForBoard(String category, String category2) throws Exception{
      Connection con = DBUtils.getConnection();
      String sql = null;
      PreparedStatement pstat = null;

      if(!(category2==null)) {

         sql =
               "select b.* from board b, product p, files f where (p.category =?) and (p.DETAIL_CATEGORY=?) and (p.BOARD_NO = b.BOARD_SEQ) and (f.BOARD_NO=b.board_seq) order by b.board_seq desc";

         pstat = con.prepareStatement(sql);
         pstat.setString(1, category);
         pstat.setString(2, category2);
      }

      else {

         sql =
               "select b.* from board b, product p, files f where (p.category =?) and (p.BOARD_NO = b.BOARD_SEQ) and (f.BOARD_NO=b.board_seq) order by b.board_seq desc";
         pstat = con.prepareStatement(sql);
         pstat.setString(1, category);

      }

      ResultSet rs = pstat.executeQuery();
      ArrayList<BoardDTO> list = new ArrayList<>();

      while(rs.next()) {      
         String board_seq = rs.getString(1);
         String seller_id = rs.getString(2);
         String title = rs.getString(3);
         String contents = rs.getString(4);
         String write_date = rs.getString(5);
         String sell_type = rs.getString(6);
         String sell_status = rs.getString(7);
         String end_date = rs.getString(8);
         String viewcount = rs.getString(9);

         BoardDTO boarddto = new BoardDTO(board_seq, seller_id, title, contents, write_date, sell_type,sell_status ,end_date,viewcount,"","");
         list.add(boarddto);

      }
      return list;
   }

   public String checkboardNo() throws Exception{
      Connection con = DBUtils.getConnection();
      String sql = "select board_seq.nextval from dual";
      PreparedStatement pstat = con.prepareStatement(sql);
      ResultSet rs = pstat.executeQuery();
      String result = "";
      while(rs.next()) {
         result = rs.getString(1);
      }         
      return result;
   }

   public int addBoard(int board_no, String id, String title, String contents, String sell_type, String end_date) throws Exception{
      Connection con = DBUtils.getConnection();
      String sql = "insert into board values(?,?,?,?,sysdate,?,'p',?)";
      PreparedStatement pstat = con.prepareStatement(sql);
      pstat.setInt(1, board_no);
      pstat.setString(2, id);
      pstat.setString(3, title);
      pstat.setString(4, contents);
      pstat.setString(5, sell_type);
      pstat.setString(6, end_date);
      int result = pstat.executeUpdate();
      pstat.close();
      con.close();      
      return result;
   }

   public BoardDTO selectOneBoard(String seq) throws Exception{

      Connection con = DBUtils.getConnection();
      String sql = "select * from board where board_seq=?";
      PreparedStatement pstat = con.prepareStatement(sql);
      pstat.setString(1, seq);

      ResultSet rs = pstat.executeQuery();
      BoardDTO dto = new BoardDTO();

      while(rs.next()) {


         dto.setBoard_seq(seq);
         dto.setSeller_id(rs.getString(2));
         dto.setTitle(rs.getString(3));
         dto.setContents(rs.getString(4));
         dto.setWrite_date(rs.getString(5));
         dto.setSell_type(rs.getString(6));
         dto.setSell_status(rs.getString(7));
         dto.setEnd_date(rs.getString(8));
         dto.setViewcount(rs.getString(9));

      }

      return dto;
   }

   public int addBoard(BoardDTO dto) throws Exception{
      Connection con = DBUtils.getConnection();
      String sql = "insert into board values(?,?,?,?,sysdate,?,default,sysdate+?,default,'','')";
      PreparedStatement pstat = con.prepareStatement(sql);
      System.out.println(dto.getEnd_date() + " : ");
      pstat.setString(1, dto.getBoard_seq());
      pstat.setString(2, dto.getSeller_id());
      pstat.setString(3, dto.getTitle());
      pstat.setString(4, dto.getContents());
      pstat.setString(5, dto.getSell_type());      
      pstat.setString(6, dto.getEnd_date());
      int result = pstat.executeUpdate();
      pstat.close();
      con.close();   
      System.out.println("결과는요~" + result);
      return result;

   }

   public String getEndHour(String seq) throws Exception {
      Connection con = DBUtils.getConnection();
      String sql = "select (end_date-write_date || 'd ' ) || (24-to_char(sysdate,'HH') ||'h') from board where board_seq = ?";
      PreparedStatement pstat = con.prepareStatement(sql);
      pstat.setString(1, seq);
      ResultSet rs = pstat.executeQuery();
      String result = null;

      if(rs.next()) {
         result= rs.getString(1);
      }

      return result;
   }
   

}