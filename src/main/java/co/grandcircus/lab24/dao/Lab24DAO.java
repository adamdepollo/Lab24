package co.grandcircus.lab24.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import co.grandcircus.lab24.models.User;

@Repository
public class Lab24DAO {

	@Autowired
	JdbcTemplate jdbcTemplate;

	public List<User> findAllUsers() {
		return jdbcTemplate.query("SELECT * FROM users", new BeanPropertyRowMapper<User>(User.class));

	}
	
	public int addUser(String firstName, String lastName, String email, String username, String password, String birthday) {
		String addQuery = "INSERT INTO users (firstName, lastName, email, username, password, birthday) VALUES (?,?,?,?,?,?)";
		return jdbcTemplate.update(addQuery, firstName, lastName, email, username, password, birthday);
	}
}
