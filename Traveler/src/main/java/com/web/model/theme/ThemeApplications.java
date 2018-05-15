package com.web.model.theme;

import java.io.Serializable;
import java.sql.Timestamp;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.xml.bind.annotation.XmlRootElement;

@Entity
@Table(name="ThemeApplications")
@XmlRootElement
public class ThemeApplications implements Serializable {
	private static final long serialVersionUID = 1L;
	//PK
	private Integer applicationId;
	//FK
	private Integer journeyId;
	//姓名
	private String name;
	//電話
	private Integer cellPhone;
	//人數
	private Integer people;
	//可連絡時段
	private String callTime;
	//服務據點
	private String location;
	//報名日期
	private Timestamp applicationDate;
	
	//FK的表格
	private ThemeJourneys themeJourneys;
	
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="journeyId",referencedColumnName="journeyId", insertable=false, updatable=false)
    public ThemeJourneys getThemeJourneys() {
		return themeJourneys;
	}
	public void setThemeJourneys(ThemeJourneys themeJourneys) {
		this.themeJourneys = themeJourneys;
	}
	
	//帶參數建構子 //加入FK表格
	public ThemeApplications(Integer applicationId, Integer journeyId, String name, Integer cellPhone, Integer people,
			String callTime, String location, Timestamp applicationDate, ThemeJourneys themeJourneys) {
		super();
		this.applicationId = applicationId;
		this.journeyId = journeyId;
		this.name = name;
		this.cellPhone = cellPhone;
		this.people = people;
		this.callTime = callTime;
		this.location = location;
		this.applicationDate = applicationDate;
		this.themeJourneys = themeJourneys;
	}
	//空建構子
	public ThemeApplications() {
		super();
	}
	
	@Id//指定PK鍵
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getApplicationId() {
		return applicationId;
	}
	public void setApplicationId(Integer applicationId) {
		this.applicationId = applicationId;
	}
	//FK
	@Transient
	public Integer getJourneyId() {
		return journeyId;
	}
	public void setJourneyId(Integer journeyId) {
		this.journeyId = journeyId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getCellPhone() {
		return cellPhone;
	}
	public void setCellPhone(Integer cellPhone) {
		this.cellPhone = cellPhone;
	}
	public Integer getPeople() {
		return people;
	}
	public void setPeople(Integer people) {
		this.people = people;
	}
	public String getCallTime() {
		return callTime;
	}
	public void setCallTime(String callTime) {
		this.callTime = callTime;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public Timestamp getApplicationDate() {
		return applicationDate;
	}
	public void setApplicationDate(Timestamp applicationDate) {
		this.applicationDate = applicationDate;
	}
	@Override
	public String toString() {
		return "ThemeApplications [applicationId=" + applicationId + ", journeyId=" + journeyId + ", name=" + name
				+ ", cellPhone=" + cellPhone + ", people=" + people + ", callTime=" + callTime + ", location="
				+ location + ", applicationDate=" + applicationDate + ", themeJourneys=" + themeJourneys + "]";
	}
	
	
}
