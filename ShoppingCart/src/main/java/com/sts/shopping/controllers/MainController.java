package com.sts.shopping.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sts.shopping.entity.Product;
import com.sts.shopping.repository.ProductRepository;
import com.sts.shopping.service.ProductService;


@Controller
public class MainController {
	
	@Autowired
	private ProductRepository productRepository;
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping("/")
	public ModelAndView mainHome(){
		
		ModelAndView mv=new ModelAndView("index");
		mv.addObject("products", productRepository.findAll());
		
		return mv;
		
	}
	
	
	//save Product 
	
	@RequestMapping(value="/saveproduct", method=RequestMethod.POST)
	public ModelAndView doSave(@RequestParam("name") String name,@RequestParam("brand") String brand,
			@RequestParam("description") String description,@RequestParam("unitPrice") double unitPrice,
			@RequestParam("quantity") int quantity,@RequestParam("categoryId") int categoryId
			,@RequestParam("supplierId") int supplierId){
		
		ModelAndView mv=new ModelAndView("redirect:/");
		
		Product product=new Product();
		product.setName(name);
		product.setBrand(brand);
		product.setDescription(description);
		product.setUnitPrice(unitPrice);
		product.setQuantity(quantity);
		product.setCategoryId(categoryId);
		product.setSupplierId(supplierId);
		
		productRepository.save(product);
		
		mv.addObject("products", productRepository.findAll());
		return mv;
	}
	
	
	@RequestMapping(value="/update", method=RequestMethod.POST)
	public ModelAndView doUpdate(@RequestParam("id") int id,@RequestParam("name") String name,@RequestParam("brand") String brand,
			@RequestParam("description") String description,@RequestParam("unitPrice") double unitPrice,
			@RequestParam("quantity") int quantity,@RequestParam("categoryId") int categoryId
			,@RequestParam("supplierId") int supplierId){
		ModelAndView mv=new ModelAndView("redirect:/");
		
		Product product=productService.findById(id);
		product.setName(name);
		product.setBrand(brand);
		product.setDescription(description);
		product.setUnitPrice(unitPrice);
		product.setQuantity(quantity);
		product.setCategoryId(categoryId);
		product.setSupplierId(supplierId);
		productRepository.save(product);
		mv.addObject("products", productRepository.findAll());
		return mv;
		
	}
	
	
	
	@RequestMapping("/addproduct")
	public ModelAndView main(){
		System.out.println("MAIN URL");
		ModelAndView mv=new ModelAndView("addproduct");
		
		return mv;
		
	}
	
	
	@RequestMapping(value="/view/{id}", method=RequestMethod.GET)
	public ModelAndView doView(@PathVariable("id") int uid){
		System.out.println("==============================");
		ModelAndView mv=new ModelAndView("viewProduct");
		mv.addObject("product",productService.findById(uid) );
		return mv;
	}
	
	
	@RequestMapping(value="/delete/{id}", method=RequestMethod.GET)
	public ModelAndView doDelete(@PathVariable("id") int uid){
		
		ModelAndView mv=new ModelAndView("redirect:/");
	
		productRepository.deleteById(uid);
		return mv;
	}
	
	
	@RequestMapping(value="/update/{id}", method=RequestMethod.GET)
	public ModelAndView doUpdate(@PathVariable("id") int uid){
		
		ModelAndView mv=new ModelAndView("editproduct");
		mv.addObject("product", productService.findById(uid));
		return mv;
	}
	
	
	
	
}
