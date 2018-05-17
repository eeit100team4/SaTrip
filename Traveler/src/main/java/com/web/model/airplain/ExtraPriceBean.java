package com.web.model.airplain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="extraPirce")
public class ExtraPriceBean {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private String dept;
	private String arrv;
	private Integer extraPrice;
	@Override
	public String toString() {
		return "ExtraPriceBean [id=" + id + ", dept=" + dept + ", arrv=" + arrv + ", extraPrice=" + extraPrice + "]";
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	public String getArrv() {
		return arrv;
	}
	public void setArrv(String arrv) {
		this.arrv = arrv;
	}
	public Integer getExtraPrice() {
		return extraPrice;
	}
	public void setExtraPrice(Integer extraPrice) {
		this.extraPrice = extraPrice;
	}
	
	

}
