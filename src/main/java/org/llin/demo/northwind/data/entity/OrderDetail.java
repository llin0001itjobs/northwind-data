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
@Table(name = _EntityNames.ORDER_DETAIL)
public class OrderDetail implements _Entity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@OneToOne(cascade = { CascadeType.PERSIST, CascadeType.MERGE, CascadeType.DETACH, CascadeType.REFRESH })
	@JoinColumn(name = "customer_order_id")
	private CustomerOrder customerOrder;

	@Nullable
	@OneToOne(cascade = { CascadeType.PERSIST, CascadeType.MERGE, CascadeType.DETACH, CascadeType.REFRESH })
	@JoinColumn(name = "product_id")
	private Product product;

	@Nullable
	@OneToOne(cascade = { CascadeType.PERSIST, CascadeType.MERGE, CascadeType.DETACH, CascadeType.REFRESH })
	@JoinColumn(name = "status_id")
	private OrderStatus orderStatus;

	@Nullable
	@OneToOne(cascade = { CascadeType.PERSIST, CascadeType.MERGE, CascadeType.DETACH, CascadeType.REFRESH })
	@JoinColumn(name = "purchase_order_id")
	private PurchaseOrder purchaseOrder;

	@Nullable
	@OneToOne(cascade = { CascadeType.PERSIST, CascadeType.MERGE, CascadeType.DETACH, CascadeType.REFRESH })
	@JoinColumn(name = "inventory_transaction_id")
	private InventoryTransaction inventoryTransaction;

	private double quantity;

	@Value(value = "unit_price")
	private double unitPrice;

	private double discount;

	@Value(value = "date_allocated")
	private LocalDateTime dateAllocated;

	public OrderDetail() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public CustomerOrder getCustomerOrder() {
		return customerOrder;
	}

	public void setCustomerOrder(CustomerOrder customerOrder) {
		this.customerOrder = customerOrder;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public OrderStatus getOrderStatus() {
		return orderStatus;
	}

	public void setOrderStatus(OrderStatus orderStatus) {
		this.orderStatus = orderStatus;
	}

	public PurchaseOrder getPurchaseOrder() {
		return purchaseOrder;
	}

	public void setPurchaseOrder(PurchaseOrder purchaseOrder) {
		this.purchaseOrder = purchaseOrder;
	}

	public InventoryTransaction getInventoryTransaction() {
		return inventoryTransaction;
	}

	public void setInventoryTransaction(InventoryTransaction inventoryTransaction) {
		this.inventoryTransaction = inventoryTransaction;
	}

	public double getQuantity() {
		return quantity;
	}

	public void setQuantity(double quantity) {
		this.quantity = quantity;
	}

	public double getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(double unitPrice) {
		this.unitPrice = unitPrice;
	}

	public double getDiscount() {
		return discount;
	}

	public void setDiscount(double discount) {
		this.discount = discount;
	}

	public LocalDateTime getDateAllocated() {
		return dateAllocated;
	}

	public void setDateAllocated(LocalDateTime dateAllocated) {
		this.dateAllocated = dateAllocated;
	}

	@Override
	public String toString() {
		return "OrderDetail [id=" + id + ", customerOrder=" + customerOrder + ", product=" + product + ", orderStatus="
				+ orderStatus + ", purchaseOrder=" + purchaseOrder + ", inventoryTransaction=" + inventoryTransaction
				+ ", quantity=" + quantity + ", unitPrice=" + unitPrice + ", discount=" + discount + ", dateAllocated="
				+ dateAllocated + "]";
	}

}
