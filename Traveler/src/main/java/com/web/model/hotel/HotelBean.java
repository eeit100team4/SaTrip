package com.web.model.hotel;

import java.io.Serializable;
import java.sql.Blob;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;


import javax.persistence.Table;
import javax.persistence.Transient;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

import org.springframework.web.multipart.MultipartFile;

//本類別封裝單飯店資訊資料
@Entity
@Table(name = "Hotel")
public class HotelBean implements Serializable {
	private static final long serialVersionUID = 1L;

	private Integer hotel_id;
	private String country;
	private String city;
	private String hotel_name;
	private Blob coverImage;
	private String file_name;
	private String address;
	private HotelRoomBean beanHotelRoom2;
	private HotelRoomBean beanHotelRoom4;
	private Integer double_room_no;
	private Integer quad_room_no;

	private MultipartFile roomImage;

	@Transient
	@XmlTransient
	public MultipartFile getRoomImage() {
		return roomImage;
	}

	public void setRoomImage(MultipartFile roomImage) {
		this.roomImage = roomImage;
	}

	
	@JoinColumn(name = "double_room_no")
	public HotelRoomBean getBeanHotelRoom2() {
		return beanHotelRoom2;
	}

	public void setBeanHotelRoom2(HotelRoomBean beanHotelRoom2) {
		this.beanHotelRoom2 = beanHotelRoom2;
	}


	@JoinColumn(name = "quad_room_no")
	public HotelRoomBean getBeanHotelRoom4() {
		return beanHotelRoom4;
	}

	public void setBeanHotelRoom(HotelRoomBean beanHotelRoom4) {
		this.beanHotelRoom4 = beanHotelRoom4;
	}



	public HotelBean(Integer hotel_id, String country, String city, String hotel_name, Blob coverImage,
			String file_name, String address, HotelRoomBean beanHotelRoom2, HotelRoomBean beanHotelRoom4) {
		super();
		this.hotel_id = hotel_id;
		this.country = country;
		this.city = city;
		this.hotel_name = hotel_name;
		this.coverImage = coverImage;
		this.file_name = file_name;
		this.address = address;
		this.beanHotelRoom2 = beanHotelRoom2;
		this.beanHotelRoom4 = beanHotelRoom4;
	}
	

	public HotelBean() {
		
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public Integer getHotel_id() {
		return hotel_id;
	}

	public void setHotel_id(Integer hotel_id) {
		this.hotel_id = hotel_id;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getHotel_name() {
		return hotel_name;
	}

	public void setHotel_name(String hotel_name) {
		this.hotel_name = hotel_name;
	}

	public Blob getCoverImage() {
		return coverImage;
	}

	public void setCoverImage(Blob coverImage) {
		this.coverImage = coverImage;
	}

	public String getFile_name() {
		return file_name;
	}

	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}



	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public Integer getDouble_room_no() {
		return double_room_no;
	}

	public void setDouble_room_no(Integer double_room_no) {
		this.double_room_no = double_room_no;
	}

	public Integer getQuad_room_no() {
		return quad_room_no;
	}

	public void setQuad_room_no(Integer quad_room_no) {
		this.quad_room_no = quad_room_no;
	}

	@Override
	public String toString() {
		return "BeanHotel [hotel_id=" + hotel_id + ", country=" + country + ", city=" + city + ", hotel_name="
				+ hotel_name + ", coverImage=" + coverImage + ", file_name=" + file_name + ", address=" + address
				+ ", beanHotelRoom2=" + beanHotelRoom2 + ", beanHotelRoom4=" + beanHotelRoom4 + ", double_room_no="
				+ double_room_no + ", quad_room_no=" + quad_room_no + ", roomImage=" + roomImage + ", getRoomImage()="
				+ getRoomImage() + ", getBeanHotelRoom2()=" + getBeanHotelRoom2() + ", getBeanHotelRoom4()="
				+ getBeanHotelRoom4() + ", getHotel_id()=" + getHotel_id() + ", getCountry()=" + getCountry()
				+ ", getCity()=" + getCity() + ", getHotel_name()=" + getHotel_name() + ", getCoverImage()="
				+ getCoverImage() + ", getFile_name()=" + getFile_name() + ", getAddress()=" + getAddress()
				+ ", getDouble_room_no()=" + getDouble_room_no() + ", getQuad_room_no()=" + getQuad_room_no()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString()
				+ "]";
	}

	

}
