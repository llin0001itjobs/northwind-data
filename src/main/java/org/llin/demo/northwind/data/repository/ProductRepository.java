package org.llin.demo.northwind.data.repository;

import java.math.BigDecimal;
import java.util.List;

import org.llin.demo.northwind.data.entity.Product;
import org.llin.demo.northwind.data.repository.model.LabelValueLong;
import org.llin.demo.northwind.data.repository.model.LabelValueLongValueDouble;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(path = "product")
public interface ProductRepository extends JpaRepository<Product, Integer> {

	@Query(value = """
			 SELECT
			    p.category AS label,
			    COUNT(*) AS valueLong,
			    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM product), 2) AS valueDouble
			FROM
			    product p
			GROUP BY
			    p.category
			ORDER BY
			    p.category
			""", nativeQuery = true)
	List<LabelValueLongValueDouble> categoryRatios();

	@Query(value = """
			SELECT
			    CASE
			        WHEN list_price < 17.60 THEN '1.80 - 17.59'
			        WHEN list_price < 34.20 THEN '17.60 - 34.19'
			        WHEN list_price < 50.80 THEN '34.20 - 50.79'
			        WHEN list_price < 67.40 THEN '50.80 - 67.39'
			        ELSE '67.40 - 81.00'
			    END AS label,
			    COUNT(*) AS value
			FROM product
			GROUP BY
			    CASE
			        WHEN list_price < 17.60 THEN '1.80 - 17.59'
			        WHEN list_price < 34.20 THEN '17.60 - 34.19'
			        WHEN list_price < 50.80 THEN '34.20 - 50.79'
			        WHEN list_price < 67.40 THEN '50.80 - 67.39'
			        ELSE '67.40 - 81.00'
			    END
			ORDER BY label
			""", nativeQuery = true)
	List<LabelValueLong> priceRangePerListPrice();

	@Query(value = """
			SELECT
			    CASE
			        WHEN standard_cost < 12.5 THEN '0.5 - 12.49'
			        WHEN standard_cost < 25 THEN '12.5 - 24.99'
			        WHEN standard_cost < 37.5 THEN '25 - 37.49'
			        WHEN standard_cost < 50 THEN '37.5 - 49.99'
			        ELSE '50 - 60.75'
			    END AS label,
			    COUNT(*) AS value
			FROM Product
			GROUP BY
			    CASE
			        WHEN standard_cost < 12.5 THEN '0.5 - 12.49'
			        WHEN standard_cost < 25 THEN '12.5 - 24.99'
			        WHEN standard_cost < 37.5 THEN '25 - 37.49'
			        WHEN standard_cost < 50 THEN '37.5 - 49.99'
			        ELSE '50 - 60.75'
			    END
			ORDER BY label
			""", nativeQuery = true)
	List<LabelValueLong> priceRangePerStandardCost();

    List<Product> findByProductCode(String productCode);
    List<Product> findByProductNameContaining(String productName);   // most useful
    List<Product> findByCategoryContaining(String category);
    List<Product> findByDescriptionContaining(String description);

    List<Product> findByDiscontinued(Boolean discontinued);

    // Price / level ranges
    List<Product> findByStandardCostBetweenOrderByStandardCostAsc(BigDecimal min, BigDecimal max);
    List<Product> findByListPriceBetweenOrderByListPriceAsc(BigDecimal min, BigDecimal max);
    List<Product> findByReorderLevelBetweenOrderByReorderLevelAsc(Integer min, Integer max);
    List<Product> findByTargetLevelBetweenOrderByTargetLevelAsc(Integer min, Integer max);
    List<Product> findByMinimumReorderQuantityBetweenOrderByMinimumReorderQuantityAsc(Integer min, Integer max);

    // Combined examples
    List<Product> findByCategoryAndDiscontinued(String category, Boolean discontinued);

}
