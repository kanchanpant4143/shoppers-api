package com.ssis.civalue.mapper;

import com.ssis.civalue.dtos.CreateShopperRequest;
import com.ssis.civalue.dtos.ShelfDto;
import com.ssis.civalue.models.Product;
import com.ssis.civalue.models.Shelf;
import com.ssis.civalue.models.Shopper;
import com.ssis.civalue.service.ProductService;
import com.ssis.civalue.service.ShopperService;

import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.stream.Collectors;

import org.apache.commons.collections4.CollectionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class ShopperMapper {

	@Autowired
	private ProductService productService;

	@Autowired
	private ShopperService shopperService;

	// Implement mapping logic here
	public Shopper mapRequestToShopper(CreateShopperRequest request) {
		if (request != null) {
			Shopper shopper = new Shopper();
			shopper.setShopperId(request.getShopperId());
			List<Shelf> shelf = request.getShelf().stream().filter(s -> getProductById(s) != null)
					.map(s -> new Shelf(s.getRelevancyScore(), getProductById(s), shopper)).toList();
			shopper.setShelf(shelf);
			return shopper;
		}
		return null;
	}

	private Product getProductById(ShelfDto s) {
		return productService.getProductById(s.getProductId());
	}

	public List<Shopper> mapAllShoppersData(List<CreateShopperRequest> request) {
		if (CollectionUtils.isNotEmpty(request)) {
			List<Shopper> shoppersList = request.stream()
					.filter(shopper -> Objects.nonNull(shopper.getShopperId())
							&& CollectionUtils.isNotEmpty(shopper.getShelf()))
					.map(sp -> mapRequestToShopper(sp)).collect(Collectors.toList());
			return shoppersList;
		}
		return null;
	}

}
