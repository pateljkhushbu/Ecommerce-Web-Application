package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="Card")
public class Card {
	
	public Card() {
		super();
	}
	
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="Card_iD")
	private String cId;
	@Column(name="Card_number")

	private String cNum;
	
	@Column(name="Expiry_month")
	private String cMon;
	
	@Column(name="Expiry_Year")
	private String cYear;
	
	@Column(name="CV_code")
	private String cCode;
	
	@Column(name="Final_price")
	private String cPrice;
	
	
	public String getcId() {
		return cId;
	}
	public void setcId(String cId) {
		this.cId = cId;
	}
	public String getcNum() {
		return cNum;
	}
	public void setcNum(String cNum) {
		this.cNum = cNum;
	}
	public String getcMon() {
		return cMon;
	}
	public void setcMon(String cMon) {
		this.cMon = cMon;
	}
	public String getcYear() {
		return cYear;
	}
	public void setcYear(String cYear) {
		this.cYear = cYear;
	}
	public String getcCode() {
		return cCode;
	}
	public void setcCode(String cCode) {
		this.cCode = cCode;
	}
	public String getcPrice() {
		return cPrice;
	}
	public void setcPrice(String cPrice) {
		this.cPrice = cPrice;
	}
	public Card(String cId, String cNum, String cMon, String cYear, String cCode, String cPrice) {
		super();
		this.cId = cId;
		this.cNum = cNum;
		this.cMon = cMon;
		this.cYear = cYear;
		this.cCode = cCode;
		this.cPrice = cPrice;
	}

}
