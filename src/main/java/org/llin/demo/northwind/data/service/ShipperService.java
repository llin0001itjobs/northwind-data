package org.llin.demo.northwind.data.service;

import java.util.List;
import java.util.Optional;

import org.llin.demo.northwind.data.entity.Shipper;
import org.llin.demo.northwind.data.repository.ShipperRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ShipperService {

	@Autowired
	private ShipperRepository shr;

	public List<Shipper> getShippers() {
		return getShippers(Integer.MAX_VALUE);			
	}
	
	public List<Shipper> getShippers(int size) {
		List<Shipper> list = (List<Shipper>) shr.findAll();
		size = list.size() < size ? list.size() : size;
		list = list.subList(0, size);
		return list;			
	}

	public Optional<Shipper> getShipper(Integer id) {
		return shr.findById(id);
	}

	public long getCount() {
		return shr.count();
	}
}
