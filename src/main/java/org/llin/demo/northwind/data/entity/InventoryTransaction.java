package org.llin.demo.northwind.data.entity;

import java.time.LocalDateTime;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.lang.Nullable;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = _EntityNames.INVENTORY_TRANSACTION)
public class InventoryTransaction implements _Entity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@OneToOne(cascade = { CascadeType.PERSIST, CascadeType.MERGE, CascadeType.DETACH, CascadeType.REFRESH })
	@JoinColumn(name = "product_id")
	private Product product;

	@OneToOne(cascade = { CascadeType.PERSIST, CascadeType.MERGE, CascadeType.DETACH, CascadeType.REFRESH })
	@JoinColumn(name = "transaction_type")
	private InventoryTransactionType inventoryTransactionType;

	@Value(value = "transaction_created_date")
	private LocalDateTime transactionCreatedDate;

	@Value(value = "transaction_modified_date")
	private LocalDateTime transactionModifiedDate;

	private double quantity;
	private String comments;

	@Nullable
	@OneToOne(cascade = { CascadeType.PERSIST, CascadeType.MERGE, CascadeType.DETACH, CascadeType.REFRESH })
	@JoinColumn(name = "customer_order_id")
	private CustomerOrder customerOrder;

	@Nullable
	@OneToOne(cascade = { CascadeType.PERSIST, CascadeType.MERGE, CascadeType.DETACH, CascadeType.REFRESH })
	@JoinColumn(name = "purchase_order_id")
	private PurchaseOrder purchaseOrder;

	public InventoryTransaction() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public InventoryTransactionType getInventoryTransactionType() {
		return inventoryTransactionType;
	}

	public void setInventoryTransactionType(InventoryTransactionType inventoryTransactionType) {
		this.inventoryTransactionType = inventoryTransactionType;
	}

	public CustomerOrder getCustomerOrder() {
		return customerOrder;
	}

	public void setCustomerOrderId(CustomerOrder customerOrder) {
		this.customerOrder = customerOrder;
	}

	public PurchaseOrder getPurchaseOrder() {
		return purchaseOrder;
	}

	public void setPurchaseOrder(PurchaseOrder purchaseOrder) {
		this.purchaseOrder = purchaseOrder;
	}

	public LocalDateTime getTransactionCreatedDate() {
		return transactionCreatedDate;
	}

	public void setTransactionCreatedDate(LocalDateTime transactionCreatedDate) {
		this.transactionCreatedDate = transactionCreatedDate;
	}

	public LocalDateTime getTransactionModifiedDate() {
		return transactionModifiedDate;
	}

	public void setTransactionModifiedDate(LocalDateTime transactionModifiedDate) {
		this.transactionModifiedDate = transactionModifiedDate;
	}

	public double getQuantity() {
		return quantity;
	}

	public void setQuantity(double quantity) {
		this.quantity = quantity;
	}

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	@Override
	public String toString() {
		return "InventoryTransaction [id=" + id + ", product=" + product + ", inventoryTransactionType="
				+ inventoryTransactionType + ", transactionCreatedDate=" + transactionCreatedDate
				+ ", transactionModifiedDate=" + transactionModifiedDate + ", quantity=" + quantity + ", comments="
				+ comments + ", customerOrderId=" + customerOrder + ", purchaseOrder=" + purchaseOrder + "]";
	}

}
