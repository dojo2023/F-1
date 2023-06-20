package model;
import java.io.Serializable;

public class Ds implements Serializable {
	private String DIETNAME;
	private String CALORIE;
	private String DIETCOST;
	private String WEIGHT;

	public Ds(String DIETNAME, String CALORIE, String DIETCOST, String WEIGHT) {
		this.DIETNAME = DIETNAME;
		this.CALORIE = CALORIE;
		this.DIETCOST = DIETCOST;
		this.WEIGHT = WEIGHT;
	}

	public Ds() {
		this.DIETNAME = "";
		this.CALORIE = "";
		this.DIETCOST = "";
		this.WEIGHT = "";
	}

	public String getDIETNAME() {
		return DIETNAME;
	}

	public void setDIETNAME(String DIETNAME) {
		this.DIETNAME = DIETNAME;
	}

	public String getCALORIE() {
		return CALORIE;
	}

	public void setCALORIE(String CALORIE) {
		this.CALORIE = CALORIE;
	}

	public String getDIETCOST() {
		return DIETCOST;
	}

	public void DIETCOST(String DIETCOST) {
		this.DIETCOST = DIETCOST;
	}

	public String getWEIGHT() {
		return WEIGHT;
	}

	public void setWEIGHT(String WEIGHT) {
		this.WEIGHT = WEIGHT;
	}
}