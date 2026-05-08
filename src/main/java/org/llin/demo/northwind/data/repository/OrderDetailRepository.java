package org.llin.demo.northwind.data.repository;

import java.util.Date;

import org.llin.demo.northwind.data.entity.OrderDetail;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(path = "orderDetail")
public interface OrderDetailRepository extends JpaRepository<OrderDetail, Integer> {
	Page<OrderDetail> findByDiscountBetweenOrderByDiscountAsc(Double discount1, Double discount2, Pageable pageable);

	Page<OrderDetail> findByDiscountBetweenOrderByDiscountDesc(Double discount1, Double discount2, Pageable pageable);

	Page<OrderDetail> findByQuantityBetweenOrderByQuantityAsc(Double quantity1, Double quantity2, Pageable pageable);

	Page<OrderDetail> findByQuantityBetweenOrderByQuantityDesc(Double quantity1, Double quantity2, Pageable pageable);

	Page<OrderDetail> findByUnitPriceBetweenOrderByUnitPriceAsc(Double unitPrice1, Double unitPrice2,
			Pageable pageable);

	Page<OrderDetail> findByUnitPriceBetweenOrderByUnitPriceDesc(Double unitPrice1, Double unitPrice2,
			Pageable pageable);

	Page<OrderDetail> findByDateAllocatedBetweenOrderByDateAllocatedAsc(Date dateAllocated1, Date dateAllocated2,
			Pageable pageable);

	Page<OrderDetail> findByDateAllocatedBetweenOrderByDateAllocatedDesc(Date dateAllocated1, Date dateAllocated2,
			Pageable pageable);
}
