package co.grandcircus.coffeeshop.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import co.grandcircus.coffeeshop.entity.User;

@Repository
public class UserDao {
	
	@Autowired
	private JdbcTemplate jdbc;
	
	public void create(User user) {
		String sql = "INSERT INTO Users (first_name, last_name, email, phone_number, password) VALUES (?, ?, ?, ?, ?)";
		jdbc.update(sql, user.getFirstName(), user.getLastName(), user.getEmail(), user.getPhoneNumber(), user.getPassword());
	}
	
	public User findByName(String firstName) {
		String sql = "SELECT * FROM Users WHERE first_name = ?";
		return jdbc.queryForObject(sql, new BeanPropertyRowMapper<>(User.class), firstName);
	}

}
