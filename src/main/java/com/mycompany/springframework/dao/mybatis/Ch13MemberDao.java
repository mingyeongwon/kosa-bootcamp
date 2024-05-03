package com.mycompany.springframework.dao.mybatis;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.springframework.dto.Ch17Member;

@Mapper
public interface Ch13MemberDao {

	public Ch17Member selectByMid(String username);

	public int insert(Ch17Member member);

}
