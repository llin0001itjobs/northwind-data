package org.llin.demo.northwind.data.controller;

import java.util.List;

import org.llin.demo.northwind.data.repository.CustomerOrderRepository;
import org.llin.demo.northwind.data.repository.ProductRepository;
import org.llin.demo.northwind.data.repository.PurchaseOrderDetailRepository;
import org.llin.demo.northwind.data.repository.model.LabelDoubleValueLong;
import org.llin.demo.northwind.data.repository.model.LabelIntValueDouble;
import org.llin.demo.northwind.data.repository.model.LabelValueLong;
import org.llin.demo.northwind.data.repository.model.LabelValueLongValueDouble;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class CustomSqlController {

	@Autowired
	private CustomerOrderRepository customerOrderRepository;

	@Autowired
	private ProductRepository productRepository;

	@Autowired
	private PurchaseOrderDetailRepository purchaseOrderDetailRepository;

	@GetMapping("/customerOrder/feeRangePerCount")
	public ResponseEntity<List<LabelValueLong>> getFeeRangePerCount() {
		List<LabelValueLong> priceRange = customerOrderRepository.feeRangePerCount();
		return ResponseEntity.ok(priceRange);
	}

	@GetMapping("/customerOrder/shippingFeePerMonth")
	public ResponseEntity<List<LabelIntValueDouble>> getShippingFeePerMonth() {
		List<LabelIntValueDouble> quantity = customerOrderRepository.shippingFeePerMonth();
		return ResponseEntity.ok(quantity);
	}

	@GetMapping("/product/categoryRatios")
	public ResponseEntity<List<LabelValueLongValueDouble>> getCategoryRatios() {
		List<LabelValueLongValueDouble> ratios = productRepository.categoryRatios();
		return ResponseEntity.ok(ratios);
	}

	@GetMapping("/product/priceRangePerListPrice")
	public ResponseEntity<List<LabelValueLong>> getPriceRangePerListPrice() {
		List<LabelValueLong> priceRange = productRepository.priceRangePerListPrice();
		return ResponseEntity.ok(priceRange);
	}

	@GetMapping("/product/priceRangePerStandardCost")
	public ResponseEntity<List<LabelValueLong>> getPriceRangePerStandardCost() {
		List<LabelValueLong> priceRange = productRepository.priceRangePerStandardCost();
		return ResponseEntity.ok(priceRange);
	}

	@GetMapping("/purchaseOrderDetail/quantityPerCostRange")
	public ResponseEntity<List<LabelValueLong>> getQuantityPerCostRange() {
		List<LabelValueLong> priceRange = purchaseOrderDetailRepository.quantityPerCostRange();
		return ResponseEntity.ok(priceRange);
	}

	@GetMapping("/purchaseOrderDetail/quantityPerUnitCost")
	public ResponseEntity<List<LabelDoubleValueLong>> getQuantityPerUnitCost() {
		List<LabelDoubleValueLong> quantity = purchaseOrderDetailRepository.quantityPerUnitCost();
		return ResponseEntity.ok(quantity);
	}

}