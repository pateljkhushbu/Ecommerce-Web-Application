package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Details")
public class Details {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="Details_id")
	private int did;
	
	@Column(name="First_name")
	private String dFname;
	
	@Column(name="Middle_name")
	private String dMname;
	
	@Column(name="Last_name")
	private String dLname;
	
	@Column(name="Address1")
	private String dAdd1;
	
	@Column(name="Address2")
	private String dAdd2;
	
	@Column(name="City")
	private String dCity;
	
	@Column(name="State")
	private String dState;
	
	@Column(name="Code")
	private String dCode;
	
	@Column(name="Country")
	private String aCon;
	
	public Details() {
		super();
	}
	
	public int getAid() {
		return did;
	}
	public void setAid(int aid) {
		this.did = aid;
	}
	public String getdFname() {
		return dFname;
	}
	public void setdFname(String dFname) {
		this.dFname = dFname;
	}
	public String getdMname() {
		return dMname;
	}
	public void setdMname(String dMname) {
		this.dMname = dMname;
	}
	public String getdLname() {
		return dLname;
	}
	public void setdLname(String dLname) {
		this.dLname = dLname;
	}
	public String getdAdd1() {
		return dAdd1;
	}
	public void setdAdd1(String dAdd1) {
		this.dAdd1 = dAdd1;
	}
	public String getdAdd2() {
		return dAdd2;
	}
	public void setdAdd2(String dAdd2) {
		this.dAdd2 = dAdd2;
	}
	public String getdCity() {
		return dCity;
	}
	public void setdCity(String dCity) {
		this.dCity = dCity;
	}
	public String getdState() {
		return dState;
	}
	public void setdState(String dState) {
		this.dState = dState;
	}
	public String getdCode() {
		return dCode;
	}
	public void setdCode(String dCode) {
		this.dCode = dCode;
	}
	public String getaCon() {
		return aCon;
	}
	public void setaCon(String aCon) {
		this.aCon = aCon;
	}

	public Details(int did, String dFname, String dMname, String dLname, String dAdd1, String dAdd2, String dCity,
			String dState, String dCode, String aCon) {
		super();
		this.did = did;
		this.dFname = dFname;
		this.dMname = dMname;
		this.dLname = dLname;
		this.dAdd1 = dAdd1;
		this.dAdd2 = dAdd2;
		this.dCity = dCity;
		this.dState = dState;
		this.dCode = dCode;
		this.aCon = aCon;
	}
	
	
	
}
