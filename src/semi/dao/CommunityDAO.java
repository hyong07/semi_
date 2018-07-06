package semi.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import semi.dbutils.DBUtils;
import semi.dto.CommunityDTO;


public class CommunityDAO {

   public List<CommunityDTO> communityoutput() throws Exception{

      Connection con = DBUtils.getConnection();
      String sql = "select * from Community order by seq desc"; 

      PreparedStatement pstat = con.prepareStatement(sql);
      

      ResultSet rs = pstat.executeQuery();

      List<CommunityDTO> result = new ArrayList<>();
      System.out.println(1);
      while(rs.next()) {
         System.out.println(2);
         CommunityDTO dto = new CommunityDTO();
         
         dto.setSeq(rs.getInt(1));
         dto.setTitle(rs.getString(2));
         dto.setContents(rs.getString(3));
         dto.setWriter(rs.getString(4));
         dto.setWritedate(rs.getString(5));
         dto.setViewcount(rs.getString(6));
         dto.setIp(rs.getString(7));
         System.out.println(dto.getSeq());
         System.out.println(dto.getTitle());
         System.out.println(dto.getIp());
         result.add(dto);
      }

      con.commit();
      pstat.close();   
      con.close();
      return result;
   }

   
   public int communityinsert(String title, String contents, String writer,  String ip) throws Exception{

      Connection con = DBUtils.getConnection();
      String sql = "insert into Community values(Community_seq.nextval,?,?,?,sysdate,default,?)";

      PreparedStatement  pstat = con.prepareStatement(sql);
      
      
      pstat.setString(1, title);
      pstat.setString(2, contents);
      pstat.setString(3, writer);   
      pstat.setString(4, ip );


      int result =  pstat.executeUpdate();

      con.commit();   
      pstat.close();   
      con.close();

      return result;
   }
   
   public CommunityDTO articleView(int seq) throws Exception{

      CommunityDTO dto = new CommunityDTO();

      Connection con = DBUtils.getConnection();
      String sql = "select * from Community where seq= ?";      
      PreparedStatement pstat = con.prepareStatement(sql);   
      pstat.setInt(1, seq);

      ResultSet rs = pstat.executeQuery();   

      while(rs.next()) {
         dto.setSeq(rs.getInt("seq"));
         dto.setTitle(rs.getString("title"));
         dto.setContents(rs.getString("contents"));
         dto.setWriter(rs.getString("writer"));
         dto.setWritedate(rs.getString("writedate"));
         dto.setViewcount(rs.getString("viewcount"));
         dto.setIp(rs.getString("ip"));

      }   


      con.commit();
      pstat.close();   
      con.close();

      return dto;

   }
   
   public int communitydelete(int seq) throws Exception{
      Connection con = DBUtils.getConnection();

      String sql = "delete from Community where seq = ?";

      PreparedStatement pstat = con.prepareStatement(sql);

      pstat.setInt(1, seq);



      int result = pstat.executeUpdate();
      con.commit();
      pstat.close();
      con.close();

      return result;
   }

   public int communitymodify(CommunityDTO dto, int seq) throws Exception{

      Connection con = DBUtils.getConnection();
      String sql = "update Community set title = ?, contents = ? where seq = ?";      
      PreparedStatement pstat = con.prepareStatement(sql);

      pstat.setString(1, dto.getTitle());
      pstat.setString(2, dto.getContents());
      pstat.setInt(3, seq);

      int result =  pstat.executeUpdate();


      con.commit();
      pstat.close();   
      con.close();

      return result;
   }
   
   
   public void countData(int seq, int count) throws Exception{

      Connection con = DBUtils.getConnection();
      String sql = "update Community set viewcount= ? where seq = ?";      
      PreparedStatement pstat = con.prepareStatement(sql);

      pstat.setInt(1, ++count);
      pstat.setInt(2, seq);


      pstat.executeUpdate();


      con.commit();
      pstat.close();   
      con.close();

   }
   
   public String getPageNavi(int currentPage) throws Exception{


      Connection con = DBUtils.getConnection();
      String sql = "select count(*) totalcount from Community";
      PreparedStatement pstat = con.prepareStatement(sql);
      ResultSet rs = pstat.executeQuery();
      rs.next();

      int recordTotalCount = rs.getInt("totalcount");//전체 글(레코드) 의 개수를 저장하는 변수
      int recordCountPage = 15; //페이지 하나에 나오는 게시글 수
      int naviCountPerPage = 5; // 페이지 하나에 네이게이터가 몇개로 보이는지
      int pageTotalCount = 0; //전체가 몇페이지로 구성 될 것인지

      if(recordTotalCount % recordCountPage > 0) { //정확히 10으로 나누어 떨어지지 않음
         pageTotalCount = recordTotalCount / recordCountPage +1;
      }else {
         pageTotalCount = recordTotalCount / recordCountPage;
      }
      //--------------------------------------------------------------------------
      //현재 페이지
      //int currentPage = 3;
      
      // 현재 페이지가 비정상인지 검증하는 코드
      if(currentPage < 1) {
         currentPage = 1;
      }else if(currentPage > pageTotalCount) {
         currentPage = pageTotalCount;
      }
      //--------------------------------------------------------------------------   

      int startNavi = (currentPage - 1) / naviCountPerPage * naviCountPerPage + 1; // 네비게이터 시작 값
      int endNavi = startNavi + (naviCountPerPage - 1); // 네비게이터 끝 값

      if(endNavi > pageTotalCount) {
         endNavi =pageTotalCount;
      }
      
      //      System.out.println("현재페이지 :" + currentPage);
      //      System.out.println("네비게이터 시작 :" + startNavi);
      //      System.out.println("네비게이터끝 :" + endNavi);

      //prev , next boolean으로 만들기 
      boolean needPrev = true;
      boolean needNext = true;

      if(startNavi == 1) {
         needPrev = false;
      }

      if(endNavi == pageTotalCount) {
         needNext = false;
      }
   

      StringBuilder sb = new StringBuilder(); //String 들을 나열하는 기능

      if(needPrev) {
         sb.append("<a class='btn btn-outline-primary mr-3' href='CommunityNavbar.do?currentPage="+(startNavi-1)+"'> <i class=\"fa fa-fw fa-arrow-left fa-1x text-primary\"></i> </a> ");
      }


      for(int i = startNavi; i <= endNavi; i++) { //숫자 네비게이터 만드는 for문

         if(currentPage == i) {
            sb.append("<a class='btn btn-outline-primary mr-3' href='CommunityNavbar.do?currentPage=" + i + "'><b>" + i +   "</b></a>");

         }

         else {
            sb.append("<a class='btn btn-outline-primary mr-3' href='CommunityNavbar.do?currentPage="+ i + "'>" + i + "</a>");
         }


      }

      if(needNext) {
         sb.append("<a  class='btn btn-outline-primary mr-3' href='CommunityNavbar.do?currentPage="+(endNavi+1)+"'> <i class=\"fa fa-fw fa-arrow-right fa-1x text-primary\"></i> </a> ");
      }
      
      //System.out.println(sb.toString());

      
        con.commit();
        pstat.close();
        con.close();
            
      return sb.toString();
   }
   
   
   
   public List<CommunityDTO> selectBoardList(int startNum,int endNum,String search) throws Exception{
         
      Connection con = DBUtils.getConnection();
         String sql = "select * from (select Community.*, row_number() over(order by writedate desc) as num from Community)\r\n" + 
               "where (num between ? and ?) and title like ?";
         PreparedStatement pstat = con.prepareStatement(sql);
         pstat.setInt(1, startNum);
         pstat.setInt(2, endNum);
         pstat.setString(3, "%"+search+"%");
         
         ResultSet rs = pstat.executeQuery();
         
         List<CommunityDTO> result = new ArrayList<>();
         
         while(rs.next()) {
            CommunityDTO dto = new CommunityDTO();
            dto.setSeq(rs.getInt(1));
            dto.setTitle(rs.getString(2));
            dto.setContents(rs.getString(3));
            dto.setWriter(rs.getString(4));
            dto.setWritedate(rs.getString(5));
            dto.setViewcount(rs.getString(6));
            dto.setIp(rs.getString(7));
            result.add(dto);
         }
         
         con.commit();
         pstat.close();
         con.close();
         
         return result;
      
      }
      
   public List<CommunityDTO> selectBoardList(int startNum,int endNum) throws Exception{
         
      Connection con = DBUtils.getConnection();
         String sql = "select * from (select Community.*, row_number() over(order by writedate desc) as num from Community)\r\n" + 
               "where num between ? and ?";
         PreparedStatement pstat = con.prepareStatement(sql);
         pstat.setInt(1, startNum);
         pstat.setInt(2, endNum);
         
         ResultSet rs = pstat.executeQuery();
         
         List<CommunityDTO> result = new ArrayList<>();
         
         while(rs.next()) {
           CommunityDTO dto = new CommunityDTO();
            dto.setSeq(rs.getInt(1));
            dto.setTitle(rs.getString(2));
            dto.setContents(rs.getString(3));
            dto.setWriter(rs.getString(4));
            dto.setWritedate(rs.getString(5));
            dto.setViewcount(rs.getString(6));
            dto.setIp(rs.getString(7));
            result.add(dto);
         }
         
         con.commit();
         pstat.close();
         con.close();
         
         return result;
      
      }
   
}