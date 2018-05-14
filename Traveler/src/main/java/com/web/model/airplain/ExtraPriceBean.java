package com.web.model.airplain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="extra")
public class ExtraPriceBean {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private Integer extraPrice;
	
	
	
	@Override
	public String toString() {
		return "ExtraPrice [id=" + id + ", extraPrice=" + extraPrice + "]";
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getExtraPrice() {
		return extraPrice;
	}
	public void setExtraPrice(Integer extraPrice) {
		this.extraPrice = extraPrice;
	}
	
	
}
