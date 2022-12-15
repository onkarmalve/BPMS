package com.example.demo;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;


@Entity
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;       
	
	@Column
	private String name;
	
	@Column(unique = true)
	private String mail;
	@Column
	private String password;
	
	@OneToMany(mappedBy = "u",cascade = CascadeType.ALL,targetEntity = Pass.class)
	private List<Pass> p;

	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	public User(int id, String name, String mail, String password, List<Pass> p) {
		super();
		this.id = id;
		this.name = name;
		this.mail = mail;
		this.password = password;
		this.p = p;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public List<Pass> getP() {
		return p;
	}

	public void setP(List<Pass> p) {
		this.p = p;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", mail=" + mail + ", password=" + password + ", p=" + p + "]";
	}

	
}