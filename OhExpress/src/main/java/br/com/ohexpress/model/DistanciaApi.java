package br.com.ohexpress.model;

import java.util.ArrayList;

import br.com.ohexpress.model.Google.Rows;
/*
class Elements{

	private Distance distance;
	private Duration duration;

	public Distance getDistance() {
		return distance;
	}
	public void setDistance(Distance distance) {
		this.distance = distance;
	}
	public Duration getDuration() {
		return duration;
	}
	public void setDuration(Duration duration) {
		this.duration = duration;
	}
	
	
}
*/
/*
class Rows{
	
	private ArrayList<Elements> elements;

	public ArrayList<Elements> getElements() {
		return elements;
	}

	public void setElements(ArrayList<Elements> elements) {
		this.elements = elements;
	}
	
}
*/
/*
class Duration{
	private int value;
    private String text;
    private String status;
    
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getValue() {
		return value;
	}
	public void setValue(int value) {
		this.value = value;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
    
}
*/
/*
class Distance{
	private int value;
	private String text ;
	private String status;
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public double getValue() {
		return value;
	}
	public void setValue(int value) {
		this.value = value;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	
}
*/
public class DistanciaApi {
	
	private ArrayList<String> destination_addresses;
	private ArrayList<String> origin_addresses;
	private ArrayList<Rows> rows;
	private String status;
	

	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}

	public ArrayList<Rows> getRows() {
		return rows;
	}
	public void setRows(ArrayList<Rows> rows) {
		this.rows = rows;
	}
	
	public ArrayList<String> getDestination_addresses() {
		return destination_addresses;
	}
	
	public void setDestination_addresses(ArrayList<String> destination_addresses) {
		this.destination_addresses = destination_addresses;
	}
	public ArrayList<String> getOrigin_addresses() {
		return origin_addresses;
	}
	public void setOrigin_addresses(ArrayList<String> origin_addresses) {
		this.origin_addresses = origin_addresses;
	}
	@Override
	public String toString() {
		return "DistanciaApi [destination_addresses=" + destination_addresses
				+ ", origin_addresses=" + origin_addresses + ", rows=" + rows
				+ ", status=" + status + "]";
	}

	//private String 


}
