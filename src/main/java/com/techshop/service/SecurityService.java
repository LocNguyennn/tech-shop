package com.techshop.service;

public interface SecurityService {

	String findLoggedInUsername();

	void autologin(String email, String password);

}
