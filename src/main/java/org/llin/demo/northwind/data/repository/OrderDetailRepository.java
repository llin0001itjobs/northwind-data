package org.llin.demo.northwind.data.repository;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;

import org.llin.demo.northwind.data.entity.OrderDetail;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(path = "orderDetail")
public interface OrderDetailRepository extends JpaRepository<OrderDetail, Integer> {
    List<OrderDetail> findByCustomerOrderId(Integer customerOrderId);
    List<OrderDetail> findByProductId(Integer productId);
    List<OrderDetail> findByOrderStatusId(Integer statusId);
    List<OrderDetail> findByPurchaseOrderId(Integer purchaseOrderId);
    List<OrderDetail> findByInventoryTransactionId(Integer inventoryTransactionId);

    // Numeric ranges
    List<OrderDetail> findByQuantityBetweenOrderByQuantityAsc(BigDecimal min, BigDecimal max);
    List<OrderDetail> findByUnitPriceBetweenOrderByUnitPriceAsc(BigDecimal min, BigDecimal max);
    List<OrderDetail> findByDiscountBetweenOrderByDiscountAsc(Double min, Double max);

    // Date
    List<OrderDetail> findByDateAllocatedBetweenOrderByDateAllocatedAsc(LocalDateTime start, LocalDateTime end);
}

