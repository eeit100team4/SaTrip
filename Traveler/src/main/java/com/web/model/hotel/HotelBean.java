package com.web.model.hotel;

import java.io.Serializable;
import java.sql.Blob;

public class HotelBean implements Serializable {
	private static final long serialVersionUID = 1L;

	private Integer hotel_id;
	private String country;
	private String city;
	private String hotel_name;
	private Blob coverImage;
	private String file_name;
	private String address;
	
	private Integer double_room_no;
	private Integer quad_room_no;

	

	

	

}
