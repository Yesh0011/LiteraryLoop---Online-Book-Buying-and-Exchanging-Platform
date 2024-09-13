package com.DAO;

public class exchangbooks {
	
	private int bookid;
	private String bookname;
	private String author;
	private String category;
	private String image;
	private String description;
	
	
	public exchangbooks() {
		super();
	}
	
	public exchangbooks(int bookid, String bookname, String author, String category, String image, String description) {
		super();
		this.bookid = bookid;
		this.bookname = bookname;
		this.author = author;
		this.category = category;
		this.image = image;
		this.description = description;
	}
	public int getBookid() {
		return bookid;
	}
	public void setBookid(int bookid) {
		this.bookid = bookid;
	}
	public String getBookname() {
		return bookname;
	}
	public void setBookname(String bookname) {
		this.bookname = bookname;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}

	
}
