package org.llin.demo.northwind.data.repository.model;

public class LabelValueDouble {
	
	private String label;
	
	private double value;

	public LabelValueDouble(String label, double value) {
		super();
		this.label = label;
		this.value = value;
	}

	public String getLabel() {
		return label;
	}

	public void setLabel(String label) {
		this.label = label;
	}

	public double getValue() {
		return value;
	}

	public void setValue(double value) {
		this.value = value;
	}
	
}
