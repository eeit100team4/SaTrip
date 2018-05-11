package com.web.model.hotel;

import java.io.Serializable;
import java.sql.Blob;
import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Member")
public class MemberBean implements Serializable {
	private static final long serialVersionUID = 1L;

	public MemberBean(Integer pkey, String account, String password, String first_name, String last_name,
			String address, String phone, String email, String user_type, Timestamp registerTime, Double total_amt,
			Blob memberImage, String fileName, Double unpaid_amt) {
		super();
		this.pkey = pkey;
		this.account = account;
		this.password = password;
		this.first_name = first_name;
		this.last_name = last_name;
		this.address = address;
		this.phone = phone;
		this.email = email;
		this.user_type = user_type;
		this.registerTime = registerTime;
		this.total_amt = total_amt;
		this.memberImage = memberImage;
		this.fileName = fileName;
		this.unpaid_amt = unpaid_amt;
	}

	public MemberBean(String account, String password, String first_name, String last_name, String address,
			String phone, String email) {
		super();
		this.account = account;
		this.password = password;
		this.first_name = first_name;
		this.last_name = last_name;
		this.address = address;
		this.phone = phone;
		this.email = email;
	}

	public MemberBean() {
		super();
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	// @Column(name="seqNo")
	public Integer getPkey() {
		return pkey;
	}

	Integer pkey;
	String account;
	String password;
	String first_name;
	String last_name;
	String address;
	String phone;
	String email;
	String user_type;
	Timestamp registerTime;
	Double total_amt;
	Blob memberImage;
	String fileName;
	Double unpaid_amt;

	public void setPkey(Integer pkey) {
		this.pkey = pkey;
	}

	@Column(name = "account")
	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}
	@Column(name="password")
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Column(name = "fileName")
	public String getFirst_name() {
		return first_name;
	}
	@Column(name="first_name")
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}

	public String getLast_name() {
		return last_name;
	}
	@Column(name="last_name")
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	@Column(name="address")
	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUser_type() {
		return user_type;
	}

	public void setUser_type(String user_type) {
		this.user_type = user_type;
	}
	@Column(name="Register_date")
	public Timestamp getRegisterTime() {
		return registerTime;
	}
	@Column(name="address")
	public void setRegisterTime(Timestamp registerTime) {
		this.registerTime = registerTime;
	}
	@Column(columnDefinition="decimal(12, 1")
	public Double getTotal_amt() {
		return total_amt;
	}

	public void setTotal_amt(Double total_amt) {
		this.total_amt = total_amt;
	}

	public Blob getMemberImage() {
		return memberImage;
	}

	public void setMemberImage(Blob memberImage) {
		this.memberImage = memberImage;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	@Column(columnDefinition="decimal(12, 1")
	public Double getUnpaid_amt() {
		return unpaid_amt;
	}

	public void setUnpaid_amt(Double unpaid_amt) {
		this.unpaid_amt = unpaid_amt;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}
