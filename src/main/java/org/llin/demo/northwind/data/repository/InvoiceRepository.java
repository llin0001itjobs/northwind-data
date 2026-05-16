package org.llin.demo.northwind.data.repository;

import org.llin.demo.northwind.data.entity.Invoice;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;

@RepositoryRestResource(path = "invoice")
public interface InvoiceRepository extends JpaRepository<Invoice, Integer> {

    // === Your original range queries (cleaned up) ===
    List<Invoice> findByDueDateBetweenOrderByDueDateAsc(LocalDateTime dueDate1, LocalDateTime dueDate2);

    List<Invoice> findByInvoiceDateBetweenOrderByInvoiceDateAsc(LocalDateTime invoiceDate1, LocalDateTime invoiceDate2);

    List<Invoice> findByAmountDueBetweenOrderByAmountDueAsc(BigDecimal amountDue1, BigDecimal amountDue2);

    List<Invoice> findByShippingBetweenOrderByShippingAsc(BigDecimal shipping1, BigDecimal shipping2);

    List<Invoice> findByTaxBetweenOrderByTaxAsc(BigDecimal tax1, BigDecimal tax2);

    // === Very useful additional filters ===

    // By linked order (most important for invoices!)
    List<Invoice> findByCustomerOrderId(Integer customerOrderId);

    // Single-date helpers
    List<Invoice> findByInvoiceDateAfterOrderByInvoiceDateAsc(LocalDateTime date);
    List<Invoice> findByDueDateBeforeOrderByDueDateAsc(LocalDateTime date);

    // Overdue invoices (very common need)
    List<Invoice> findByDueDateBeforeAndAmountDueGreaterThanOrderByDueDateAsc(
            LocalDateTime date, BigDecimal amountDue);

    // Combined date + amount (great for reporting)
    List<Invoice> findByInvoiceDateBetweenAndAmountDueGreaterThanOrderByInvoiceDateAsc(
            LocalDateTime startDate, LocalDateTime endDate, BigDecimal minAmount);

    // Search by amount due greater/less than
    List<Invoice> findByAmountDueGreaterThanOrderByAmountDueDesc(BigDecimal amount);
    List<Invoice> findByAmountDueLessThanOrderByAmountDueAsc(BigDecimal amount);

    // Optional: ignore case or partial matches if you add string fields later
}