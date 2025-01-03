package com.ssis.civalue.controller;

import com.ssis.civalue.dtos.CreateShopperRequest;
import com.ssis.civalue.dtos.GetProductsRequest;
import com.ssis.civalue.mapper.ShopperMapper;
import com.ssis.civalue.models.Product;
import com.ssis.civalue.models.Shopper;
import com.ssis.civalue.service.ShopperService;

import jakarta.validation.Valid;
import lombok.extern.slf4j.Slf4j;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Slf4j
@RestController
public class ShopperController {

	@Autowired
	private ShopperService shopperService;

	@Autowired
	private ShopperMapper shopperMapper;

	@PostMapping("/shoppers")
	public ResponseEntity<Shopper> saveShoppers(@RequestBody CreateShopperRequest request) {
		Shopper shopper = shopperService.saveShopper(shopperMapper.mapRequestToShopper(request));
		return ResponseEntity.ok(shopper);
	}

	@GetMapping("/shoppers")
	public ResponseEntity<List<Shopper>> getAllShoppers() {
		List<Shopper> shoppers = shopperService.getAllShoppers();
		return ResponseEntity.ok(shoppers);
	}

	@GetMapping("/shoppers/{shopperId}")
	public ResponseEntity<List<Product>> getProductsByShopperId(@PathVariable("shopperId") String shopperId) {
		List<Product> products = shopperService.getProductsByShopper(shopperId);
		return ResponseEntity.ok(products);
	}

	@PostMapping("/shoppers/{shopperId}")
	public ResponseEntity<List<Product>> getProductsByShopperId(@PathVariable("shopperId") String shopperId,
			@Valid @RequestBody GetProductsRequest request) {
		List<Product> products = shopperService.getProductsByShopper(shopperId, request);
		return ResponseEntity.ok(products);
	}

	@GetMapping("/shoppers/product/{productId}")
	public ResponseEntity<List<String>> getShopperByProduct(@PathVariable("productId") String productId,
			@RequestParam(name = "limit", defaultValue = "10") Integer limit) {
		List<String> shoppers = shopperService.getShoppersByProduct(productId, limit);
		return ResponseEntity.ok(shoppers);
	}

}
