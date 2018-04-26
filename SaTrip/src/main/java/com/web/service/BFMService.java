package com.web.service;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.web.service.BFM.RunTest;

@Service
public class BFMService {

	public String BFMservice(HttpServletRequest request) throws UnsupportedEncodingException {
		
		request.setCharacterEncoding("UTF-8");

		String dep = request.getParameter("dept");
		String arr = request.getParameter("arrv");
		String deD = request.getParameter("depDate") + "T11:00:00";
		String reD = request.getParameter("reDate") + "T11:00:00";
		System.out.println("出發地" + dep + "日期" + deD + "," + "目的地" + arr + "日期" + reD);
		
		try {
			String result = RunTest.run(deD, dep, reD, arr);
			if(result!=null) {
				return result;
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.err.println("查詢錯誤");
		}
		return "no answer";
	}
}
