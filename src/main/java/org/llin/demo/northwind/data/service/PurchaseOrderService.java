package org.llin.demo.northwind.data.service;

import java.util.List;
import java.util.Optional;

import org.llin.demo.northwind.data.entity.PurchaseOrder;
import org.llin.demo.northwind.data.repository.PurchaseOrderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PurchaseOrderService {
	
	@Autowired
	private PurchaseOrderRepository por;
		
	public List<PurchaseOrder> getPurchaseOrders() {
		return  (List<PurchaseOrder>) por.findAll();
	}

	public Optional<PurchaseOrder> getPurchaseOrder(Integer id) {
		return  por.findById(id);
	}

	public long getCount() {
		return  por.count();
	}
}
