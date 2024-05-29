package com.dto;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Table;
import javax.persistence.Id;

@Entity
@Table(name = "Blogs")
public class Blog {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int blogId;
	private String blogTitle;
	@Column(length=2000)
	private String blogContent;
	private Date addDate;

	public Blog() {
		super();
	}

	public Blog(String blogTitle, String blogContent, Date addDate) {
		super();
		this.blogTitle = blogTitle;
		this.blogContent = blogContent;
		this.addDate = addDate;
	}

	public int getBlogId() {
		return blogId;
	}

	public void setBlogId(int blogId) {
		this.blogId = blogId;
	}

	public String getBlogTitle() {
		return blogTitle;
	}

	public void setBlogTitle(String blogTitle) {
		this.blogTitle = blogTitle;
	}

	public String getBlogContent() {
		return blogContent;
	}

	public void setBlogContent(String blogContent) {
		this.blogContent = blogContent;
	}

	public Date getAddDate() {
		return addDate;
	}

	public void setAddDate(Date addDate) {
		this.addDate = addDate;
	}
}
