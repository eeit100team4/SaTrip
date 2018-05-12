package com.web.model.hotel;

import java.io.Serializable;

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

	

}
