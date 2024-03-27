package com.in28minutes.myfirstwebapp.login;

import org.springframework.stereotype.Service;

@Service
public class AuthenticationService {

	public boolean Authentication(String name,String password) {
		
		boolean isValidUser=name.equalsIgnoreCase("vinchenzo");
		boolean isValidPass=password.equalsIgnoreCase("1234");
		
		return isValidUser && isValidPass;
	}
}
