package org.llin.demo.northwind.data.audit;

import java.time.LocalDateTime;

import org.llin.demo.northwind.data.entity._EntityNames;
import org.springframework.beans.factory.annotation.Value;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = _EntityNames.AUDIT_CENTRAL)
public class AuditCentral {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String action;
	
	@Value(value = "table_name")
	private String tableName;
	
	@Value(value = "date_created")
	private LocalDateTime dateCreated;
		
	@Value(value = "date_updated")
	private LocalDateTime dateUpdated;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAction() {
		return action;
	}

	public void setAction(String action) {
		this.action = action;
	}

	public String getTableName() {
		return tableName;
	}

	public void setTableName(String tableName) {
		this.tableName = tableName;
	}

	public LocalDateTime getDateCreated() {
		return dateCreated;
	}

	public void setDateCreated(LocalDateTime dateCreated) {
		this.dateCreated = dateCreated;
	}

	public LocalDateTime getDateUpdated() {
		return dateUpdated;
	}

	public void setDateUpdated(LocalDateTime dateUpdated) {
		this.dateUpdated = dateUpdated;
	}
	
}
