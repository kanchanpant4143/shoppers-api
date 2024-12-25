package com.ssis.civalue.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.ssis.civalue.models.Product;
import com.ssis.civalue.service.ProductService;

@RestController
public class ProductController {

	@Autowired
	private ProductService productService;

	@GetMapping("/products")
	public ResponseEntity<List<Product>> getProducts() {
		List<Product> products = productService.getAllProducts();
		return ResponseEntity.ok(products);
	}

	@PostMapping("/products")
	public ResponseEntity<List<Product>> saveAllProducts(@RequestBody List<Product> products) {
		List<Product> savedProducts = productService.saveAllProducts(products);
		return ResponseEntity.ok(savedProducts);
	}

}
