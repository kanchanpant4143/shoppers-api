package com.ssis.civalue.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.ssis.civalue.models.Shelf;

@Repository("shelfRepo")
public interface ShelfRepository extends JpaRepository<Shelf, Long> {

	@Query(value = "select distinct s.shopper_id from shelf_tbl s where s.product_id = :productId limit :limit", nativeQuery = true)
	List<String> findByProductId(@Param("productId") String productId, @Param("limit") Integer limit);

}
