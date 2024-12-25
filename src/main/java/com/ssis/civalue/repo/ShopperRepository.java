package com.ssis.civalue.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.ssis.civalue.models.Shelf;
import com.ssis.civalue.models.Shopper;

@Repository("shopperRepo")
public interface ShopperRepository extends JpaRepository<Shopper, Long> {

	Shopper findByShopperId(String shopperId);

	@Query(value = "select s.shelf from Shopper s where s.shopperId = :shopperId")
	List<Shelf> getShelfByShopper(@Param("shopperId") String shopperId);

	@Query(value = "select s from Shopper s where s.shopperId in :shopperIds")
	List<Shopper> findAllByShopperIds(@Param("shopperIds") List<String> shopperIds);

}
