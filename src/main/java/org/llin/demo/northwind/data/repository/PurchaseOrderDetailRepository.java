package org.llin.demo.northwind.data.repository;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;

import org.llin.demo.northwind.data.entity.PurchaseOrderDetail;
import org.llin.demo.northwind.data.repository.model.LabelDoubleValueLong;
import org.llin.demo.northwind.data.repository.model.LabelValueLong;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(path="purchaseOrderDetail")
public interface PurchaseOrderDetailRepository extends JpaRepository<PurchaseOrderDetail, Integer> {
		
    @Query(value = """
            SELECT
                CASE 
                    WHEN unit_cost < 13 THEN '0 - 12.99'
                    WHEN unit_cost < 26 THEN '13 - 25.99'
                    WHEN unit_cost < 39 THEN '26 - 38.99'
                    WHEN unit_cost < 52 THEN '39 - 51.99'
                    ELSE '52 and above'
                END AS label,
                SUM(quantity) AS value
            FROM 
                purchase_order_detail p
            GROUP BY 
                CASE 
                    WHEN unit_cost < 13 THEN '0 - 12.99'
                    WHEN unit_cost < 26 THEN '13 - 25.99'
                    WHEN unit_cost < 39 THEN '26 - 38.99'
                    WHEN unit_cost < 52 THEN '39 - 51.99'
                    ELSE '52 and above'
                END
            ORDER BY 
                label
            """, nativeQuery = true)
	List<LabelValueLong> quantityPerCostRange();
	
    @Query(value = """
            SELECT 
                p.unit_cost AS label, 
                SUM(p.quantity) AS value
            FROM 
                purchase_order_detail p
            GROUP BY 
                p.unit_cost
            ORDER BY 
                p.unit_cost
            """, nativeQuery = true)  
	List<LabelDoubleValueLong> quantityPerUnitCost();
			
    List<PurchaseOrderDetail> findByPurchaseOrderId(Integer purchaseOrderId);
    List<PurchaseOrderDetail> findByProductId(Integer productId);
    List<PurchaseOrderDetail> findByInventoryTransactionId(Integer inventoryTransactionId);

    List<PurchaseOrderDetail> findByQuantityBetweenOrderByQuantityAsc(BigDecimal min, BigDecimal max);
    List<PurchaseOrderDetail> findByUnitCostBetweenOrderByUnitCostAsc(BigDecimal min, BigDecimal max);

    List<PurchaseOrderDetail> findByDateReceivedBetweenOrderByDateReceivedAsc(LocalDateTime start, LocalDateTime end);
    List<PurchaseOrderDetail> findByPostedToInventory(Boolean postedToInventory);
}
