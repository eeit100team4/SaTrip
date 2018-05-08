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
	
	@Transient
	private MultipartFile  productImage;
	
	
	
	
	
	
}
