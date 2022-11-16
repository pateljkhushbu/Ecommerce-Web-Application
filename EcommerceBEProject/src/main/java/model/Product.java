


package model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="Product")
public class Product {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="Product_id")
	private int pId;
	
	@Column(name="Name")
	private String pName;
	
	@Column(name="Cost")
	private double pCost;
	
	@Column(name="Description")
	private String pDesc;
	
	@Column(name="Quantity")
	private int pQty;
	
	@Column(name="Category")
	private String cName;
	
	@Column(name="Supplier")
	private String sName;
	
	@Column(name="active")
	private boolean pAct;
	
	@Column(name="Brand")
	private String pBrand;
	
	@Column(name="Image")
	private String pImg;

	public String getpImg() {
		return pImg;
	}

	public void setpImg(String pImg) {
		this.pImg = pImg;
	}

	public int getpId() {
		return pId;
	}

	public void setpId(int pId) {
		this.pId = pId;
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public double getpCost() {
		return pCost;
	}

	public void setpCost(double pCost) {
		this.pCost = pCost;
	}

	public String getpDesc() {
		return pDesc;
	}

	public void setpDesc(String pDesc) {
		this.pDesc = pDesc;
	}

	public int getpQty() {
		return pQty;
	}

	public void setpQty(int pQty) {
		this.pQty = pQty;
	}

	public String getcName() {
		return cName;
	}

	public void setcName(String cName) {
		this.cName = cName;
	}

	public String getsName() {
		return sName;
	}

	public void setsName(String sName) {
		this.sName = sName;
	}

	public boolean ispAct() {
		return pAct;
	}

	public void setpAct(boolean pAct) {
		this.pAct = pAct;
	}

	public String getpBrand() {
		return pBrand;
	}

	public void setpBrand(String pBrand) {
		this.pBrand = pBrand;
	}

	
	public Product() {
	
	}

	public Product(String pName, String pBrand, String pDesc, double pCost,  int pQty, String pImg, String cName, String sName) {
		super();
		this.pName = pName;
		this.pCost = pCost;
		this.pDesc = pDesc;
		this.pQty = pQty;
		this.cName = cName;
		this.sName = sName;
		this.pImg = pImg;
		this.pBrand = pBrand;
	}

	public Product(int pId, String pName, String pBrand, String pDesc, double pCost,  int pQty, String pImg, String cName, String sName) {
		super();
		this.pId = pId;
		this.pName = pName;
		this.pCost = pCost;
		this.pDesc = pDesc;
		this.pQty = pQty;
		this.cName = cName;
		this.sName = sName;
		this.pImg = pImg;
		this.pBrand = pBrand;
	}

	public Product(int pId) {
		super();
		this.pId = pId;
	}

	
	

	
	

}
