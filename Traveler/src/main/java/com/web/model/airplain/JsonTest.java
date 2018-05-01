package com.web.model.airplain;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="test")
public class JsonTest {
	
 private String depC;
 private String depT;
 private String arrC;
 @Id
 private int totalP;
 
 
 
public JsonTest(String depC, String depT, String arrC, int totalP) {
	super();
	this.depC = depC;
	this.depT = depT;
	this.arrC = arrC;
	this.totalP = totalP;
}
public String getDepC() {
	return depC;
}
public void setDepC(String depC) {
	this.depC = depC;
}
public String getDepT() {
	return depT;
}
public void setDepT(String depT) {
	this.depT = depT;
}
public String getArrC() {
	return arrC;
}
public void setArrC(String arrC) {
	this.arrC = arrC;
}
public int getTotalP() {
	return totalP;
}
public void setTotalP(int totalP) {
	this.totalP = totalP;
}
@Override
public String toString() {
	return "JsonTest [depC=" + depC + ", depT=" + depT + ", arrC=" + arrC + ", totalP=" + totalP + "]";
}
	
}
