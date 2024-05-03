package com.mycompany.springframework.dto;

import lombok.Data;

@Data
public class Ch17Member {
	private String mid;
	private String mname;
	private String mpassword;
	private boolean menabled;
	private String mrole;
	private String memail;
}
