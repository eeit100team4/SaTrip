package com.web.model.hotel;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name = "Order")
public class HotelOrderBean implements Serializable {
	private static final long serialVersionUID = 1L;
	private Integer order_id;
	private String hotel_name;
	private String cancelTag;
	private String invoiceTitle;
	private String account;
	private Date order_date;
	private Date booking_date;
	private Integer room_id;
	private Double totalAmount;

	

	public HotelOrderBean(Integer order_id, String hotel_name, String cancelTag, String invoiceTitle, String account,
			Date order_date, Date booking_date, Integer room_id, Double totalAmount) {
		super();
		this.order_id = order_id;
		this.hotel_name = hotel_name;
		this.cancelTag = cancelTag;
		this.invoiceTitle = invoiceTitle;
		this.account = account;
		this.order_date = order_date;
		this.booking_date = booking_date;
		this.room_id = room_id;
		this.totalAmount = totalAmount;
	}
	public HotelOrderBean() {
		
	}
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public Integer getOrder_id() {
		return order_id;
	}
	public void setOrder_id(Integer order_id) {
		this.order_id = order_id;
	}
	public String getHotel_name() {
		return hotel_name;
	}

	public void setHotel_name(String hotel_name) {
		this.hotel_name = hotel_name;
	}

	public String getCancelTag() {
		return cancelTag;
	}

	public void setCancelTag(String cancelTag) {
		this.cancelTag = cancelTag;
	}

	public String getInvoiceTitle() {
		return invoiceTitle;
	}

	public void setInvoiceTitle(String invoiceTitle) {
		this.invoiceTitle = invoiceTitle;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public Date getOrder_date() {
		return order_date;
	}

	public void setOrder_date(Date order_date) {
		this.order_date = order_date;
	}

	public Date getBooking_date() {
		return booking_date;
	}

	public void setBooking_date(Date booking_date) {
		this.booking_date = booking_date;
	}

	public Integer getRoom_id() {
		return room_id;
	}

	public void setRoom_id(Integer room_id) {
		this.room_id = room_id;
	}

	public Double getTotalAmount() {
		return totalAmount;
	}

	public void setTotalAmount(Double totalAmount) {
		this.totalAmount = totalAmount;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "HotelOrderBean [order_id=" + order_id + ", hotel_name=" + hotel_name + ", cancelTag=" + cancelTag
				+ ", invoiceTitle=" + invoiceTitle + ", account=" + account + ", order_date=" + order_date
				+ ", booking_date=" + booking_date + ", room_id=" + room_id + ", totalAmount=" + totalAmount + "]";
	}

	

}
