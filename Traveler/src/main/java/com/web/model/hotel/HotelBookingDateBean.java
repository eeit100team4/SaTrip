package com.web.model.hotel;

import java.io.Serializable;
import java.sql.Timestamp;

public class HotelBookingDateBean implements Serializable {
	private static final long serialVersionUID = 1L;

	private Integer booking_id;
	private Integer hotel_id;
	private Integer room_no;
	private Timestamp DateTime;
	private Integer double_stock;
	private Integer quad_stock;

	

}
