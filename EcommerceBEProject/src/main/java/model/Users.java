package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Users")
public class Users {
	
	public Users() {
		super();
	}
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="User_id")
	private int uId;

	public int getuId() {
		return uId;
	}

	public void setuId(int uId) {
		this.uId = uId;
	}

	@Column(name="Username")
	private String uName;
	
	@Column(name="Password")
	private String uPass;
	
	@Column(name="Confirm_password")
	private String cPass;
	

	@Column(name="Email")
	private String umail;
	
	public String getuName() {
		return uName;
	}

	public void setuName(String uName) {
		this.uName = uName;
	}

	public String getuPass() {
		return uPass;
	}

	public void setuPass(String uPass) {
		this.uPass = uPass;
	}

	public String getcPass() {
		return cPass;
	}

	public void setcPass(String cPass) {
		this.cPass = cPass;
	}

	public String getUmail() {
		return umail;
	}



	public void setUmail(String umail) {
		this.umail = umail;
	}


	public Users(String uName, String uPass, String cPass, String umail) {
		super();
		this.uName = uName;
		this.uPass = uPass;
		this.cPass = cPass;
		this.umail = umail;
	}
	
	public Users(int uId,String uName, String uPass, String cPass, String umail) {
		super();
		this.uId=uId;
		this.uName = uName;
		this.uPass = uPass;
		this.cPass = cPass;
		this.umail = umail;
	}
	
}
