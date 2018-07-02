package semi.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import semi.dbutils.DBUtils;
import semi.dto.BoardDTO;
import semi.dto.ProductDTO;

public class ProductDAO {
   public ArrayList<String> priceForBoard(String category, String category2) throws Exception{
      Connection con = DBUtils.getConnection();
      
      String sql = null;
      PreparedStatement pstat = null;

      if(!(category2==null)) {
         sql =
               "select p.sell_price from board b, product p, files f where (p.category =?) and (p.DETAIL_CATEGORY=?) and (p.main_product='y') and  (f.main_files='y') and (p.BOARD_NO = b.BOARD_SEQ) and (f.BOARD_NO=b.board_seq)";
         
         pstat = con.prepareStatement(sql);
         pstat.setString(1, category);
         pstat.setString(2, category2);
      }

      else {
         
         sql =
               "select p.sell_price from board b, product p, files f where (p.category =?) and (p.main_product='y') and  (f.main_files='y') and (p.BOARD_NO = b.BOARD_SEQ) and (f.BOARD_NO=b.board_seq)";
         pstat = con.prepareStatement(sql);
         pstat.setString(1, category);
         
      }
      ResultSet rs = pstat.executeQuery();
      ArrayList<String> pricelist = new ArrayList<>();

      while(rs.next()) {
         String sell_price = rs.getString(1);
         pricelist.add(sell_price);
      }
      return pricelist;
   }
     
   public int addProduct(String sell_type, ProductDTO dto) throws Exception{
      System.out.println("여기로오나요? " + sell_type);
      Connection con = DBUtils.getConnection();
      String sql = null;
      PreparedStatement pstat=null;
   if(sell_type.equals("a")) { 
      System.out.println("들어오나요?");
      System.out.println(dto.getBoard_no() + " : "+ dto.getCategory() + " : " + dto.getDetail_category() + " : " + dto.getSell_price() + " :" + dto.getSell_count() + " : " + dto.getP_name());;

      sql = "insert into product values(?,product_seq.nextval,?,?,?,default,'y',?)";
      pstat = con.prepareStatement(sql);
      pstat.setString(1, dto.getBoard_no());
      pstat.setString(2, dto.getCategory());
      pstat.setString(3, dto.getDetail_category());
      pstat.setString(4, dto.getSell_price());
      pstat.setString(5, dto.getP_name());
      
   }
   
    else if(sell_type.equals("s")) {
         sql = "insert into product values(?,product_seq.nextval,?,?,?,?,default,?)";
         pstat = con.prepareStatement(sql);
         pstat.setInt(1, Integer.parseInt(dto.getBoard_no()));
         pstat.setString(2, dto.getCategory());
         pstat.setString(3, dto.getDetail_category());
         pstat.setString(4, dto.getSell_price());
         pstat.setString(5, dto.getSell_count());      
         pstat.setString(6, dto.getP_name());         
      }
   System.out.println(dto.getBoard_no());
   System.out.println(dto.getCategory());
   System.out.println(dto.getDetail_category());
   System.out.println(dto.getSell_price());
   System.out.println(dto.getSell_count());
   System.out.println(dto.getMain_product());
   System.out.println(dto.getP_name());   
   System.out.println("물품인서트 왜안들어가");
   int result = pstat.executeUpdate();
   System.out.println("물품인서트 돌아감?");
   con.commit();
    pstat.close();
    con.close();
    
    return result;
    
   }
   
   public int updateMainP(String board_no, String main_productName) throws Exception {
	   Connection con = DBUtils.getConnection();
			String sql = "update product set main_product='y' where board_no = ? and p_name = ?";
			PreparedStatement pstat = con.prepareStatement(sql);
			pstat.setString(1, board_no);
   			pstat.setString(2, main_productName);
   			int result = pstat.executeUpdate();   			
   			con.commit();
   			con.close();
   			pstat.close();
   			
   			return result;
	   
   }
   
   public int resetMainP(String board_no) throws Exception{
	   Connection con = DBUtils.getConnection();
	   String sql = "update product set main_product='n' where board_no = ?";
	   PreparedStatement pstat = con.prepareStatement(sql);
	   pstat.setString(1, board_no);
	   int result = pstat.executeUpdate();
	   con.commit();
	   con.close();
	   pstat.close();
	   
	   return result;
   }
   
//   public String checkSellType(String board_no) throws Exception{
//	   Connection con = DBUtils.getConnection();
//	   String sql = "select "
//   }
   
   		public int deleteProduct(String board_no, String product_name) throws Exception{
   			Connection con = DBUtils.getConnection();
   			String sql = "delete from product where board_no=? and p_name=?";
   			PreparedStatement pstat = con.prepareStatement(sql);
   			pstat.setString(1, board_no);
   			pstat.setString(2, product_name);
   			int result = pstat.executeUpdate();   			
   			con.commit();
   			con.close();
   			pstat.close();
   			
   			return result;
   		}
      
      public ProductDTO mainProduct(String seq) throws Exception{
         Connection con = DBUtils.getConnection();
         String sql = "select * from product where board_no=?";
         PreparedStatement pstat = con.prepareStatement(sql);
         pstat.setString(1, seq);

         ResultSet rs = pstat.executeQuery();
         ProductDTO dto = new ProductDTO();
         
         while(rs.next()) {
           
            dto.setBoard_no(seq);
            dto.setProduct_seq(rs.getString(2));
            dto.setCategory(rs.getString(3));
            dto.setDetail_category(rs.getString(4));
            dto.setSell_price(rs.getString(5));
            dto.setSell_count(rs.getString(6));
            dto.setMain_product(rs.getString(7));
            dto.setP_name(rs.getString(8));

         }
      
         return dto;
      }
      
      public List<ProductDTO> selectProduct(String seq) throws Exception{
         Connection con = DBUtils.getConnection();
         String sql = "select * from product where board_no=?";
         PreparedStatement pstat = con.prepareStatement(sql);
         pstat.setString(1, seq);

         ResultSet rs = pstat.executeQuery();
      List<ProductDTO> list = new ArrayList<>();
         
         while(rs.next()) {
            ProductDTO dto = new ProductDTO();
            dto.setBoard_no(seq);
            dto.setProduct_seq(rs.getString(2));
            dto.setCategory(rs.getString(3));
            dto.setDetail_category(rs.getString(4));
            dto.setSell_price(rs.getString(5));
            dto.setSell_count(rs.getString(6));
            dto.setMain_product(rs.getString(7));
            dto.setP_name(rs.getString(8));

            list.add(dto);
         }
      
         return list;
      }



}