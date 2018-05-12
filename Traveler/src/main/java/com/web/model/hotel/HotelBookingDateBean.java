package com.web.model.hotel;

import java.io.Serializable;
import java.sql.Timestamp;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;

import javax.persistence.Table;

@Entity
@Table(name = "BookingDate")
public class HotelBookingDateBean implements Serializable {
	private static final long serialVersionUID = 1L;

	private Integer booking_id;
	private Integer hotel_id;
	private Integer room_no;
	private Timestamp DateTime;
	private Integer double_stock;
	private Integer quad_stock;

	public HotelBookingDateBean(Integer booking_id, Integer hotel_id, Integer room_no, Timestamp dateTime,
			Integer double_stock, Integer quad_stock) {
		super();
		this.booking_id = booking_id;
		this.hotel_id = hotel_id;
		this.room_no = room_no;
		DateTime = dateTime;
		this.double_stock = double_stock;
		this.quad_stock = quad_stock;
	}

	public HotelBookingDateBean() {

	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public Integer getBooking_id() {
		return booking_id;
	}

	public void setBooking_id(Integer booking_id) {
		this.booking_id = booking_id;
	}

	public Integer getHotel_id() {
		return hotel_id;
	}

	public void setHotel_id(Integer hotel_id) {
		this.hotel_id = hotel_id;
	}

	public Integer getRoom_no() {
		return room_no;
	}

	public void setRoom_no(Integer room_no) {
		this.room_no = room_no;
	}

	public Timestamp getDateTime() {
		return DateTime;
	}

	public void setDateTime(Timestamp dateTime) {
		DateTime = dateTime;
	}

	public Integer getDouble_stock() {
		return double_stock;
	}

	public void setDouble_stock(Integer double_stock) {
		this.double_stock = double_stock;
	}

	public Integer getQuad_stock() {
		return quad_stock;
	}

	public void setQuad_stock(Integer quad_stock) {
		this.quad_stock = quad_stock;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}
