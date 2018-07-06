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
		con.commit();
		pstat.close();
		con.close(); 
		return pricelist;
	}
	  
	public int addProduct(String sell_type, ProductDTO dto) throws Exception{
		System.out.println("占쏙옙占쏙옙恝占쏙옙占쏙옙占�? " + sell_type);
		Connection con = DBUtils.getConnection();
		String sql = null;
		PreparedStatement pstat=null;
	if(sell_type.equals("a")) { 
		System.out.println("占쏙옙占쏙옙占쏙옙占쏙옙?");
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
	      pstat.setString(1, dto.getBoard_no());
	      pstat.setString(2, dto.getCategory());
	      pstat.setString(3, dto.getDetail_category());
	      pstat.setString(4, dto.getSell_price());
	      pstat.setString(5, dto.getSell_count());      
	  
	      pstat.setString(6, dto.getP_name());
	      
	   }
	int result = pstat.executeUpdate();
	System.out.println(result);
	con.commit();
	pstat.close();
	con.close(); 
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
			  
			   dto.setBoard_no(rs.getString(2));
			   dto.setProduct_seq(rs.getString(2));
			   dto.setCategory(rs.getString(3));
			   dto.setDetail_category(rs.getString(4));
			   dto.setSell_price(rs.getString(5));
			   dto.setSell_count(rs.getString(6));
			   dto.setMain_product(rs.getString(7));
			   dto.setP_name(rs.getString(8));

		   }
		   System.out.println("占싱띰옙");
			con.commit();
			pstat.close();
			con.close(); 
		   return dto;
	   }
	  
       
      
	   
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
	   public int buyProductUpdate(String seq, String count) throws Exception{
	          Connection con = DBUtils.getConnection();
	          String sql = "update product set sell_count = (select sell_count from product where product_seq=?)-? where product_seq=?";
	          PreparedStatement pstat = con.prepareStatement(sql);
	          pstat.setString(1, seq);
	          pstat.setString(2, count);
	          pstat.setString(3, seq);
	          
	          int result = pstat.executeUpdate();
	          con.commit();
	          con.close();
	          pstat.close();
	          
	          return result;         
	       }
	   
	      public ProductDTO buyProduct(String product_seq) throws Exception{
	          Connection con = DBUtils.getConnection();
	          String sql = "select * from product where product_seq=?";
	          PreparedStatement pstat = con.prepareStatement(sql);
	          pstat.setString(1, product_seq);
	          ResultSet rs = pstat.executeQuery();
	          ProductDTO result = new ProductDTO();
	          while(rs.next()) {
	             result.setBoard_no(rs.getString(1));
	             result.setProduct_seq(rs.getString(2));
	             result.setCategory(rs.getString(3));
	             result.setDetail_category(rs.getString(4));
	             result.setSell_price(rs.getString(5));
	             result.setSell_count(rs.getString(6));
	             result.setMain_product(rs.getString(7));
	             result.setP_name(rs.getString(8));
	          }
	          
	          con.commit();
	          con.close();
	          pstat.close();
	          
	          return result;
	  
	          }
	   
	   public String getproductcount(String seq) throws Exception{
	          Connection con = DBUtils.getConnection();
	           String sql = "select sell_count from product where product_seq=?";
	           PreparedStatement pstat = con.prepareStatement(sql);
	           pstat.setString(1, seq);
	           
	           ResultSet rs = pstat.executeQuery();
	           
	           String count = null;
	           
	           while(rs.next()) {
	              count = rs.getString(1);
	           }
	           
	           con.commit();
	           con.close();
	           pstat.close();
	           return count;
	       }
	 
      public String getProductName(String seq) throws Exception{
          Connection con = DBUtils.getConnection();
          String sql = "select p_name from product where product_seq=?";
          PreparedStatement pstat = con.prepareStatement(sql);
          pstat.setString(1, seq);
          ResultSet rs = pstat.executeQuery();
          String result = null;
          while(rs.next()) {
             result = rs.getString(1);
          }
          con.commit();
          con.close();
          pstat.close();
          return result;
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
          con.commit();
          con.close();
          pstat.close();
       
          return list;
       }


}