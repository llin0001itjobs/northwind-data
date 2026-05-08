package org.llin.demo.northwind.data.entity;

import org.springframework.beans.factory.annotation.Value;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name=_EntityNames.ORDER_TAX_STATUS)
public class OrderTaxStatus {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Value(value = "tax_status_name")
	private String taxStatusName;
	
	public OrderTaxStatus() {
		super();
	}

	public OrderTaxStatus(int id, String taxStatusName) {
		super();
		this.id = id;
		this.taxStatusName = taxStatusName;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTaxStatusName() {
		return taxStatusName;
	}

	public void setTaxStatusName(String taxStatusName) {
		this.taxStatusName = taxStatusName;
	}

	@Override
	public String toString() {
		return "OrderTaxStatus [id=" + id + ", taxStatusName=" + taxStatusName + "]";
	}

	
}
