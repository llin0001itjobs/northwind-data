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
@Table(name = _EntityNames.PURCHASE_ORDER_DETAIL)
public class PurchaseOrderDetail implements _Entity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@OneToOne(cascade = { CascadeType.PERSIST, CascadeType.MERGE, CascadeType.DETACH, CascadeType.REFRESH })
	@JoinColumn(name = "purchase_order_id")
	private PurchaseOrder purchaseOrder;

	@Nullable
	@OneToOne(cascade = { CascadeType.PERSIST, CascadeType.MERGE, CascadeType.DETACH, CascadeType.REFRESH })
	@JoinColumn(name = "product_id")
	private Product product;

	@Nullable
	@OneToOne(cascade = { CascadeType.PERSIST, CascadeType.MERGE, CascadeType.DETACH, CascadeType.REFRESH })
	@JoinColumn(name = "inventory_transaction_id")
	private InventoryTransaction inventoryTransaction;

	private int quantity;

	@Value(value = "unit_cost")
	private double unitCost;

	@Value(value = "date_received")
	private LocalDateTime dateReceived;

	@Value(value = "posted_to_inventory")
	private boolean postedToInventory;

	public PurchaseOrderDetail() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public PurchaseOrder getPurchaseOrder() {
		return purchaseOrder;
	}

	public void setPurchaseOrder(PurchaseOrder purchaseOrder) {
		this.purchaseOrder = purchaseOrder;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public InventoryTransaction getInventoryTransaction() {
		return inventoryTransaction;
	}

	public void setInventoryTransaction(InventoryTransaction inventoryTransaction) {
		this.inventoryTransaction = inventoryTransaction;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public double getUnitCost() {
		return unitCost;
	}

	public void setUnitCost(double unitCost) {
		this.unitCost = unitCost;
	}

	public LocalDateTime getDateReceived() {
		return dateReceived;
	}

	public void setDateReceived(LocalDateTime dateReceived) {
		this.dateReceived = dateReceived;
	}

	public boolean isPostedToInventory() {
		return postedToInventory;
	}

	public void setPostedToInventory(boolean postedToInventory) {
		this.postedToInventory = postedToInventory;
	}

	@Override
	public String toString() {
		return "PurchaseOrderDetail [id=" + id + ", purchaseOrder=" + purchaseOrder + ", product=" + product
				+ ", inventoryTransaction=" + inventoryTransaction + ", quantity=" + quantity + ", unitCost=" + unitCost
				+ ", dateReceived=" + dateReceived + ", postedToInventory=" + postedToInventory + "]";
	}

}
