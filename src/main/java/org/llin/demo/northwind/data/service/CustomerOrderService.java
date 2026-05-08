package org.llin.demo.northwind.data.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.llin.demo.northwind.data.entity.CustomerOrder;
import org.llin.demo.northwind.data.repository.CustomerOrderRepository;
import org.llin.demo.northwind.data.util.PhoneFormatUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CustomerOrderService  {
	
	@Autowired
	private CustomerOrderRepository cor;
		
	public List<CustomerOrder> getCustomerOrders() {
		return getCustomerOrders(Integer.MAX_VALUE);
	}
	
	public List<CustomerOrder> getCustomerOrders(int size) {
		List<CustomerOrder> list = (List<CustomerOrder>) cor.findAll();
		list = formatPhoneNumber(list);
		size = list.size() < size ? list.size() : size; 
		list = list.subList(0, size);
		return list;				
	}

	public Optional<CustomerOrder> getCustomerOrder(Integer id) {
		return  cor.findById(id);
	}

	public long getCount() {
		return  cor.count();
	} 
	
	private List<CustomerOrder> formatPhoneNumber(List<CustomerOrder> list) {
		List<CustomerOrder> newList = new ArrayList<>(); 
		for (CustomerOrder co: list) {
			co.getCustomer().setBusinessPhone(PhoneFormatUtil.formatPhoneNumber(co.getCustomer().getBusinessPhone()));
			co.getCustomer().setFaxNumber(PhoneFormatUtil.formatPhoneNumber(co.getCustomer().getFaxNumber()));
			co.getCustomer().setHomePhone(PhoneFormatUtil.formatPhoneNumber(co.getCustomer().getHomePhone()));
			co.getCustomer().setMobilePhone(PhoneFormatUtil.formatPhoneNumber(co.getCustomer().getMobilePhone()));
			co.getEmployee().setBusinessPhone(PhoneFormatUtil.formatPhoneNumber(co.getEmployee().getBusinessPhone()));
			co.getEmployee().setFaxNumber(PhoneFormatUtil.formatPhoneNumber(co.getEmployee().getFaxNumber()));
			co.getEmployee().setHomePhone(PhoneFormatUtil.formatPhoneNumber(co.getEmployee().getHomePhone()));
			co.getEmployee().setMobilePhone(PhoneFormatUtil.formatPhoneNumber(co.getEmployee().getMobilePhone()));
			newList.add(co);
		}
		return newList;
	}
}
