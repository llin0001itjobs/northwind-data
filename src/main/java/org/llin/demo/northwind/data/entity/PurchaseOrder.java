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
@Table(name = _EntityNames.PURCHASE_ORDER)
public class PurchaseOrder implements _Entity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Nullable
	@OneToOne(cascade = { CascadeType.PERSIST, CascadeType.MERGE, CascadeType.DETACH, CascadeType.REFRESH })
	@JoinColumn(name = "approved_by")
	private Employee approvedBy;

	@Nullable
	@OneToOne(cascade = { CascadeType.PERSIST, CascadeType.MERGE, CascadeType.DETACH, CascadeType.REFRESH })
	@JoinColumn(name = "created_by")
	private Employee createdBy;

	@Nullable
	@OneToOne(cascade = { CascadeType.PERSIST, CascadeType.MERGE, CascadeType.DETACH, CascadeType.REFRESH })
	@JoinColumn(name = "submitted_by")
	private Employee submittedBy;

	@Nullable
	@OneToOne(cascade = { CascadeType.PERSIST, CascadeType.MERGE, CascadeType.DETACH, CascadeType.REFRESH })
	@JoinColumn(name = "supplier_id")
	private Supplier supplier;

	@OneToOne(cascade = { CascadeType.PERSIST, CascadeType.MERGE, CascadeType.DETACH, CascadeType.REFRESH })
	@JoinColumn(name = "status_id")
	private OrderStatus orderStatus;

	@Value(value = "approved_date")
	private LocalDateTime approvedDate;

	@Value(value = "submitted_date")
	private LocalDateTime submittedDate;

	@Value(value = "creation_date")
	private LocalDateTime creationDate;

	@Value(value = "expected_date")
	private LocalDateTime expectedDate;

	@Value(value = "shipping_fee")
	private double shippingFee;

	private double taxes;

	@Value(value = "payment_date")
	private LocalDateTime paymentDate;

	@Value(value = "payment_amount")
	private double paymentAmount;

	@Value(value = "payment_method")
	private String paymentMethod;

	private String notes;

	public PurchaseOrder() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Employee getApprovedBy() {
		return approvedBy;
	}

	public void setApprovedBy(Employee approvedBy) {
		this.approvedBy = approvedBy;
	}

	public Employee getCreatedBy() {
		return createdBy;
	}

	public void setCreatedBy(Employee createdBy) {
		this.createdBy = createdBy;
	}

	public Employee getSubmittedBy() {
		return submittedBy;
	}

	public void setSubmittedBy(Employee submittedBy) {
		this.submittedBy = submittedBy;
	}

	public Supplier getSupplier() {
		return supplier;
	}

	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	}

	public OrderStatus getOrderStatus() {
		return orderStatus;
	}

	public void setOrderStatus(OrderStatus orderStatus) {
		this.orderStatus = orderStatus;
	}

	public LocalDateTime getApprovedDate() {
		return approvedDate;
	}

	public void setApprovedDate(LocalDateTime approvedDate) {
		this.approvedDate = approvedDate;
	}

	public LocalDateTime getSubmittedDate() {
		return submittedDate;
	}

	public void setSubmittedDate(LocalDateTime submittedDate) {
		this.submittedDate = submittedDate;
	}

	public LocalDateTime getCreationDate() {
		return creationDate;
	}

	public void setCreationDate(LocalDateTime creationDate) {
		this.creationDate = creationDate;
	}

	public LocalDateTime getExpectedDate() {
		return expectedDate;
	}

	public void setExpectedDate(LocalDateTime expectedDate) {
		this.expectedDate = expectedDate;
	}

	public double getShippingFee() {
		return shippingFee;
	}

	public void setShippingFee(double shippingFee) {
		this.shippingFee = shippingFee;
	}

	public double getTaxes() {
		return taxes;
	}

	public void setTaxes(double taxes) {
		this.taxes = taxes;
	}

	public LocalDateTime getPaymentDate() {
		return paymentDate;
	}

	public void setPaymentDate(LocalDateTime paymentDate) {
		this.paymentDate = paymentDate;
	}

	public double getPaymentAmount() {
		return paymentAmount;
	}

	public void setPaymentAmount(double paymentAmount) {
		this.paymentAmount = paymentAmount;
	}

	public String getPaymentMethod() {
		return paymentMethod;
	}

	public void setPaymentMethod(String paymentMethod) {
		this.paymentMethod = paymentMethod;
	}

	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}

	@Override
	public String toString() {
		return "PurchaseOrder [id=" + id + ", approvedBy=" + approvedBy + ", createdBy=" + createdBy + ", submittedBy="
				+ submittedBy + ", supplier=" + supplier + ", orderStatus=" + orderStatus + ", approvedDate="
				+ approvedDate + ", submittedDate=" + submittedDate + ", creationDate=" + creationDate
				+ ", expectedDate=" + expectedDate + ", shippingFee=" + shippingFee + ", taxes=" + taxes
				+ ", paymentDate=" + paymentDate + ", paymentAmount=" + paymentAmount + ", paymentMethod="
				+ paymentMethod + ", notes=" + notes + "]";
	}

}
