package org.llin.demo.northwind.data.repository.model;

public class LabelValueLongValueDouble {
	
	private String label;
	
	private long valueLong;
	
	private double valueDouble;
	
	public LabelValueLongValueDouble(String label, long valueLong, double valueDouble) {
		super();
		this.label = label;
		this.valueLong = valueLong;
		this.valueDouble = valueDouble;
	}

	public String getLabel() {
		return label;
	}

	public void setLabel(String label) {
		this.label = label;
	}

	public long getValueLong() {
		return valueLong;
	}

	public void setValueLong(long valueLong) {
		this.valueLong = valueLong;
	}

	public double getValueDouble() {
		return valueDouble;
	}

	public void setValueDouble(double valueDouble) {
		this.valueDouble = valueDouble;
	}


}
