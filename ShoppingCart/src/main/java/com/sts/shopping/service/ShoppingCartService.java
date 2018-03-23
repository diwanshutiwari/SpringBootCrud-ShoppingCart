package com.sts.shopping.service;

import java.util.Date;
import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sts.shopping.dto.ShoppingCartDTO;
import com.sts.shopping.entity.Product;
import com.sts.shopping.entity.ShoppingCart;
import com.sts.shopping.repository.ProductRepository;
import com.sts.shopping.repository.ShoppingCartRepository;
import com.sts.shopping.repository.UserRepository;

@Service
@Transactional
public class ShoppingCartService {
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private ProductRepository productRepository;
	
	@Autowired
	private ShoppingCartRepository cartRepository;
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private UserService userService;
	
	 public ShoppingCart saveProducts(ShoppingCartDTO shoppingCartDTO) {
	        ShoppingCart shoppingCart = new ShoppingCart();
	        Product product = productService.findById(shoppingCartDTO.getProductId());
	        shoppingCart.setProduct(product);
	        shoppingCart.setUser(userService.findByid(1L));
	        shoppingCart.setStatus(shoppingCartDTO.getStatus());
	        shoppingCart.setDate(new Date());
	        shoppingCart.setStock(shoppingCartDTO.getStock());
	        shoppingCart.setAmount(product.getUnitPrice() * shoppingCartDTO.getStock());

	        return cartRepository.save(shoppingCart);
	    }


	    public List<ShoppingCart> findAll() {
//	        return shoppingCartRepository.findAll();
	        return cartRepository.findByStatus("NOT_PURCHASED");
	    }

	    public ShoppingCart updateProduct(ShoppingCartDTO shoppingCartDTO, Long id) {
	        Optional<ShoppingCart> optional = cartRepository.findById(id);
	        if (optional.isPresent()) {
				ShoppingCart updateItem=optional.get();
				
				updateItem.setStock(shoppingCartDTO.getStock());
		        updateItem.setAmount(updateItem.getProduct().getUnitPrice() * shoppingCartDTO.getStock());
		        return cartRepository.save(updateItem);
			}
	        
	        return null;
	        
	    }

	    public void deleteProduct(Long id) {
	    	cartRepository.deleteById(id);
	    }

	    public void clearShoppingCart(Object object) {
	    	cartRepository.deleteAll(findAll());
	    }


	    public List<ShoppingCart> findByPurchased() {
	        return cartRepository.findByStatus("PURCHASED");
	    }


	    public void purchaseProducts(Long id) {
	        Optional<ShoppingCart> optional = cartRepository.findById(id);
	        if(optional.isPresent()){
	        	
	        	ShoppingCart shoppingCart=optional.get();
	        	shoppingCart.setStatus("PURCHASED");
		        cartRepository.save(shoppingCart);
	        }
	        return;
	    }

}
