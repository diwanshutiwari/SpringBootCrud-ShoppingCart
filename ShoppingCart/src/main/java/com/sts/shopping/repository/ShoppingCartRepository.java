package com.sts.shopping.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.sts.shopping.entity.ShoppingCart;

public interface ShoppingCartRepository extends JpaRepository<ShoppingCart, Long> {
    
	List<ShoppingCart> findByStatus(String status);

	
}

