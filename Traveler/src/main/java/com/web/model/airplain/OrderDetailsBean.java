package com.web.model.airplain;


import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;



@Entity
@Table(name="airTickets")
public class OrderDetailsBean {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer ID;
	@Column(name="orderID",insertable=false)
	private String orderID;
	private Integer memberId;
	private String depT;
	private String depDate;
	private String depC;
	private String arrT;
	private String returnDate;
	private String arrC;
	private String returnTime;
	private Integer price;
	private String airline;
	private String depNum;
	private String returnNum;
	private Integer person;
	private Integer bonus;
	private Integer guestId;

	@Override
	public String toString() {
		return "OrderDetailsBean [ID=" + ID + ", orderID=" + orderID + ", memberId=" + memberId + ", depT=" + depT
				+ ", depDate=" + depDate + ", depC=" + depC + ", arrT=" + arrT + ", returnDate=" + returnDate
				+ ", arrC=" + arrC + ", returnTime=" + returnTime + ", price=" + price + ", airline=" + airline
				+ ", depNum=" + depNum + ", returnNum=" + returnNum + ", person=" + person + ", bonus=" + bonus
				+ ", guestId=" + guestId + "]";
	}

	public Integer getID() {
		return ID;
	}

	public void setID(Integer iD) {
		ID = iD;
	}

	public String getOrderID() {
		return orderID;
	}

	public void setOrderID(String orderID) {
		this.orderID = orderID;
	}

	public Integer getMemberId() {
		return memberId;
	}

	public void setMemberId(Integer memberId) {
		this.memberId = memberId;
	}

	public String getDepT() {
		return depT;
	}

	public void setDepT(String depT) {
		this.depT = depT;
	}

	public String getDepDate() {
		return depDate;
	}

	public void setDepDate(String depDate) {
		this.depDate = depDate;
	}

	public String getDepC() {
		return depC;
	}

	public void setDepC(String depC) {
		this.depC = depC;
	}

	public String getArrT() {
		return arrT;
	}

	public void setArrT(String arrT) {
		this.arrT = arrT;
	}

	public String getReturnDate() {
		return returnDate;
	}

	public void setReturnDate(String returnDate) {
		this.returnDate = returnDate;
	}

	public String getArrC() {
		return arrC;
	}

	public void setArrC(String arrC) {
		this.arrC = arrC;
	}

	public String getReturnTime() {
		return returnTime;
	}

	public void setReturnTime(String returnTime) {
		this.returnTime = returnTime;
	}

	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public String getAirline() {
		return airline;
	}

	public void setAirline(String airline) {
		this.airline = airline;
	}

	public String getDepNum() {
		return depNum;
	}

	public void setDepNum(String depNum) {
		this.depNum = depNum;
	}

	public String getReturnNum() {
		return returnNum;
	}

	public void setReturnNum(String returnNum) {
		this.returnNum = returnNum;
	}

	public Integer getPerson() {
		return person;
	}

	public void setPerson(Integer person) {
		this.person = person;
	}

	public Integer getBonus() {
		return bonus;
	}

	public void setBonus(Integer bonus) {
		this.bonus = bonus;
	}

	public Integer getGuestId() {
		return guestId;
	}

	public void setGuestId(Integer guestId) {
		this.guestId = guestId;
	}


}
