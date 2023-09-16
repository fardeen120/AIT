package com.entities;

import java.util.Date;

import java.util.Random;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Lob;

@Entity
public class User {
	
	@Id
	private int id;
	private String writername;
	private String category;
	private String title;
	
	@Column(columnDefinition="text")
	private String content;
	
	private Date addeddate;
	
	
	
	
	
	


	

	public User(String writername, String category, String title, String content, Date addeddate) {
		super();
		this.id = new Random().nextInt();
		this.writername = writername;
		this.category = category;
		this.title = title;
		this.content = content;
		this.addeddate = addeddate;
	}


	public User() {
		super();
		// TODO Auto-generated constructor stub
	}


	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getWritername() {
		return writername;
	}
	public void setWritername(String writername) {
		this.writername = writername;
	}
	
	
	public String getCategory() {
		return category;
	}


	public void setCategory(String category) {
		this.category = category;
	}


	

	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}

	
	public Date getAddeddate() {
		return addeddate;
	}
	public void setAddeddate(Date addeddate) {
		this.addeddate = addeddate;
	}
	
	

}
