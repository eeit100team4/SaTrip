package com.web.model.theme;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;
//裡面裝了主題旅遊名稱跟流水號的設定
@Entity
@Table(name="ThemeTitles")
@XmlRootElement
public class ThemeBean implements Serializable {
	private static final long serialVersionUID = 1L;
	private Integer titleId ;
	private String  titleName;
	
	public ThemeBean(Integer titleId, String titleName){
	this.titleId = titleId;
	this.titleName = titleName;
}
	public ThemeBean() {
	}
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer gettitleId() {   // bookId
		return titleId;
	}
	public void setTitleId(Integer titleId) {
		this.titleId = titleId;
	}
	public String getTitleName() {
		return titleName;
	}
	public void setTitleName(String titleName) {
		this.titleName = titleName;
	}
	
	@Override
	public String toString() {
		return "ThemeBean [titleId=" + titleId + ", titleName=" + titleName + "]";
	}
}
