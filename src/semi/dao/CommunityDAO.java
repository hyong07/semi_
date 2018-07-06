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

      int recordTotalCount = rs.getInt("totalcount");//��ü ��(���ڵ�) �� ������ �����ϴ� ����
      int recordCountPage = 15; //������ �ϳ��� ������ �Խñ� ��
      int naviCountPerPage = 5; // ������ �ϳ��� ���̰����Ͱ� ��� ���̴���
      int pageTotalCount = 0; //��ü�� ���������� ���� �� ������

      if(recordTotalCount % recordCountPage > 0) { //��Ȯ�� 10���� ������ �������� ����
         pageTotalCount = recordTotalCount / recordCountPage +1;
      }else {
         pageTotalCount = recordTotalCount / recordCountPage;
      }
      //--------------------------------------------------------------------------
      //���� ������
      //int currentPage = 3;
      
      // ���� �������� ���������� �����ϴ� �ڵ�
      if(currentPage < 1) {
         currentPage = 1;
      }else if(currentPage > pageTotalCount) {
         currentPage = pageTotalCount;
      }
      //--------------------------------------------------------------------------   

      int startNavi = (currentPage - 1) / naviCountPerPage * naviCountPerPage + 1; // �׺������ ���� ��
      int endNavi = startNavi + (naviCountPerPage - 1); // �׺������ �� ��

      if(endNavi > pageTotalCount) {
         endNavi =pageTotalCount;
      }
      
      //      System.out.println("���������� :" + currentPage);
      //      System.out.println("�׺������ ���� :" + startNavi);
      //      System.out.println("�׺�����ͳ� :" + endNavi);

      //prev , next boolean���� ����� 
      boolean needPrev = true;
      boolean needNext = true;

      if(startNavi == 1) {
         needPrev = false;
      }

      if(endNavi == pageTotalCount) {
         needNext = false;
      }
   

      StringBuilder sb = new StringBuilder(); //String ���� �����ϴ� ���

      if(needPrev) {
         sb.append("<a class='btn btn-outline-primary mr-3' href='CommunityNavbar.do?currentPage="+(startNavi-1)+"'> <i class=\"fa fa-fw fa-arrow-left fa-1x text-primary\"></i> </a> ");
      }


      for(int i = startNavi; i <= endNavi; i++) { //���� �׺������ ����� for��

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