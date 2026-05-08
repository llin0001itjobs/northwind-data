package org.llin.demo.northwind.data.repository;

import java.time.LocalDateTime;

import org.llin.demo.northwind.data.entity.Invoice;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(path = "invoice")
public interface InvoiceRepository extends JpaRepository<Invoice, Integer> {
	
	Page<Invoice> findByDueDateBetweenOrderByDueDateAsc(LocalDateTime dueDate1, LocalDateTime dueDate2, Pageable pageable);

	Page<Invoice> findByDueDateBetweenOrderByDueDateDesc(LocalDateTime dueDate1, LocalDateTime dueDate2, Pageable pageable);

	Page<Invoice> findByInvoiceDateBetweenOrderByInvoiceDateAsc(LocalDateTime invoiceDate1, LocalDateTime invoiceDate2,
			Pageable pageable);

	Page<Invoice> findByInvoiceDateBetweenOrderByInvoiceDateDesc(LocalDateTime invoiceDate1, LocalDateTime invoiceDate2,
			Pageable pageable);

	Page<Invoice> findByAmountDueBetweenOrderByAmountDueAsc(Double amountDue1, Double amountDue2, Pageable pageable);

	Page<Invoice> findByAmountDueBetweenOrderByAmountDueDesc(Double amountDue1, Double amountDue2, Pageable pageable);

	Page<Invoice> findByShippingBetweenOrderByShippingAsc(Double Shipping1, Double Shipping2, Pageable pageable);

	Page<Invoice> findByShippingBetweenOrderByShippingDesc(Double Shipping1, Double Shipping2, Pageable pageable);

	Page<Invoice> findByTaxBetweenOrderByTaxAsc(Double tax1, Double tax2, Pageable pageable);

	Page<Invoice> findByTaxBetweenOrderByTaxDesc(Double tax1, Double tax2, Pageable pageable);

}
