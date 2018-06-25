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

	public List<CommunityDTO> CommunityData() throws Exception{

		Connection con = DBUtils.getConnection();
		String sql = "select * from Community";

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

	
}
