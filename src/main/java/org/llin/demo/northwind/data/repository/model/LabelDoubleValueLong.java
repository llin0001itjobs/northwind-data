package org.llin.demo.northwind.data.repository.model;

public class LabelDoubleValueLong {
	
	private double label;
	
	private long value;

	public LabelDoubleValueLong(double label, long value) {
		super();
		this.label = label;
		this.value = value;
	}

	public double getLabel() {
		return label;
	}

	public void setLabel(double label) {
		this.label = label;
	}

	public long getValue() {
		return value;
	}

	public void setValue(long value) {
		this.value = value;
	}


	
}
