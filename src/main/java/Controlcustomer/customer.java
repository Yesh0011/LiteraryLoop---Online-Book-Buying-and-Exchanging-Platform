package Controlcustomer;

public class customer {
	private int id;
	private String fname;
	private String lname;
	private String email;
	private String phone;
	private String userName;
	private String password;
	private String gender;
	private String address;
	private String district;
	private String postalcode;
	
	
	public customer(int id, String fname, String lname, String email, String phone, String userName, String password,
			String gender, String address, String district, String postalcode) {
		this.id = id;
		this.fname = fname;
		this.lname = lname;
		this.email = email;
		this.phone = phone;
		this.userName = userName;
		this.password = password;
		this.gender = gender;
		this.address = address;
		this.district = district;
		this.postalcode = postalcode;
	}


	public int getId() {
		return id;
	}


	public String getFname() {
		return fname;
	}


	public String getLname() {
		return lname;
	}


	public String getEmail() {
		return email;
	}


	public String getPhone() {
		return phone;
	}


	public String getUserName() {
		return userName;
	}


	public String getPassword() {
		return password;
	}


	public String getGender() {
		return gender;
	}


	public String getAddress() {
		return address;
	}


	public String getDistrict() {
		return district;
	}


	public String getPostalcode() {
		return postalcode;
	}
	
	
	
	
	

}
