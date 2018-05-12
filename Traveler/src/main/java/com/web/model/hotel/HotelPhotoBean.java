package com.web.model.hotel;

import java.io.Serializable;
import java.sql.Blob;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.xml.bind.annotation.XmlTransient;

import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name = "Photo")
public class HotelPhotoBean implements Serializable {
	private static final long serialVersionUID = 1L;

	private Integer booking_id;
	private Blob phto1;
	private Blob phto2;
	private Blob phto3;
	private Blob phto4;
	private Blob phto5;
	private Blob phto6;

	private MultipartFile roomImage;

	@Transient
	@XmlTransient
	public MultipartFile getRoomImage() {
		return roomImage;
	}

	public void setRoomImage(MultipartFile roomImage) {
		this.roomImage = roomImage;
	}

	public HotelPhotoBean(Integer booking_id, Blob phto1, Blob phto2, Blob phto3, Blob phto4, Blob phto5, Blob phto6) {
		super();
		this.booking_id = booking_id;
		this.phto1 = phto1;
		this.phto2 = phto2;
		this.phto3 = phto3;
		this.phto4 = phto4;
		this.phto5 = phto5;
		this.phto6 = phto6;

	}

	public HotelPhotoBean(Integer booking_id) {
		this.booking_id = booking_id;
	}

	public HotelPhotoBean() {
		super();
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public Integer getBooking_id() {
		return booking_id;
	}

	public void setBooking_id(Integer booking_id) {
		this.booking_id = booking_id;
	}

	public Blob getPhto1() {
		return phto1;
	}

	public void setPhto1(Blob phto1) {
		this.phto1 = phto1;
	}

	public Blob getPhto2() {
		return phto2;
	}

	public void setPhto2(Blob phto2) {
		this.phto2 = phto2;
	}

	public Blob getPhto3() {
		return phto3;
	}

	public void setPhto3(Blob phto3) {
		this.phto3 = phto3;
	}

	public Blob getPhto4() {
		return phto4;
	}

	public void setPhto4(Blob phto4) {
		this.phto4 = phto4;
	}

	public Blob getPhto5() {
		return phto5;
	}

	public void setPhto5(Blob phto5) {
		this.phto5 = phto5;
	}

	public Blob getPhto6() {
		return phto6;
	}

	public void setPhto6(Blob phto6) {
		this.phto6 = phto6;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}
