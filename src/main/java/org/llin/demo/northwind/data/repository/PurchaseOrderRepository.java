package org.llin.demo.northwind.data.repository;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;

import org.llin.demo.northwind.data.entity.PurchaseOrder;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(path = "purchaseOrder")
public interface PurchaseOrderRepository extends JpaRepository<PurchaseOrder, Integer> {

    List<PurchaseOrder> findBySupplierId(Integer supplierId);
    List<PurchaseOrder> findByCreatedBy(Integer employeeId);
    List<PurchaseOrder> findByApprovedBy(Integer employeeId);
    List<PurchaseOrder> findBySubmittedBy(Integer employeeId);
    List<PurchaseOrder> findByStatusId(Integer statusId);

    // Date ranges (very common for PO reports)
    List<PurchaseOrder> findByCreationDateBetweenOrderByCreationDateAsc(LocalDateTime start, LocalDateTime end);
    List<PurchaseOrder> findBySubmittedDateBetweenOrderBySubmittedDateAsc(LocalDateTime start, LocalDateTime end);
    List<PurchaseOrder> findByExpectedDateBetweenOrderByExpectedDateAsc(LocalDateTime start, LocalDateTime end);
    List<PurchaseOrder> findByPaymentDateBetweenOrderByPaymentDateAsc(LocalDateTime start, LocalDateTime end);

    // Money ranges
    List<PurchaseOrder> findByShippingFeeBetweenOrderByShippingFeeAsc(BigDecimal min, BigDecimal max);
    List<PurchaseOrder> findByTaxesBetweenOrderByTaxesAsc(BigDecimal min, BigDecimal max);
    List<PurchaseOrder> findByPaymentAmountBetweenOrderByPaymentAmountAsc(BigDecimal min, BigDecimal max);

    List<PurchaseOrder> findByNotesContaining(String notes);
}