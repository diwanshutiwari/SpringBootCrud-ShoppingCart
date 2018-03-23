package com.sts.shopping.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.sts.shopping.entity.Product;

public interface ProductRepository extends JpaRepository<Product, Integer> {

	

}
