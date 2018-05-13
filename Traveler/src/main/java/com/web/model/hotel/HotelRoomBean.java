package com.web.model.hotel;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.xml.bind.annotation.XmlTransient;

import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name = "Room")
public class HotelRoomBean implements Serializable {
	private static final long serialVersionUID = 1L;

	private Integer hotel_no;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer room_id;
	private String occupancy;
	private Integer stock;
	private Double discount;
	private Double price;
	private Integer pic_no;
	private Integer booking_no;

	private MultipartFile productImage;

	@Transient
	@XmlTransient
	public MultipartFile getProductImage() {
		return productImage;
	}

	public void setProductImage(MultipartFile productImage) {
		this.productImage = productImage;
	}

	@OneToMany(cascade = CascadeType.ALL, mappedBy = "pic_id")
	@JoinColumn(name = "pic_id")
	private HotelPhotoBean hotelPhotoBean;

	@OneToMany(cascade = CascadeType.ALL, mappedBy = "booking_id")
	@JoinColumn(name = "booking_id")
	private HotelBookingDateBean hotelBookingDateBean;

}
