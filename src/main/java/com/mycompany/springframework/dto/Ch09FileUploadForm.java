package com.mycompany.springframework.dto;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class Ch09FileUploadForm { //필드 이름은 양식에서의 name과 동일해야함
	private String title; 
	private String desc;
	private MultipartFile attach;
	

}
