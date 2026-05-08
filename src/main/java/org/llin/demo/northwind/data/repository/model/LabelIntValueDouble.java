package org.llin.demo.northwind.data.repository.model;

public class LabelIntValueDouble {
	
	private int label;
	
	private double value;

	public LabelIntValueDouble(int label, double value) {
		super();
		this.label = label;
		this.value = value;
	}

	public int getLabel() {
		return label;
	}

	public void setLabel(int label) {
		this.label = label;
	}

	public double getValue() {
		return value;
	}

	public void setValue(double value) {
		this.value = value;
	}


	
}
