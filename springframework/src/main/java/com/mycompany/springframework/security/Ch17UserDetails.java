package com.mycompany.springframework.security;

import java.util.List;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;
import com.mycompany.springframework.dto.Ch17Member;

public class Ch17UserDetails extends User {

  private Ch17Member member;

  public Ch17UserDetails(Ch17Member member, List<GrantedAuthority> authorities) {
    super(member.getMid(), member.getMpassword(), member.isMenabled(), true, true, true,
        authorities);
    this.member = member;
  }
  
  public Ch17Member getMember() {
    return member;
  }

}