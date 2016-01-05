package br.com.ohexpress.model;

import java.util.Comparator;

public class Distancia {

	private Loja loja;
	private String distText;
	private int distNumber;
	
	public Loja getLoja() {
		return loja;
	}
	public void setLoja(Loja loja) {
		this.loja = loja;
	}
	public String getDistText() {
		return distText;
	}
	public void setDistText(String distText) {
		this.distText = distText;
	}
	public int getDistNumber() {
		return distNumber;
	}
	public void setDistNumber(int distNumber) {
		this.distNumber = distNumber;
	}
	  // Comparator
    public static class CompId implements Comparator<Distancia> {

		@Override
		public int compare(Distancia o1, Distancia o2) {
			return o1.getDistNumber() - o2.getDistNumber();
			
		}
    }
	
	
}
