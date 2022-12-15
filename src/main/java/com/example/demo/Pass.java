package com.example.demo;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.UniqueConstraint;

import org.hibernate.annotations.ManyToAny;

@Entity

public class Pass {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	
	@Column
	private String fullname;
	@Column(unique = true)
	private String mno;
	@Column
	private String passtype;
	@Column 
	private String gender;
	@Column
	private Date date;
	@Column
	private String Source;
	@Column
	private String destination;
	@Column
	private String duration;
	@Column
	private Date fromdate;
	@Column
	private Date todate;
	@Column
	private Double charges;
	@Column
	private String status;
	
	@ManyToOne()
	private User u;

	public Pass() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Pass(int id, String fullname, String mno, String passtype, String gender, Date date, String source,
			String destination, String duration, Date fromdate, Date todate, Double charges, String status, User u) {
		super();
		this.id = id;
		this.fullname = fullname;
		this.mno = mno;
		this.passtype = passtype;
		this.gender = gender;
		this.date = date;
		Source = source;
		this.destination = destination;
		this.duration = duration;
		this.fromdate = fromdate;
		this.todate = todate;
		this.charges = charges;
		this.status = status;
		this.u = u;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public String getMno() {
		return mno;
	}

	public void setMno(String mno) {
		this.mno = mno;
	}

	public String getPasstype() {
		return passtype;
	}

	public void setPasstype(String passtype) {
		this.passtype = passtype;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getSource() {
		return Source;
	}

	public void setSource(String source) {
		Source = source;
	}

	public String getDestination() {
		return destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
	}

	public String getDuration() {
		return duration;
	}

	public void setDuration(String duration) {
		this.duration = duration;
	}

	public Date getFromdate() {
		return fromdate;
	}

	public void setFromdate(Date fromdate) {
		this.fromdate = fromdate;
	}

	public Date getTodate() {
		return todate;
	}

	public void setTodate(Date todate) {
		this.todate = todate;
	}

	public Double getCharges() {
		return charges;
	}

	public void setCharges(Double charges) {
		this.charges = charges;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public User getU() {
		return u;
	}

	public void setU(User u) {
		this.u = u;
	}

	@Override
	public String toString() {
		return "Pass [id=" + id + ", fullname=" + fullname + ", mno=" + mno + ", passtype=" + passtype + ", gender="
				+ gender + ", date=" + date + ", Source=" + Source + ", destination=" + destination + ", duration="
				+ duration + ", fromdate=" + fromdate + ", todate=" + todate + ", charges=" + charges + ", status="
				+ status + ", u=" + u + "]";
	}
	
	



}
