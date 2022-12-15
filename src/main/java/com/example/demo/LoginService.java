package com.example.demo;

import java.util.ArrayList;
import java.util.List;

import javax.swing.text.TabableView;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;



@Service
public class LoginService {

	@Autowired
	private  UserRepos userrepo;
	
	@Autowired
	private AdminRepos adminrepo;
	
	@Autowired
	private PassRepos passrepo;
	
	public User login(String mail,String password)
	{
		User u=userrepo.findByMailAndPassword(mail, password);
		return u;
				
	}
	
	public Admin login1(String gmail, String pass)
	{
		Admin a=adminrepo.findByGmailAndPass(gmail, pass);
		return a;
	}
	
	public List<Pass> allrequest(String request)
	{
		Pass p=passrepo.findByStatus(request);
		List<Pass> plist=new ArrayList<Pass>();
		plist.add(p);
		
		return plist;
	}
	
	public Pass searchpass(String fullname)
	{
		Pass p=passrepo.findByFullname(fullname);
		return p;
	}
}
