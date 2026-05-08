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
@Table(name = _EntityNames.CUSTOMER_ORDER)
public class CustomerOrder implements _Entity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Nullable
	@OneToOne(cascade = { CascadeType.PERSIST, CascadeType.MERGE, CascadeType.DETACH, CascadeType.REFRESH })
	@JoinColumn(name = "employee_id")
	private Employee employee;

	@OneToOne(cascade = { CascadeType.PERSIST, CascadeType.MERGE, CascadeType.DETACH, CascadeType.REFRESH })
	@JoinColumn(name = "customer_id")
	private Customer customer;

	@Value(value = "order_date")
	private LocalDateTime orderDate;

	@Value(value = "shipped_date")
	private LocalDateTime shippedDate;

	@Nullable
	@OneToOne(cascade = { CascadeType.PERSIST, CascadeType.MERGE, CascadeType.DETACH, CascadeType.REFRESH })
	@JoinColumn(name = "shipper_id")
	private Shipper shipper;

	@Value(value = "ship_name")
	private String shipName;

	@Value(value = "ship_address")
	private String shipAddress;

	@Value(value = "ship_city")
	private String shipCity;

	@Value(value = "ship_state_province")
	private String shipStateProvince;

	@Value(value = "ship_zip_postal_code")
	private String shipZipPostalCode;

	@Value(value = "ship_country_region")
	private String shipCountryRegion;

	@Value(value = "shipping_fee")
	private double shippingFee;

	private double taxes;

	@Value(value = "payment_type")	
	private String paymentType;

	@Value(value = "paid_date")
	private LocalDateTime paidDate;

	private String notes;

	@Value(value = "tax_rate")
	private double taxRate;

	@Nullable
	@OneToOne(cascade = { CascadeType.PERSIST, CascadeType.MERGE, CascadeType.DETACH, CascadeType.REFRESH })
	@JoinColumn(name = "tax_status_id")
	private OrderTaxStatus orderTaxStatus;

	@OneToOne(cascade = { CascadeType.PERSIST, CascadeType.MERGE, CascadeType.DETACH, CascadeType.REFRESH })
	@JoinColumn(name = "status_id")
	private OrderStatus orderStatus;

	public CustomerOrder() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Employee getEmployee() {
		return employee;
	}

	public void setEmployee(Employee employee) {
		this.employee = employee;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public Shipper getShipper() {
		return shipper;
	}

	public void setShipper(Shipper shipper) {
		this.shipper = shipper;
	}

	public OrderTaxStatus getOrderTaxStatus() {
		return orderTaxStatus;
	}

	public void setOrderTaxStatus(OrderTaxStatus orderTaxStatus) {
		this.orderTaxStatus = orderTaxStatus;
	}

	public OrderStatus getOrderStatus() {
		return orderStatus;
	}

	public void setOrderStatus(OrderStatus orderStatus) {
		this.orderStatus = orderStatus;
	}

	public String getShipName() {
		return shipName;
	}

	public void setShipName(String shipName) {
		this.shipName = shipName;
	}

	public String getShipAddress() {
		return shipAddress;
	}

	public void setShipAddress(String shipAddress) {
		this.shipAddress = shipAddress;
	}

	public String getShipCity() {
		return shipCity;
	}

	public void setShipCity(String shipCity) {
		this.shipCity = shipCity;
	}

	public String getShipStateProvince() {
		return shipStateProvince;
	}

	public void setShipStateProvince(String shipStateProvince) {
		this.shipStateProvince = shipStateProvince;
	}

	public String getShipZipPostalCode() {
		return shipZipPostalCode;
	}

	public void setShipZipPostalCode(String shipZipPostalCode) {
		this.shipZipPostalCode = shipZipPostalCode;
	}

	public String getShipCountryRegion() {
		return shipCountryRegion;
	}

	public void setShipCountryRegion(String shipCountryRegion) {
		this.shipCountryRegion = shipCountryRegion;
	}

	public double getShippingFee() {
		return shippingFee;
	}

	public void setShippingFee(double shippingFee) {
		this.shippingFee = shippingFee;
	}

	public LocalDateTime getShippedDate() {
		return shippedDate;
	}

	public void setShippedDate(LocalDateTime shippedDate) {
		this.shippedDate = shippedDate;
	}

	public LocalDateTime getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(LocalDateTime orderDate) {
		this.orderDate = orderDate;
	}

	public double getTaxes() {
		return taxes;
	}

	public void setTaxes(double taxes) {
		this.taxes = taxes;
	}

	public String getPaymentType() {
		return paymentType;
	}

	public void setPaymentType(String paymentType) {
		this.paymentType = paymentType;
	}

	public LocalDateTime getPaidDate() {
		return paidDate;
	}

	public void setPaidDate(LocalDateTime paidDate) {
		this.paidDate = paidDate;
	}

	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}

	public double getTaxRate() {
		return taxRate;
	}

	public void setTaxRate(double taxRate) {
		this.taxRate = taxRate;
	}

	@Override
	public String toString() {
		return "CustomerOrder [id=" + id + ", employeeId=" + employee + ", customerId=" + customer + ", orderDate="
				+ orderDate + ", shippedDate=" + shippedDate + ", shipperId=" + shipper + ", shipName=" + shipName
				+ ", shipAddress=" + shipAddress + ", shipCity=" + shipCity + ", shipStateProvince=" + shipStateProvince
				+ ", shipZipPostalCode=" + shipZipPostalCode + ", shipCountryRegion=" + shipCountryRegion
				+ ", shippingFee=" + shippingFee + ", taxes=" + taxes + ", paymentType=" + paymentType + ", paidDate="
				+ paidDate + ", notes=" + notes + ", taxRate=" + taxRate + ", orderTaxStatus=" + orderTaxStatus
				+ ", orderStatus=" + orderStatus + "]";
	}

}
