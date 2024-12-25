package com.ssis.civalue.service;

import com.ssis.civalue.dtos.GetProductsRequest;
import com.ssis.civalue.models.Product;
import com.ssis.civalue.models.Shopper;

import java.util.List;

public interface ShopperService {
	List<Shopper> getAllShoppers();

	Shopper getShopperById(String shopperId);

	Shopper saveShopper(Shopper shopper);

	List<Product> getProductsByShopper(String shopperId, GetProductsRequest getProductsRequest);

	List<Product> getProductsByShopper(String shopperId);

	List<String> getShoppersByProduct(String productId, Integer limit);

}
