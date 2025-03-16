package com.mycompany.springframework.dto;

import java.util.regex.Pattern;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class Ch04SignupFormValidator implements Validator{
	@Override
	public boolean supports(Class<?> clazz) {
		log.info("실행");
		return Ch04SignupForm.class.isAssignableFrom(clazz);
	}
	
	@Override
	public void validate(Object target, Errors errors) {
		Ch04SignupForm signupForm = (Ch04SignupForm) target;
		
		// 아이디 검사 
		String mid = signupForm.getMid();
		if(mid == null || mid.equals("")) {
			errors.rejectValue("mid", null, "아이디는 반드시 입력해야 합니다.");
		} else if(mid.length() < 6 || mid.length() > 12) {
			errors.rejectValue("mid", null, "아이디는 6자 이상 12자 이하로 입력해야 합니다.");
		}
		
		// 비밀번호 검사
		String mpassword = signupForm.getMpassword();
		String passwordPattern = "^(?=.*\\d)(?=.*[a-z])(?=.*[A-Z]).{8,15}$";
		if(mpassword == null || mpassword.equals("")) {
			errors.rejectValue("mpassword", null, "비밀번호는 반드시 입력해야 합니다.");
		} else if(mpassword.length() < 8 || mpassword.length() > 15) {
			errors.rejectValue("mpassword", null, "비밀번호는 8자 이상 15자 이하로 입력해야 합니다.");
		} else if (!Pattern.matches(passwordPattern, mpassword)) {
			errors.rejectValue("mpassword", null, "비밀번호는 알파벳 대소문자 및 숫자를 포함해야 합니다.");
		}
		
		// 이름 검사
		String mname = signupForm.getMname();
		String namePattern = "^[가-힣]{2,}$"; // 한글 두 글자 이상
		if(mname == null || mname.equals("")) {
			errors.rejectValue("mname", null, "이름은 반드시 입력해야 합니다.");
		} else if(mname.length() < 2) {
			errors.rejectValue("mname", null, "이름은 2자 이상 입력해야 합니다.");
		} else if (!Pattern.matches(namePattern, mname)) {
			errors.rejectValue("mname", null, "이름은 한글만 작성해야 합니다.");
		}
		
		// 이메일 검사
		String memail = signupForm.getMemail();
		String emailPattern="^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$"; 
		if(memail == null || memail.equals("")) {
			errors.rejectValue("memail", null, "이메일은 반드시 입력해야 합니다.");
		}  else if (!Pattern.matches(emailPattern, memail)) {
			errors.rejectValue("memail", null, "이메일은  포함해야 합니다.");
		}
		
		// 전화번호 검사
		String mphonenumber = signupForm.getMphonenumber();
		String phonePattern = "^(010|011)-\\d{3,4}-\\d{4}$";
		if(mphonenumber == null || mphonenumber.equals("")) {
			errors.rejectValue("mphonenumber", null, "전화번호는 반드시 입력해야 합니다.");
		} else if(mphonenumber.length() < 12 || mphonenumber.length() > 13) {
			errors.rejectValue("mphonenumber", null, "전화번호는 10자 이상 11자 이하로 입력해야 합니다.");
		} else if (!Pattern.matches(phonePattern, mphonenumber)) {
			errors.rejectValue("mphonenumber", null, "전화번호 처음은 010과 011만 입력 가능하고, 가운데는 3자리에서 4자리, 마지막은 4자리, 숫자만 입력해야 합니다.");
		}
	}
}
