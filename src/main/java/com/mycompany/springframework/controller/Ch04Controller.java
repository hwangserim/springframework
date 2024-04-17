package com.mycompany.springframework.controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.springframework.dto.Ch04LoginForm;
import com.mycompany.springframework.dto.Ch04LoginFormValidator;
import com.mycompany.springframework.dto.Ch04SignUpFormValidator;
import com.mycompany.springframework.dto.Ch04SignUpForm;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/ch04")
public class Ch04Controller {
	@GetMapping("/loginForm")
	public String loginForm(Model model) {
		model.addAttribute("chNum", "ch04");
		return "ch04/loginForm";
	}
	
	@InitBinder("ch04LoginForm") //초기에 엮어준다
	public void ch04LoginFormValidator(WebDataBinder binder) {
		binder.setValidator(new Ch04LoginFormValidator());
	}
	
	
	@RequestMapping("/login")
	public String login(@Valid Ch04LoginForm loginForm, Errors errors, Model model) { 
		log.info("실행");
		
		//dto에 있는 데이터를 유효성 검사
		//유효성 검사 실패 시 다시 로그인 폼을 보여주기
		if(errors.hasErrors()) {
			//model.addAttribute("ch04");
			log.info(errors.toString());
			return "ch04/loginForm";
		}
		
		log.info("리다이렉트 실행");
		//로그인 처리
		return "redirect:/";
		
	}
	
	@GetMapping("/signUpForm")
	public String signUpForm(Model model) {
		model.addAttribute("chNum", "ch04");
		return "ch04/signUpForm";
	}
	
	@InitBinder("ch04SignUpForm") //초기에 엮어준다
	public void ch04SignUpFormValidator(WebDataBinder binder) {
		binder.setValidator(new Ch04SignUpFormValidator());
	}
	

	@RequestMapping("/signup")
	public String signUp(@Valid Ch04SignUpForm signUpForm, Errors errors, Model model) { 
		log.info("실행");
		
		//dto에 있는 데이터를 유효성 검사
		//유효성 검사 실패 시 다시 로그인 폼을 보여주기
		if(errors.hasErrors()) {
			//model.addAttribute("ch04");
			log.info(errors.toString());
			return "ch04/signUpForm";
		}
		
		log.info("리다이렉트 실행");
		//로그인 처리
		return "redirect:/";
		
	}
	
	
	
	
}
