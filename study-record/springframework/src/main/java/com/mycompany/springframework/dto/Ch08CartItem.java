package com.mycompany.springframework.dto;

import lombok.Data;

@Data
public class Ch08CartItem {
	private Ch08Product product;
	private int amount;
}
