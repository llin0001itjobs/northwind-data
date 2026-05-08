package org.llin.demo.northwind.data.repository.model;

public class LabelValueLong {
	
	private String label;
	
	private long value;

	public LabelValueLong(String label, long value) {
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

	public long getValue() {
		return value;
	}

	public void setValue(long value) {
		this.value = value;
	}


	
}
