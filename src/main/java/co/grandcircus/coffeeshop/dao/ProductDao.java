package co.grandcircus.coffeeshop.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import co.grandcircus.entity.Product;


@Repository
public class ProductDao {
	
	@Autowired
	private JdbcTemplate jdbc;
	
	public Product findByName(String name) {
		String sql = "SELECT * FROM Products WHERE name=?";
		return jdbc.queryForObject(sql, new BeanPropertyRowMapper<>(Product.class), name);
		//does not return null if not found! Why?
	}
	
	public List<Product> findAll() {
		String sql = "SELECT * FROM Products";
		return jdbc.query(sql, new BeanPropertyRowMapper<>(Product.class));
	}

}
