package model; //呑む人用の質問を格納するJavaBeans

import java.io.Serializable;

public class Reca implements Serializable {
	private int alc;
	private int category;
	private String dietname;

	public Reca(int alc, int category) {
		this.alc = alc;
		this.category = category;
	}

	public Reca(int alc, int category, String dietname) {
		super();
		this.alc = alc;
		this.category = category;
		this.dietname = dietname;
	}

	public Reca() {
		super();
		this.alc = 0;
		this.category = 0;
		this.dietname = "";

	}

	public int getAlc() {
		return alc;
	}

	public void setAlc(int alc) {
		this.alc = alc;
	}

	public int getCategory() {
		return category;
	}

	public void setCategory(int category) {
		this.category = category;
	}

	public String getDietname() {
		return dietname;
	}

	public void setDietname(String dietname) {
		this.dietname = dietname;
	}
}