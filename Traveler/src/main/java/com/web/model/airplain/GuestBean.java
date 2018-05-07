package com.web.model.airplain;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;


@Entity
@Table(name="guest")
public class GuestBean {
		
		@Id
		@GeneratedValue(strategy = GenerationType.IDENTITY)
		private Integer id;
		private String chineseLastName_1;
		private String chineseFirstName_1;
		private String lastName_1;
		private String firstName_1;
		@DateTimeFormat(pattern = "yyyy/MM/dd")
		private Date  birth_1;
//		private String idCard_1;
//		private String gender_1;
//		private String chineseLastName_2;
//		private String chineseFirstName_2;
//		private String lastName_2;
//		private String firstName_2;
//		private String idCard_2;
//		private Date  birth_2;
//		private String gender_2;
		
		
		
		
		
		
		public Integer getId() {
			return id;
		}
		@Override
		public String toString() {
			return "GuestBean [id=" + id + ", chineseLastName_1=" + chineseLastName_1 + ", chineseFirstName_1="
					+ chineseFirstName_1 + ", lastName_1=" + lastName_1 + ", firstName_1=" + firstName_1 + ", birth_1="
					+ birth_1 + "]";
		}
		public void setId(Integer id) {
			this.id = id;
		}
		public String getChineseLastName_1() {
			return chineseLastName_1;
		}
		public void setChineseLastName_1(String chineseLastName_1) {
			this.chineseLastName_1 = chineseLastName_1;
		}
		public String getChineseFirstName_1() {
			return chineseFirstName_1;
		}
		public void setChineseFirstName_1(String chineseFirstName_1) {
			this.chineseFirstName_1 = chineseFirstName_1;
		}
		public String getLastName_1() {
			return lastName_1;
		}
		public void setLastName_1(String lastName_1) {
			this.lastName_1 = lastName_1;
		}
		public String getFirstName_1() {
			return firstName_1;
		}
		public void setFirstName_1(String firstName_1) {
			this.firstName_1 = firstName_1;
		}
		public Date getBirth_1() {
			return birth_1;
		}
		public void setBirth_1(Date birth_1) {
			this.birth_1 = birth_1;
		}
		
		
	
}
