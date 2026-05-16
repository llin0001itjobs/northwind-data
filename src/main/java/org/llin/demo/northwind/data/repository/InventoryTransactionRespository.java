package org.llin.demo.northwind.data.repository;

import java.time.LocalDateTime;
import java.util.List;

import org.llin.demo.northwind.data.entity.InventoryTransaction;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(path = "inventoryTransaction")
public interface InventoryTransactionRespository extends JpaRepository<InventoryTransaction, Integer> {
	
    List<InventoryTransaction> findByTransactionType(Integer transactionType);
    List<InventoryTransaction> findByProductId(Integer productId);
    List<InventoryTransaction> findByQuantity(Integer quantity);
    List<InventoryTransaction> findByPurchaseOrderId(Integer purchaseOrderId);
    List<InventoryTransaction> findByCustomerOrderId(Integer customerOrderId);
    List<InventoryTransaction> findByCommentsContaining(String comments);

    // Date ranges
    List<InventoryTransaction> findByTransactionCreatedDateBetweenOrderByTransactionCreatedDateAsc(
            LocalDateTime start, LocalDateTime end);

    List<InventoryTransaction> findByTransactionModifiedDateBetweenOrderByTransactionModifiedDateAsc(
            LocalDateTime start, LocalDateTime end);

    // Quantity ranges
    List<InventoryTransaction> findByQuantityBetweenOrderByQuantityAsc(Integer minQty, Integer maxQty);
}


