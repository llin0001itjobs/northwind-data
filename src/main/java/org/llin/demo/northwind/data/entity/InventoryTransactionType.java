package org.llin.demo.northwind.data.entity;
import org.springframework.beans.factory.annotation.Value;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name=_EntityNames.INVENTORY_TRANSACTION_TYPE)
public class InventoryTransactionType {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Value(value = "type_name")
	private String typeName;

	public InventoryTransactionType() {
		super();
	}

	public InventoryTransactionType(int id, String typeName) {
		super();
		this.id = id;
		this.typeName = typeName;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTypeName() {
		return typeName;
	}

	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}

	@Override
	public String toString() {
		return "InventoryTransactionType [id=" + id + ", typeName=" + typeName + "]";
	}
	
}
