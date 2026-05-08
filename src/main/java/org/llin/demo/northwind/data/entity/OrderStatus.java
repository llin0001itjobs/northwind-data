package org.llin.demo.northwind.data.entity;

import org.springframework.beans.factory.annotation.Value;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name=_EntityNames.ORDER_STATUS)
public class OrderStatus {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Value(value = "status_name")
	private String statusName;

	public OrderStatus() {
		super();
	}

	public OrderStatus(int id, String statusName) {
		super();
		this.id = id;
		this.statusName = statusName;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getStatusName() {
		return statusName;
	}

	public void setStatusName(String statusName) {
		this.statusName = statusName;
	}

	@Override
	public String toString() {
		return "OrderStatus [id=" + id + ", statusName=" + statusName + "]";
	}
	
	
	
}
