package com.web.service;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

@Service
public class TestService {

	public String service() {
		String test = "測試中";
		return test;
	}
}
