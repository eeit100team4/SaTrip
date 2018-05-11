package com.web.model.hotel;

import java.io.Serializable;
import java.sql.Blob;

import javax.annotation.Generated;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "Room")
public class HotelRoomBean implements Serializable {
	private static final long serialVersionUID = 1L;

	private Integer hotel_id;
	private Integer room_no;
	private String occupancy;
	private Integer stock;
	private Double discount;
	private String discountStr;
	private Double price;
	private String category;
	private HotelBean beanHotel;
	private HotelPhotoBean beanHotelPhoto;
	private HotelBookingDateBean beanHotelBookingDate;
	private Integer pic_id;
	private Integer booking_id;

	@OneToMany(cascade = CascadeType.ALL)
	@JoinColumn(name = "hotel_id")
	public HotelBean getBeanHotel() {
		return beanHotel;
	}

	public void setBeanHotel(HotelBean beanHotel) {
		this.beanHotel = beanHotel;
	}

	@OneToMany(cascade = CascadeType.ALL)
	@JoinColumn(name = "pic_id")
	public HotelPhotoBean getBeanHotelPhoto() {
		return beanHotelPhoto;
	}

	public void setBeanHotelPhoto(HotelPhotoBean beanHotelPhoto) {
		this.beanHotelPhoto = beanHotelPhoto;
	}

	@OneToMany(cascade = CascadeType.ALL)
	@JoinColumn(name = "booking_id")
	public HotelBookingDateBean getBeanHotelBookingDate() {
		return beanHotelBookingDate;
	}

	public void setBeanHotelBookingDate(HotelBookingDateBean beanHotelBookingDate) {
		this.beanHotelBookingDate = beanHotelBookingDate;
	}

	public HotelRoomBean(Integer room_no, String occupancy, Integer stock, Double discount, Double price,
			String category, HotelBean beanHotel, HotelPhotoBean beanHotelPhoto,
			HotelBookingDateBean beanHotelBookingDate) {
		super();
		this.room_no = room_no;
		this.occupancy = occupancy;
		this.stock = stock;
		this.discount = discount;
		this.price = price;
		this.category = category;
		this.beanHotel = beanHotel;
		this.beanHotelPhoto = beanHotelPhoto;
		this.beanHotelBookingDate = beanHotelBookingDate;
	}

	public HotelRoomBean() {

	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
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

	public String getOccupancy() {
		return occupancy;
	}

	public void setOccupancy(String occupancy) {
		this.occupancy = occupancy;
	}

	public Integer getStock() {
		return stock;
	}

	public void setStock(Integer stock) {
		this.stock = stock;
	}

	@Column(columnDefinition = "decimal(7, 3")
	public Double getDiscount() {
		return discount;
	}

	public void setDiscount(Double discount) {// 0.8, 0.75
		if (discount == null) {
			this.discount = discount;
			discountStr = "";
			return;
		}
		this.discount = discount;
		if (discount == 1) {
			discountStr = "";
		} else {
			int dnt = (int) (discount * 100);
			if (dnt % 10 == 0) {
				discountStr = (dnt / 10) + "折";
			} else {
				discountStr = " " + dnt + "折";
			}
		}

	}

	@Transient
	public String getDiscountStr() {
		return discountStr;
	}

	private String priceStr = null;

	@Transient
	public String getPriceStr() {
		return priceStr;
	}

	public void setPriceStr(String priceStr) {
		this.priceStr = priceStr;
	}

	@Column(columnDefinition = "decimal=(10, 1)")
	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
		if (priceStr == null) {
			priceStr = String.valueOf(price);
		}
	}

	@Transient
	public Integer getPic_id() {
		return pic_id;
	}

	public void setPic_id(Integer pic_id) {
		this.pic_id = pic_id;
	}

	@Transient
	public Integer getBooking_id() {
		return booking_id;
	}

	public void setBooking_id(Integer booking_id) {
		this.booking_id = booking_id;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public void setDiscountStr(String discountStr) {
		this.discountStr = discountStr;
	}

	@Override
	public String toString() {
		return "BeanHotelRoom [hotel_id=" + hotel_id + ", room_no=" + room_no + ", occupancy=" + occupancy + ", stock="
				+ stock + ", discount=" + discount + ", discountStr=" + discountStr + ", price=" + price + ", category="
				+ category + ", beanHotel=" + beanHotel + ", beanHotelPhoto=" + beanHotelPhoto
				+ ", beanHotelBookingDate=" + beanHotelBookingDate + ", pic_id=" + pic_id + ", booking_id=" + booking_id
				+ ", priceStr=" + priceStr + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;

		result = prime * result + ((room_no == null) ? 0 : room_no.hashCode());
		result = prime * result + ((occupancy == null) ? 0 : occupancy.hashCode());
		result = prime * result + ((beanHotel == null) ? 0 : beanHotel.hashCode());
		result = prime * result + ((beanHotelPhoto == null) ? 0 : beanHotelPhoto.hashCode());
		result = prime * result + ((beanHotelBookingDate == null) ? 0 : beanHotelBookingDate.hashCode());
		result = prime * result + ((discount == null) ? 0 : discount.hashCode());
		result = prime * result + ((discountStr == null) ? 0 : discountStr.hashCode());
		result = prime * result + ((price == null) ? 0 : price.hashCode());
		result = prime * result + ((priceStr == null) ? 0 : priceStr.hashCode());
		result = prime * result + ((stock == null) ? 0 : stock.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		HotelRoomBean other = (HotelRoomBean) obj;
		if (room_no == null) {
			if (other.room_no != null)
				return false;
		} else if (!room_no.equals(other.room_no))
			return false;

		if (occupancy == null) {
			if (other.occupancy != null)
				return false;
		} else if (!occupancy.equals(other.occupancy))
			return false;

		if (beanHotel == null) {
			if (other.beanHotel != null)
				return false;
		} else if (!beanHotel.equals(other.beanHotel))
			return false;
		if (beanHotelPhoto == null) {
			if (other.beanHotelPhoto != null)
				return false;
		} else if (!beanHotelPhoto.equals(other.beanHotelPhoto))
			return false;
		if (beanHotelBookingDate == null) {
			if (other.beanHotelBookingDate != null)
				return false;
		} else if (!beanHotelBookingDate.equals(other.beanHotelBookingDate))
			return false;
		if (discount == null) {
			if (other.discount != null)
				return false;
		} else if (!discount.equals(other.discount))
			return false;
		if (discountStr == null) {
			if (other.discountStr != null)
				return false;
		} else if (!discountStr.equals(other.discountStr))
			return false;
		if (price == null) {
			if (other.price != null)
				return false;
		} else if (!price.equals(other.price))
			return false;
		if (priceStr == null) {
			if (other.priceStr != null)
				return false;
		} else if (!priceStr.equals(other.priceStr))
			return false;
		if (stock == null) {
			if (other.stock != null)
				return false;
		} else if (!stock.equals(other.stock))
			return false;

		return true;
	}

}
