package org.llin.demo.northwind.data.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name=_EntityNames.PURCHASE_ORDER_STATUS)
public class PurchaseOrderStatus {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String status;

	public PurchaseOrderStatus() {
		super();
	}

	public PurchaseOrderStatus(int id, String status) {
		super();
		this.id = id;
		this.status = status;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "PurchaseOrderStatus [id=" + id + ", status=" + status + "]";
	}
	
}
