package org.llin.demo.northwind.data.repository;

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
	

	
}
