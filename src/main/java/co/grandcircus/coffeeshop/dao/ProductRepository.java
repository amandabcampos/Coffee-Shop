package co.grandcircus.coffeeshop.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import co.grandcircus.coffeeshop.entity.Product;

public interface ProductRepository extends JpaRepository<Product, Long> {

	List<Product> findByNameContainingIgnoreCase(String keyword);
	
	Product findByNameIgnoreCase(String keyword);
	
}
