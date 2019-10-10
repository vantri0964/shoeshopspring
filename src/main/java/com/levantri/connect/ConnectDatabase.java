package com.levantri.connect;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.levantri.empty.User;


@Repository
public class ConnectDatabase {
//	private JdbcTemplate jdbcTemplate;
//	
//	@Autowired
//	public void setDataSource(DataSource dataSource) {
//		jdbcTemplate = new JdbcTemplate(dataSource);
//	}
//
//	public void getJdbcTemplate() {
//		String sql = "select * from users";
//		List<User> info = jdbcTemplate.query(sql, new RowMapper<User>() {
//
//			public User mapRow(ResultSet result, int arg1) throws SQLException {
//				User user = new User();
//				user.setUsername(result.getString("email"));
//				user.setPassword(result.getString("password"));
//				return user;
//			}
//			
//		});
//		for(User users: info) {
//			System.out.println("user: " + users.getUsername());
//		}
//	}
//	

	


}
