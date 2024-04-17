package com.mycompany.springframework.dto;

import lombok.Data;

@Data
public class Ch08CartItem {
	
	private Ch08Product product; //product08 객체를 대입
	private int amount;
	

}
