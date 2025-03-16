package com.mycompany.webapp.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.mycompany.webapp.dto.Member;
import com.mycompany.webapp.security.AppUserDetails;
import com.mycompany.webapp.security.AppUserDetailsService;
import com.mycompany.webapp.security.JwtProvider;
import com.mycompany.webapp.service.MemberService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
@RequestMapping("/member")
public class MemberController {
   @Autowired
   private JwtProvider jwtProvider;

   @Autowired
   private MemberService memberService
;   
   @Autowired
   private AppUserDetailsService userDetailsService;

   @PostMapping("/login")
   public Map<String, String> userLogin(String mid, String mpassword) {
      // 사용자 상세 정보 얻기
      AppUserDetails userDetails = (AppUserDetails) userDetailsService.loadUserByUsername(mid);
      // 비밀번호 체크
      PasswordEncoder passwordEncoder = PasswordEncoderFactories.createDelegatingPasswordEncoder();
      boolean checkResult = passwordEncoder.matches(mpassword, userDetails.getMember().getMpassword());
      // Spring security 인증 처리
      if (checkResult) {
         Authentication authentication = new UsernamePasswordAuthenticationToken(userDetails, null,
               userDetails.getAuthorities());

         SecurityContextHolder.getContext().setAuthentication(authentication);
      }

      // 응답 생성
      Map<String, String> map = new HashMap<>();
      if (checkResult) {
         //AccessToken을 생성
         String accessToken = jwtProvider.createAccessToken(mid, userDetails.getMember().getMrole());
         //JSON 응답
         map.put("result","success");
         map.put("mid",mid);
         map.put("accessToken",accessToken);
      } else {
         map.put("result","fail");
      }
      return map;
   }
   
   @PostMapping("/join")
   public Member join(@RequestBody Member member) {
      //비밀번호 암호화
      PasswordEncoder passwordEncoder = PasswordEncoderFactories.createDelegatingPasswordEncoder();
      member.setMpassword(passwordEncoder.encode(member.getMpassword()));
      //아이디 활성화 지정
      member.setMenabled(true);
      //권한 설정
      member.setMrole("ROLE_USER");
      //회원 가입 처리
      memberService.join(member);
      //비밀번호 제거
      member.setMpassword(null);
      return member;
   }
   
}
