package com.mycompany.springframework.dto;


import java.util.regex.Pattern;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class Ch04SignUpFormValidator implements Validator {

   @Override
   public boolean supports(Class<?> clazz) {
      log.info("supports() 실행");
      return Ch04SignUpForm.class.isAssignableFrom(clazz);
   }

   @Override
   public void validate(Object target, Errors errors) {
      

      Ch04SignUpForm signUpForm = (Ch04SignUpForm) target;
      
      //아이디 검사
      String mid = signUpForm.getMid();
      if(mid==null || mid.equals("")) {
         errors.rejectValue("mid", null, "아이디는 반드시 입력되어야 합니다.");
      } else if(mid.length() < 6 || mid.length() > 12) {
         errors.rejectValue("mid", null, "아이디는 6자 이상, 12자 이하로 입력해야합니다.");
      }
      
      //비밀번호 검사
      String mpassword = signUpForm.getMpassword();
      String pattern1 = "^(?=.*\\d)(?=.*[a-z])(?=.*[A-Z]).{8,15}";
      
    
      //전화번호 검사
      String phoneNum = signUpForm.getMphonenum();
      String pattern2 = "^(01[016789]{1})-?[0-9]{3,4}-?[0-9]{4}";
      
      
      //이메일 검사
      String email = signUpForm.getMemail();
      String pattern3 =  "^[A-Za-z0-9_\\.\\-]+@[A-Za-z0-9\\-]+\\.[A-za-z0-9\\-]+";
      
      //이름 검사
      String name = signUpForm.getMname();
      String pattern4 =  "^[가-힣]{2,4}";
      
      //패스워드 검사
      if(mpassword==null || mpassword.equals("")) {
         errors.rejectValue("mpassword", null, "비밀번호는 반드시 입력되어야 합니다.");
      } else if(mpassword.length() < 8 || mpassword.length() > 15) {
         errors.rejectValue("mpassword", null, "비밀번호는 8자 이상, 15자 이하로 입력해야합니다.");
      } else if(!Pattern.matches(pattern1, mpassword)) {
         errors.rejectValue("mpassword", null, "비밀번호는 알파벳 대소문자 및 숫자를 포함 해야합니다.");
      }
      
      //전화번호 검사
      if(phoneNum==null || phoneNum.equals("")) {
          errors.rejectValue("mphonenum", null, "핸드폰번호는 반드시 입력되어야 합니다.");
       } else if(phoneNum.length() < 13 || phoneNum.length() > 13 ) {
          errors.rejectValue("mphonenum", null, "전화번호는 13자리 이하여야 합니다.");
       } else if(!Pattern.matches(pattern2, phoneNum)) {
          errors.rejectValue("mphonenum", null, "알맞은 전화번호 형식을 입력해주세요.");
       }
      
      //이메일 검사
      if(email==null || email.equals("")) {
          errors.rejectValue("memail", null, "이메일은 반드시 입력되어야 합니다.");
       } else if(!Pattern.matches(pattern3, email)) {
          errors.rejectValue("memail", null, "알맞은 이메일 형식을 입력해주세요.");
       }
      
      //이름 검사
      if(name==null || name.equals("")) {
          errors.rejectValue("mname", null, "이름은 반드시 입력되어야 합니다.");
       } else if(name.length() < 2 || name.length() > 4 ) {
          errors.rejectValue("mname", null, "이름은 2글자 이상, 4글자 이하로 입력해야 합니다.");
       } else if(!Pattern.matches(pattern4, name)) {
          errors.rejectValue("mname", null, "알맞은 이름 형식을 입력해주세요.");
       }
      
      
   }
   
}