package Controlcustomer;

public class sellingbooks {
	private int bookid;
	private String bookname;
	private String author;
	private String price;
	private String category;
	private String image;
	private String ownerNIC;
	private String phone;
	private String status;
	private String description;
	
	
	public sellingbooks() {
		super();
	}


	public sellingbooks(int bookid, String bookname, String author, String price, String category, String image,
			String ownerNIC, String phone, String status, String description) {
		
		this.bookid = bookid;
		this.bookname = bookname;
		this.author = author;
		this.price = price;
		this.category = category;
		this.image = image;
		this.ownerNIC = ownerNIC;
		this.phone= phone;
		this.status = status;
		this.description = description;
	}

	
	public void setBookid(int bookid) {
		this.bookid = bookid;
	}


	public void setBookname(String bookname) {
		this.bookname = bookname;
	}


	public void setAuthor(String author) {
		this.author = author;
	}


	public void setPrice(String price) {
		this.price = price;
	}


	public void setCategory(String category) {
		this.category = category;
	}


	public void setImage(String image) {
		this.image = image;
	}


	public void setOwnerNIC(String ownerNIC) {
		this.ownerNIC = ownerNIC;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	public void setDescription(String description) {
		this.description = description;
	}


	public int getBookid() {
		return bookid;
	}


	public String getBookname() {
		return bookname;
	}


	public String getAuthor() {
		return author;
	}


	public String getPrice() {
		return price;
	}


	public String getCategory() {
		return category;
	}


	public String getImage() {
		return image;
	}


	public String getOwnerNIC() {
		return ownerNIC;
	}
	
	public String getphone() {
		return phone;
	}


	public String getStatus() {
		return status;
	}


	public String getDescription() {
		return description;
	}
	
	
	
	

}