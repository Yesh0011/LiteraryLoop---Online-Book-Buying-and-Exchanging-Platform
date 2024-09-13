package Controlcustomer;

public class payment {
	
	private int pid;
	private String name;
	private String address;
	private String phone;
	
	private String totalPrice;
	
	
	


	public String getTotalPrice() {
		return totalPrice;
	}


	public void setTotalPrice(String totalPrice) {
		this.totalPrice = totalPrice;
	}


	public payment(int pid, String name, String address, String phone, String totalPrice) {
		super();
		this.pid = pid;
		this.name = name;
		this.address = address;
		this.phone = phone;
		
		this.totalPrice = totalPrice;
	}


	public int getPid() {
		return pid;
	}


	public void setPid(int pid) {
		this.pid = pid;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	
	
	
	
	

}
