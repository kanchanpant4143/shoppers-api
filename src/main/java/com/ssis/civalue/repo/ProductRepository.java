package com.ssis.civalue.repo;

import com.ssis.civalue.models.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("productRepo")
public interface ProductRepository extends JpaRepository<Product, Long> {

	Product findByProductId(String productId);

	@Query(value = "select p from Product p where p.productId in :productIds and (:category is null or p.category = :category) and (:brand is null or p.brand = :brand)")
	List<Product> getAllProductByIds(@Param("productIds") List<String> productIds, @Param("category") String category,
			@Param("brand") String brand);

	@Query(value = "select p from Product p where p.productId in :productIds")
	List<Product> getByProductIds(List<String> productIds);
}
