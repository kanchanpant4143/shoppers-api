package com.ssis.civalue.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssis.civalue.models.Product;
import com.ssis.civalue.repo.ProductRepository;
import com.ssis.civalue.service.ProductService;

@Service("productService")
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductRepository productRepo;

	@Override
	public List<Product> getAllProducts() {
		return productRepo.findAll();
	}

	@Override
	public Product getProductById(String productId) {
		return productRepo.findByProductId(productId);
	}

	@Override
	public Product saveProduct(Product product) {
		return productRepo.save(product);
	}

	@Override
	public List<Product> saveAllProducts(List<Product> products) {
		return productRepo.saveAllAndFlush(products);
	}

	@Override
	public List<Product> getAllProductByIds(List<String> productIds, String category, String brand) {
		return productRepo.getAllProductByIds(productIds, category, brand);
	}

	@Override
	public List<Product> getAllProductByIds(List<String> productIds) {
		return productRepo.getByProductIds(productIds);
	}
}
