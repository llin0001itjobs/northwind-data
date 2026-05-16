package org.llin.demo.northwind.data.repository;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;

import org.llin.demo.northwind.data.entity.CustomerOrder;
import org.llin.demo.northwind.data.repository.model.LabelIntValueDouble;
import org.llin.demo.northwind.data.repository.model.LabelValueLong;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.web.bind.annotation.RequestMapping;

@RepositoryRestResource(path = "customerOrder")
public interface CustomerOrderRepository extends JpaRepository<CustomerOrder, Integer> {
	
	@Query("SELECT NEW org.llin.demo.northwind.data.repository.model.LabelValueLong"
			+ "    (CASE "
			+ "        WHEN c.shippingFee = 0 THEN '0'"
			+ "        WHEN c.shippingFee < 50 THEN '1-49'"
			+ "        WHEN c.shippingFee < 100 THEN '50-99'"
			+ "        WHEN c.shippingFee < 200 THEN '100-199'"
			+ "        ELSE '200+'"
			+ "    END AS label,"
			+ "    COUNT(*) AS value)"
			+ " FROM "
			+ "    CustomerOrder c"
			+ " GROUP BY "
			+ "    CASE "
			+ "        WHEN c.shippingFee = 0 THEN '0'"
			+ "        WHEN c.shippingFee < 50 THEN '1-49'"
			+ "        WHEN c.shippingFee < 100 THEN '50-99'"
			+ "        WHEN c.shippingFee < 200 THEN '100-199'"
			+ "        ELSE '200+'"
			+ "    END"
			+ " ORDER BY "
			+ "    label")
	@RequestMapping("/feeRangePerCount") 	
	List<LabelValueLong> feeRangePerCount();
	
	@Query("SELECT NEW org.llin.demo.northwind.data.repository.model.LabelIntValueDouble"
			+ "    (EXTRACT(MONTH FROM c.shippedDate) AS label,"
			+ "    SUM(c.shippingFee) AS value)"
			+ " FROM "
			+ "    CustomerOrder c"
			+ " WHERE "
			+ "    c.shippedDate IS NOT NULL"
			+ " GROUP BY "
			+ "    EXTRACT(MONTH FROM c.shippedDate)"
			+ " ORDER BY "
			+ "    label")
	@RequestMapping("/shippingFeePerMonth")  	
	List<LabelIntValueDouble> shippingFeePerMonth();
	
    // === Most useful single-field filters ===
    List<CustomerOrder> findByCustomerId(Integer customerId);
    List<CustomerOrder> findByEmployeeId(Integer employeeId);
    List<CustomerOrder> findByShipperId(Integer shipperId);
    List<CustomerOrder> findByStatusId(Integer statusId);
    List<CustomerOrder> findByTaxStatusId(Integer taxStatusId);
    List<CustomerOrder> findByPaymentTypeId(Integer paymentTypeId);

    // String fields (exact + partial search)
    List<CustomerOrder> findByShipName(String shipName);
    List<CustomerOrder> findByShipNameContaining(String shipName);
    List<CustomerOrder> findByShipCity(String shipCity);
    List<CustomerOrder> findByShipCityContaining(String shipCity);
    List<CustomerOrder> findByShipStateProvince(String shipStateProvince);
    List<CustomerOrder> findByShipStateProvinceContaining(String shipStateProvince);
    List<CustomerOrder> findByShipCountryRegion(String shipCountryRegion);
    List<CustomerOrder> findByShipCountryRegionContaining(String shipCountryRegion);
    List<CustomerOrder> findByNotesContaining(String notes);
    List<CustomerOrder> findByPaymentType(String paymentType);

    // === Date range filters (very common for orders) ===
    List<CustomerOrder> findByOrderDateBetweenOrderByOrderDateAsc(
            LocalDateTime startDate, LocalDateTime endDate);

    List<CustomerOrder> findByShippedDateBetweenOrderByShippedDateAsc(
            LocalDateTime startDate, LocalDateTime endDate);

    List<CustomerOrder> findByPaidDateBetweenOrderByPaidDateAsc(
            LocalDateTime startDate, LocalDateTime endDate);

    // Single-date helpers
    List<CustomerOrder> findByOrderDateAfterOrderByOrderDateAsc(LocalDateTime date);
    List<CustomerOrder> findByShippedDateIsNull();           // not yet shipped
    List<CustomerOrder> findByPaidDateIsNull();              // not yet paid

    // === Money / numeric ranges ===
    List<CustomerOrder> findByShippingFeeBetweenOrderByShippingFeeAsc(
            BigDecimal minFee, BigDecimal maxFee);

    List<CustomerOrder> findByTaxesBetweenOrderByTaxesAsc(
            BigDecimal minTax, BigDecimal maxTax);

    List<CustomerOrder> findByTaxRateBetweenOrderByTaxRateAsc(
            Double minRate, Double maxRate);

    // === Combined (AND) examples – very powerful ===
    List<CustomerOrder> findByCustomerIdAndStatusId(Integer customerId, Integer statusId);
    List<CustomerOrder> findByOrderDateBetweenAndStatusIdOrderByOrderDateAsc(
            LocalDateTime startDate, LocalDateTime endDate, Integer statusId);

    List<CustomerOrder> findByCustomerIdAndShipCityContaining(
            Integer customerId, String shipCity);

    List<CustomerOrder> findByStatusIdAndPaidDateIsNull(Integer statusId); // pending payment

    // Optional: sort by most recent orders
    List<CustomerOrder> findByCustomerIdOrderByOrderDateDesc(Integer customerId);

	
}
