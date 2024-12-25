package com.ssis.civalue.service;

import java.util.List;

import com.ssis.civalue.models.Product;

public interface ProductService {
	List<Product> getAllProducts();

	Product getProductById(String productId);

	Product saveProduct(Product product);

	List<Product> getAllProductByIds(List<String> productIds, String category, String brand);

	List<Product> saveAllProducts(List<Product> products);

	List<Product> getAllProductByIds(List<String> productIds);
}
