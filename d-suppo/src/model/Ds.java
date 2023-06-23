package model;
import java.io.Serializable;

public class Ds implements Serializable {
	private int NUM;
	private String DIETNAME;
	private String CALORIE;
	private String DIETCOST;
	private String WEIGHT;
	private String DATE;
	private String MONTH;
	private String YEAR;
	private int TIMESLOT;
	private String UPLOADIMG;

	public Ds(int NUM, String DIETNAME, String CALORIE, String DIETCOST,String UPLOADIMG, int TIMESLOT) {
		this.NUM = NUM;
		this.DIETNAME = DIETNAME;
		this.CALORIE = CALORIE;
		this.DIETCOST = DIETCOST;
		this.UPLOADIMG =UPLOADIMG;
		this.TIMESLOT = TIMESLOT;
	}


	public Ds(String DIETNAME, String CALORIE, String DIETCOST, String WEIGHT, String DATE,String MONTH,String YEAR,int TIMESLOT) {
		this.DIETNAME = DIETNAME;
		this.CALORIE = CALORIE;
		this.DIETCOST = DIETCOST;
		this.WEIGHT = WEIGHT;
		this.DATE = DATE;
		this.MONTH = MONTH;
		this.YEAR = YEAR;
		this.TIMESLOT = TIMESLOT;
	}

	public Ds(String DIETNAME, String CALORIE, String DIETCOST, String WEIGHT,int TIMESLOT,String UPLOADIMG) {
		this.DIETNAME = DIETNAME;
		this.CALORIE = CALORIE;
		this.DIETCOST = DIETCOST;
		this.WEIGHT = WEIGHT;
		this.TIMESLOT = TIMESLOT;
		this.UPLOADIMG = UPLOADIMG;
	}

	public Ds() {
		this.NUM = 0;
		this.DIETNAME = "";
		this.CALORIE = "";
		this.DIETCOST = "";
		this.WEIGHT = "";
		this.DATE = "";
		this.MONTH = "";
		this.YEAR = "";
		this.TIMESLOT = 0;
		this.UPLOADIMG= "";
	}

	public int getNUM() {
		return NUM;
	}

	public void setNUM(int NUM) {
		this.NUM = NUM;
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

	public String getDATE() {
		return DATE;
	}

	public void setDATE(String DATE) {
		this.DATE = DATE;
	}

	public String getMONTH() {
		return MONTH;
	}

	public void setMONTH(String MONTH) {
		this.MONTH = MONTH;
	}

	public String getYEAR() {
		return YEAR;
	}

	public void setYEAR(String YEAR) {
		this.YEAR = YEAR;
	}

	public int getTIMESLOT() {
		return TIMESLOT;
	}

	public void setTIMESLOT(int TIMESLOT) {
		this.TIMESLOT = TIMESLOT;
	}

	public String getUPLOADIMG() {
		return UPLOADIMG;
	}

	public void setUPLOADIMG(String UPLOADIMG) {
		this.UPLOADIMG = UPLOADIMG;
	}
}