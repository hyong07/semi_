package semi.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import semi.dbutils.DBUtils;
import semi.dto.CategoryDTO;

public class CategoryDAO {		
	public List<String> main_categoryGet(String choice) throws Exception{
		Connection con = DBUtils.getConnection();
		String sql = "select sub_category from category where main_category=?";
		PreparedStatement pstat = con.prepareStatement(sql);
		pstat.setString(1, choice);
		ResultSet rs = pstat.executeQuery();
		List<String> result = new ArrayList<>();
		while(rs.next()) {
			result.add(rs.getString(1));		
		} 
		con.commit();
		pstat.close();
		con.close();
		return result;
	}
}
