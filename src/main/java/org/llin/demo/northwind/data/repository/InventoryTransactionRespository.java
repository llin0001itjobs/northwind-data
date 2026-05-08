package org.llin.demo.northwind.data.repository;

import java.time.LocalDateTime;

import org.llin.demo.northwind.data.entity.InventoryTransaction;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(path = "inventoryTransaction")
public interface InventoryTransactionRespository extends JpaRepository<InventoryTransaction, Integer> {
	
	Page<InventoryTransaction> findByQuantityBetweenOrderByQuantityAsc(Double quantity1, Double quantity2,
			Pageable pageable);

	Page<InventoryTransaction> findByQuantityBetweenOrderByQuantityDesc(Double quantity1, Double quantity2,
			Pageable pageable);

	Page<InventoryTransaction> findByTransactionCreatedDateBetweenOrderByTransactionCreatedDateAsc(
			LocalDateTime transactionCreatedDate1, LocalDateTime transactionCreatedDate2, Pageable pageable);

	Page<InventoryTransaction> findByTransactionCreatedDateBetweenOrderByTransactionCreatedDateDesc(
			LocalDateTime transactionCreatedDate1, LocalDateTime transactionCreatedDate2, Pageable pageable);

	Page<InventoryTransaction> findByTransactionModifiedDateBetweenOrderByTransactionModifiedDateAsc(LocalDateTime transactionModifiedDate1,
			LocalDateTime transactionModifiedDate2, Pageable pageable);

	Page<InventoryTransaction> findByTransactionModifiedDateBetweenOrderByTransactionModifiedDateDesc(LocalDateTime transactionModifiedDate1,
			LocalDateTime transactionModifiedDate2, Pageable pageable);
	
	Page<InventoryTransaction> findByCommentsOrderByCommentsAsc(String comments, Pageable pageable);
	
	Page<InventoryTransaction> findByCommentsOrderByCommentsDesc(String comments, Pageable pageable);	
}
