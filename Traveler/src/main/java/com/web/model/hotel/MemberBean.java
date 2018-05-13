package com.web.model.hotel;

import java.io.Serializable;
import java.sql.Blob;
import java.sql.Timestamp;

public class MemberBean implements Serializable {
	private static final long serialVersionUID = 1L;

	private Integer pkey;
	private String accoun;
	private String password;
	private String first_name;
	private String last_name;
	private String address;
	private String phone;
	private String email;
	private String user_type;
	private Timestamp registerTime;
	private Double total_amt;
	private Blob memberImage;
	private String fileName;
	private Double unpaid_amt;


}
