package com.ssis.civalue.service.impl;

import java.util.List;
import java.util.stream.Collectors;

import org.apache.commons.collections4.CollectionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssis.civalue.dtos.GetProductsRequest;
import com.ssis.civalue.models.Product;
import com.ssis.civalue.models.Shelf;
import com.ssis.civalue.models.Shopper;
import com.ssis.civalue.repo.ShelfRepository;
import com.ssis.civalue.repo.ShopperRepoImpl;
import com.ssis.civalue.repo.ShopperRepository;
import com.ssis.civalue.service.ProductService;
import com.ssis.civalue.service.ShopperService;
import java.util.Collections;

@Service("shopperService")
public class ShopperServiceImpl implements ShopperService {

	@Autowired
	private ShopperRepository shopperRepo;

	@Autowired
	private ShopperRepoImpl shopperRepoImpl;

	@Autowired
	private ProductService productService;

	@Autowired
	private ShelfRepository shelfRepo;

	@Override
	public List<Shopper> getAllShoppers() {
		return shopperRepo.findAll();
	}

	@Override
	public Shopper getShopperById(String shopperId) {
		return shopperRepo.findByShopperId(shopperId);
	}

	@Override
	public Shopper saveShopper(Shopper shopper) {
		return shopperRepo.save(shopper);
	}

	@Override
	public List<Product> getProductsByShopper(String shopperId) {
		List<Shelf> shelfByShopper = shopperRepo.getShelfByShopper(shopperId);
		if (CollectionUtils.isNotEmpty(shelfByShopper)) {
			List<Product> products = shelfByShopper.stream().map(shelf -> shelf.getProduct()).toList();
			return products;
		}
		return Collections.emptyList();
	}

	@Override
	public List<Product> getProductsByShopper(String shopperId, GetProductsRequest getProductsRequest) {
		List<Shelf> shelfByShopper = shopperRepoImpl.getShelfByShopper(shopperId, getProductsRequest.getLimit());
		if (CollectionUtils.isNotEmpty(shelfByShopper)) {
			List<Product> products = shelfByShopper.stream().map(Shelf::getProduct).toList();
			return products.stream().filter(p -> filterByCategory(p, getProductsRequest.getCategory())
					&& filterByBrand(p, getProductsRequest.getBrand())).toList();
		}
		return Collections.emptyList();
	}

	private boolean filterByBrand(Product p, String brand) {
		if (brand == null || brand.equals(p.getBrand())) {
			return true;
		}
		return false;
	}

	private boolean filterByCategory(Product p, String category) {
		if (category == null || category.equals(p.getCategory())) {
			return true;
		}
		return false;
	}

	public List<Product> getAllProductByIds(List<String> productIds, String category, String brand) {
		List<Product> products = productService.getAllProductByIds(productIds);
		List<Product> productList = products.stream()
				.filter(p -> filterByCategory(p, category) && filterByBrand(p, brand)).toList();
		return productList;
	}

	public List<Product> getAllProductByIds(List<String> productIds) {
		List<Product> products = productService.getAllProductByIds(productIds);
		return products;
	}

	@Override
	public List<Shopper> saveAllShoppers(List<Shopper> allShoppersData) {
		return shopperRepo.saveAll(allShoppersData);
	}

	@Override
	public List<String> getShoppersByProduct(String productId, Integer limit) {
		// List<String> shopperIds = shelfRepo.findByProductId(productId, limit);
		return shopperRepoImpl.getShopperByProductId(productId, limit);

	}
}
