package com.mycompany.springframework.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;


@Slf4j
@Controller
@RequestMapping("/ch05")
public class Ch05Controller {
/*	@GetMapping("/header")
	public String header(Model model, 
			@RequestHeader("User-Agent") String userAgent) {
		log.info("실행");
		log.info("User-Agent:" + userAgent);
		
		//브라우저의 종류 알아내기
		if(userAgent.contains("Edg")) {
			model.addAttribute("browser", "Edge");
		} else {
			model.addAttribute("browser", "Chrome");
		}
		
		
		model.addAttribute("chNum", "ch05");
		return "ch05/header";
	}*/
	
	@GetMapping("/header")
	public String header(Model model, HttpServletRequest request) {
		log.info("실행");
	
		String userAgent = request.getHeader("User-Agent");
		
		//브라우저의 종류 알아내기
		if(userAgent.contains("Edg")) {
			model.addAttribute("browser", "Edge");
		} else {
			model.addAttribute("browser", "Chrome");
		}
		
		//브라우저가 실행하는 컴퓨터의 IP 주소
		String clientIp = request.getRemoteAddr();
		model.addAttribute("clientIp", clientIp);
		
		model.addAttribute("chNum", "ch05");
		return "ch05/header";
	}
	
	@GetMapping("/createCookie")
	public String createCookie(Model model, HttpServletResponse response) {
		//Cookie 생성
		Cookie cookie = new Cookie("useremail", "summer@naver.com");
		
		//Cookie를 응답 HTTP에 포함시키기
		response.addCookie(cookie);
	
		
		//Home으로 리다이렉트
		return "redirect:/";
	}
	
	@GetMapping("/readCookie")
	//들고온 쿠키 값을 userEmail에 따로 저장하고 싶다.
	public String readCookie(@CookieValue("useremail") String userEmail, Model model) {
		log.info("useremail" + userEmail);
		
		model.addAttribute("chNum", "ch05");
		model.addAttribute("useremail", userEmail);
		return "ch05/cookie";
	}

}
