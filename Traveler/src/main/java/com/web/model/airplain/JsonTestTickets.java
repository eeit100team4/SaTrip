package com.web.model.airplain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="airTickets")
public class JsonTestTickets {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int ID;
	private int memberId;
	private String depT;
	private String depC;
	private String arrT;
	private String arrC;
	private int totalP;
	private String airline;
	private String depNum;
	private String returnNum;
	private int bonus;



	public int getBonus() {
		return bonus;
	}

	public void setBonus(int totalP) {
		System.out.println(bonus+"setBonus");
	}

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}


	public int getTotalP() {
		return totalP;
	}

	public int getMemberId() {
		return memberId;
	}

	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}

	public void setTotalP(int totalP) {
		this.totalP = totalP;
	}

	public void setDepT(String depT) {
		this.depT = depT;
	}

	public String getDepT() {
		return depT;
	}

	public void setDepC(String depC) {
		this.depC = depC;
	}

	public String getDepC() {
		return depC;
	}

	public void setArrT(String arrT) {
		this.arrT = arrT;
	}

	public String getArrT() {
		return arrT;
	}

	public void setArrC(String arrC) {
		this.arrC = arrC;
	}

	public String getArrC() {
		return arrC;
	}


	public void setAirline(String airline) {
		this.airline = airline;
	}

	public String getAirline() {
		return airline;
	}

	public void setDepNum(String depNum) {
		this.depNum = depNum;
	}

	public String getDepNum() {
		return depNum;
	}

	public void setReturnNum(String returnNum) {
		this.returnNum = returnNum;
	}

	public String getReturnNum() {
		return returnNum;
	}

}
