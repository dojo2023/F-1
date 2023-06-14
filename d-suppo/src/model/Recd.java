package model; //呑む人用の質問を格納するJavaBeans

import java.io.Serializable;

public class Recd implements Serializable {
	private int genre;
	private int dish;
	private int harvest;
	private String dietname;

	public Recd() {
		super();
		this.genre = 0;
		this.dish = 0;
		this.harvest = 0;
		this.dietname = "";
	}

	public Recd(int genre, int dish, int harvest) {
		super();
		this.genre = genre;
		this.dish = dish;
		this.harvest = harvest;
	}

	public Recd(int genre, int dish, int harvest, String dietname) {
		super();
		this.genre = genre;
		this.dish = dish;
		this.harvest = harvest;
		this.dietname = dietname;
	}

	public int getGenre() {
		return genre;
	}

	public void setGenre(int genre) {
		this.genre = genre;
	}

	public int getDish() {
		return dish;
	}

	public void setDish(int dish) {
		this.dish = dish;
	}

	public int getHarvest() {
		return harvest;
	}

	public void setHarvest(int harvest) {
		this.harvest = harvest;
	}

	public String getDietname() {
		return dietname;
	}

	public void setDietname(String dietname) {
		this.dietname = dietname;
	}
}