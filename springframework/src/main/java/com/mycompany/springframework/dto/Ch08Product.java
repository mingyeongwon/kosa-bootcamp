package com.mycompany.springframework.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Ch08Product {
	private int pno;
	private String pname;
	private int pprice;
}
