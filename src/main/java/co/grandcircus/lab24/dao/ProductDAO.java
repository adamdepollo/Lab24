package co.grandcircus.lab24.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import co.grandcircus.lab24.models.Product;

@Repository
public class ProductDAO {
	
	@Autowired
	JdbcTemplate jdbcTemplate;

	public List<Product> findAllProducts() {
		return jdbcTemplate.query("SELECT * FROM products", new BeanPropertyRowMapper<Product>(Product.class));

	}
	
	public List<Product> searchByName(String name) {
		String searchQuery = "SELECT * FROM products WHERE name LIKE ('%" + name + "%')";
		return jdbcTemplate.query(searchQuery, new BeanPropertyRowMapper<Product>(Product.class));
		/*
		List<Product> matches = new ArrayList<>();

		for (Product p : prods) {
			if (p.getName().contains(name)) {
				matches.add(p);
			}
		}
		return matches;*/
	}
}
