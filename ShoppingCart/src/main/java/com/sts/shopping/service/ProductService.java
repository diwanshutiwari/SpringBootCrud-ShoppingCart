package com.sts.shopping.service;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sts.shopping.entity.Product;
import com.sts.shopping.repository.ProductRepository;

@Service
@Transactional
public class ProductService {
	
	@Autowired
	private ProductRepository productRepository;
	
	public List<Product> findALLProduct(){
		
		return productRepository.findAll();
	}
	
	public Product findById(int id){
		Optional<Product> option=productRepository.findById(id);
		
		if (option.isPresent()) {
			return option.get();
		}
		
		
		return null;
	}

}
