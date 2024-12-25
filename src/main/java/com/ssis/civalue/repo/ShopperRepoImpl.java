package com.ssis.civalue.repo;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ssis.civalue.models.Shelf;
import com.ssis.civalue.models.Shopper;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;

@Repository
public class ShopperRepoImpl {

	@PersistenceContext
	EntityManager entityManager;

	public List<Shelf> getShelfByShopper(String shopperId, Integer limit) {
		List<Shelf> resultList = entityManager
				.createQuery("select s.shelf from Shopper s where s.shopperId = :shopperId", Shelf.class)
				.setParameter("shopperId", shopperId).setMaxResults(limit).getResultList();
		return resultList;
	}

	public List<String> getShopperByProductId(String productId, Integer limit) {
		List<String> resultList = entityManager
				.createQuery("select s.shopper.shopperId from Shelf s where s.product.productId = :productId",
						String.class)
				.setParameter("productId", productId).setMaxResults(limit).getResultList();
		return resultList;
	}

}
