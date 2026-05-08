package org.llin.demo.northwind.data.repository.model;

public class LabelIntValueLong {

	private int label;

	private long value;

	public LabelIntValueLong(int label, long value) {
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

	public long getValue() {
		return value;
	}

	public void setValue(long value) {
		this.value = value;
	}

}
