package com.web.model.commodity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.xml.bind.annotation.XmlRootElement;

import org.springframework.web.multipart.MultipartFile;

@XmlRootElement
@Entity
@Table(name = "Client")
public class ClientBean {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer Id;
	private String comName;
	private Integer comId;
	private Double comPoint;
	private Integer quantity;
	private java.util.Date date;
	private Integer memberId;
	private String membername;
	private String tel;
	private String addr;
	private String transport;
	
	@Transient
	private CommodityBean commodityBean;
	
//	@Transient
//	private MemberBean memberBean;
	
	@Transient
	private MultipartFile  productImage;

	public Integer getId() {
		return Id;
	}

	public void setId(Integer id) {
		Id = id;
	}

	public String getComName() {
		return comName;
	}

	public void setComName(String comName) {
		this.comName = comName;
	}

	public Integer getComId() {
		return comId;
	}

	public void setComId(Integer comId) {
		this.comId = comId;
	}

	public Double getComPoint() {
		return comPoint;
	}

	public void setComPoint(Double comPoint) {
		this.comPoint = comPoint;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public java.util.Date getDate() {
		return date;
	}

	public void setDate(java.util.Date date) {
		this.date = date;
	}

	public Integer getMemberId() {
		return memberId;
	}

	public void setMemberId(Integer memberId) {
		this.memberId = memberId;
	}

	public String getMembername() {
		return membername;
	}

	public void setMembername(String membername) {
		this.membername = membername;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getTransport() {
		return transport;
	}

	public void setTransport(String transport) {
		this.transport = transport;
	}

	public CommodityBean getCommodityBean() {
		return commodityBean;
	}

	public void setCommodityBean(CommodityBean commodityBean) {
		this.commodityBean = commodityBean;
	}

	public MultipartFile getProductImage() {
		return productImage;
	}

	public void setProductImage(MultipartFile productImage) {
		this.productImage = productImage;
	}

	@Override
	public String toString() {
		return "ClientBean [Id=" + Id + ", comName=" + comName + ", comId=" + comId + ", comPoint=" + comPoint
				+ ", quantity=" + quantity + ", date=" + date + ", memberId=" + memberId + ", membername=" + membername
				+ ", tel=" + tel + ", addr=" + addr + ", transport=" + transport + "]";
	}
	
	
	
	
	
	
}
